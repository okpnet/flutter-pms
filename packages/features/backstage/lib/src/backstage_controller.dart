import 'dart:convert';

import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:logger_provider/logger_provider.dart';

import 'backstage_boot.dart';
import 'entry/entry_gate.dart';
import 'settings/backstage_resolver.dart';
import 'settings/backstage_settings.dart';
import 'settings/encrypted_config.dart';

/// 起動時に読み込んだ材料。アプリが [backstageOverrides] で差し込む(既定は材料なし)。
final backstageBootProvider = Provider<BackstageBoot>(
  (ref) => BackstageBoot.empty(),
);

/// 入口を通ったか。入口の判定に一致したときだけ true になり、ページを出るとき false に戻す。
/// 通っていないときは、ページは何も出さずに戻す(遷移先の型を知っていても、開けない)。
final backstageUnlockProvider = NotifierProvider<BackstageUnlock, bool>(
  BackstageUnlock.new,
);

class BackstageUnlock extends Notifier<bool> {
  @override
  bool build() => false;

  void unlock() => state = true;
  void lock() => state = false;
}

/// 保存の結果。[issues] があるときは保存していない。[storeFailed] は保管庫に書けなかった(例外)。
class BackstageSaveResult {
  const BackstageSaveResult({this.issues = const [], this.storeFailed = false});

  final List<BackstageIssue> issues;
  final bool storeFailed;

  bool get saved => issues.isEmpty && !storeFailed;
}

/// 保管庫の裏設定(画面で編集する値)。保存・初期化を行う。
class BackstageController extends Notifier<BackstageSettings> {
  @override
  BackstageSettings build() =>
      ref.watch(backstageBootProvider).stored ?? const BackstageSettings();

  /// 検証して保存する。空(すべて指定なし)のときは、保管庫の値を消す。
  Future<BackstageSaveResult> save(BackstageSettings next) async {
    final issues = BackstageUrlRules.validate(next);
    if (issues.isNotEmpty) return BackstageSaveResult(issues: issues);
    final store = ref.read(backstageBootProvider).store;
    try {
      if (next.isEmpty) {
        await store.delete();
      } else {
        await store.write(_encode(next));
      }
    } catch (_) {
      return const BackstageSaveResult(storeFailed: true);
    }
    state = next;
    // 値(接続先など)は出さない。
    ref.read(loggerProvider).info('[backstage] 裏設定を保存しました');
    return const BackstageSaveResult();
  }

  /// 暗号化した裏設定を、入口のパスワードで復号して保存する(入口を通ったときに1回)。
  ///
  /// 保管庫に値があるときは何もしない(ページで編集した値を上書きしない)。復号できない・検証に通らない
  /// ときは、通知もせず標準のまま。
  Future<void> applyEncryptedConfig(String password) async {
    final text = ref.read(backstageBootProvider).encryptedConfig;
    if (text == null || !state.isEmpty) return;
    final settings = await decryptBackstageSettings(text, password);
    if (settings == null) return;
    await save(settings);
  }

  /// 保管庫の値をすべて消す(アセットの既定値と起動時の値だけになる)。
  Future<BackstageSaveResult> reset() => save(const BackstageSettings());

  static String _encode(BackstageSettings s) => jsonEncode(s.toJson());
}

final backstageControllerProvider =
    NotifierProvider<BackstageController, BackstageSettings>(
      BackstageController.new,
    );

/// 優先順位の解決(起動時の値 > 保管庫の裏設定 > アセットの既定値)。保存すると更新される。
final backstageResolverProvider = Provider<BackstageResolver>((ref) {
  final boot = ref.watch(backstageBootProvider);
  final stored = ref.watch(backstageControllerProvider);
  return BackstageResolver(
    launch: boot.launch,
    stored: stored,
    defaults: boot.defaults,
  );
});

/// 他の機能が読む値(`feature_shared` の [backstageValuesProvider] へ差し込む)。
final backstageResolvedValuesProvider = Provider<BackstageValues>(
  (ref) => ref.watch(backstageResolverProvider).resolve(),
);

/// アプリが差し込む Provider の上書き。
///
/// - 材料([boot])
/// - 他の機能が読む値([backstageValuesProvider]。保存すると更新される)
/// - 入口の判定([backstageEntryGateProvider]。一致したら [backstageUnlockProvider] を開ける)
List<Override> backstageOverrides(BackstageBoot boot) => [
  backstageBootProvider.overrideWithValue(boot),
  backstageValuesProvider.overrideWith(
    (ref) => ref.watch(backstageResolvedValuesProvider),
  ),
  backstageEntryGateProvider.overrideWith((ref) {
    final entry = ref.watch(backstageBootProvider).entry;
    return BackstageEntryGate(
      entry: entry,
      onMatch: () => ref.read(backstageUnlockProvider.notifier).unlock(),
      afterMatch: (password) => ref
          .read(backstageControllerProvider.notifier)
          .applyEncryptedConfig(password),
    );
  }),
];
