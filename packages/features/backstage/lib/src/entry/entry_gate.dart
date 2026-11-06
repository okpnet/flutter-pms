import 'package:flutter/foundation.dart';
import 'package:feature_shared/feature_shared.dart';

import 'entry_hash.dart';

/// 判定の計算を実行する関数。既定は別の isolate([compute])。テストは直接呼ぶ。
typedef EntryVerifier =
    Future<bool> Function(EntryHash hash, String identity, String password);

bool _verifyNow((EntryHash, String, String) args) =>
    args.$1.verify(args.$2, args.$3);

/// 別の isolate で照合する(反復回数が多く、UI を止めないため)。
Future<bool> verifyInIsolate(
  EntryHash hash,
  String identity,
  String password,
) => compute(_verifyNow, (hash, identity, password));

/// 裏設定へ入る条件の判定。アセットの設定の [entry](ハッシュ)と照合する。
///
/// [entry] が無い(設定していない)ときは、常に一致しない(入口なし)。
/// 一致したときだけ [onMatch] を呼ぶ(ページを開けるようにする)。一致しない理由は区別しない。
/// 入力・ハッシュ・ソルトはログに出さない。
///
/// パターン: Strategy(`IBackstageEntryGate` の実体)
class BackstageEntryGate implements IBackstageEntryGate {
  BackstageEntryGate({
    required this.entry,
    required this.onMatch,
    this.verifier = verifyInIsolate,
    this.afterMatch,
  });

  final EntryHash? entry;
  final void Function() onMatch;
  final EntryVerifier verifier;

  /// 一致したとき、入口のパスワードで行う後処理(暗号化した裏設定の適用)。失敗しても入口は開く。
  final Future<void> Function(String password)? afterMatch;

  @override
  Future<bool> matches(String identity, String password) async {
    final hash = entry;
    if (hash == null || identity.trim().isEmpty || password.isEmpty) {
      return false;
    }
    final ok = await verifier(hash, identity, password);
    if (ok) {
      try {
        await afterMatch?.call(password);
      } catch (_) {
        // 適用できなくても標準のまま続ける(通知しない)
      }
      onMatch();
    }
    return ok;
  }
}
