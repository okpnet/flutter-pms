import 'dart:convert';

import 'package:approval_stamp/approval_stamp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// アプリの設定(`info_app.settings`)の取得元。アプリが GraphQL 版(`document_approval_model` の
/// `AppSettingsPage`・`AppSettingsPageEdit`)に差し替える(Strategy)。
abstract interface class IAppSettingsGateway {
  /// 保存されている設定(JSON のオブジェクト、または JSON の文字列。無ければ null)。
  Future<Object?> load();

  /// 設定を保存する(`version`・`stamp`・`pdf` と、知らないキーを含む JSON 全体)。
  Future<void> save(Map<String, dynamic> json);
}

/// メモリ上の取得元(既定・example・テスト用)。
class InMemoryAppSettingsGateway implements IAppSettingsGateway {
  InMemoryAppSettingsGateway([this.value]);

  Object? value;
  int saveCount = 0;

  /// true にすると、読み込み・保存が失敗する(テスト用)。
  bool failing = false;

  @override
  Future<Object?> load() async {
    if (failing) throw StateError('load failed');
    return value;
  }

  @override
  Future<void> save(Map<String, dynamic> json) async {
    if (failing) throw StateError('save failed');
    value = json;
    saveCount++;
  }
}

final documentSettingsGatewayProvider = Provider<IAppSettingsGateway>(
  (ref) => InMemoryAppSettingsGateway(),
);

/// 保存されている設定(標準を含む)。ほかの機能(`manual` の PDF など)が使う。保存すると読み直す。
/// 読み込めない(通信の失敗・未設定)ときは標準の設定にする。
final savedAppSettingsProvider = FutureProvider<AppSettings>((ref) async {
  try {
    return AppSettings.parse(await ref.watch(documentSettingsGatewayProvider).load());
  } catch (_) {
    return AppSettings.standard;
  }
});

/// 変更できるのは管理者だけ。既定は閲覧のみ(false)。アプリが認証の結果で差し替える。
final documentSettingsIsAdminProvider = Provider<bool>((ref) => false);

enum DraftNotice { saved, saveFailed }

/// 編集中の設定(JSON)。フォームは JSON の項目を直接直し、プレビューは [settings] から作る。
class SettingsDraft {
  const SettingsDraft({
    this.json = const {},
    this.saved = const {},
    this.loaded = false,
    this.loadFailed = false,
    this.saving = false,
    this.notice,
    this.generation = 0,
  });

  final Map<String, dynamic> json;
  final Map<String, dynamic> saved;
  final bool loaded;
  final bool loadFailed;
  final bool saving;
  final DraftNotice? notice;

  /// フォームの入力欄を作り直すための番号(元に戻す・標準に戻す・JSON の反映で増える)。
  final int generation;

  bool get dirty => jsonEncode(json) != jsonEncode(saved);

  /// 読み取れなかった項目を [problems] に残して、設定にする(不備は標準の値になる)。
  AppSettings settings([Problems? problems]) => AppSettings.parse(json, problems: problems);

  SettingsDraft copyWith({
    Map<String, dynamic>? json,
    Map<String, dynamic>? saved,
    bool? loaded,
    bool? loadFailed,
    bool? saving,
    Object? notice = _keep,
    int? generation,
  }) => SettingsDraft(
    json: json ?? this.json,
    saved: saved ?? this.saved,
    loaded: loaded ?? this.loaded,
    loadFailed: loadFailed ?? this.loadFailed,
    saving: saving ?? this.saving,
    notice: identical(notice, _keep) ? this.notice : notice as DraftNotice?,
    generation: generation ?? this.generation,
  );
}

const Object _keep = Object();

Map<String, dynamic> _normalized(Object? raw) => AppSettings.parse(raw).toJson();

class SettingsDraftNotifier extends Notifier<SettingsDraft> {
  @override
  SettingsDraft build() {
    _load();
    return const SettingsDraft();
  }

  Future<void> _load() async {
    var failed = false;
    Object? raw;
    try {
      raw = await ref.read(documentSettingsGatewayProvider).load();
    } catch (_) {
      failed = true;
    }
    if (!ref.mounted) return;
    final json = _normalized(raw);
    state = SettingsDraft(json: _deepCopy(json), saved: json, loaded: true, loadFailed: failed);
  }

  /// [path] の値を直す(途中のオブジェクトは作る)。null は項目を null にする。
  void set(List<String> path, Object? value) {
    final next = _deepCopy(state.json);
    var cur = next;
    for (var i = 0; i < path.length - 1; i++) {
      final n = cur[path[i]];
      if (n is Map<String, dynamic>) {
        cur = n;
      } else {
        final m = <String, dynamic>{};
        cur[path[i]] = m;
        cur = m;
      }
    }
    cur[path.last] = value;
    state = state.copyWith(json: next, notice: null);
  }

  /// リストの項目を丸ごと置き換える(表示項目の追加・削除)。
  void setList(List<String> path, List<Object?> value) => set(path, value);

  /// JSON 全体を置き換える(「JSON」タブの反映)。読めない項目は標準になる。
  void replaceAll(Object? raw) {
    state = state.copyWith(json: _normalized(raw), notice: null, generation: state.generation + 1);
  }

  void revert() => state = state.copyWith(json: _deepCopy(state.saved), notice: null, generation: state.generation + 1);

  void resetDefaults() => state = state.copyWith(json: _deepCopy(AppSettings.standard.toJson()), notice: null, generation: state.generation + 1);

  Future<void> save() async {
    if (state.saving) return;
    state = state.copyWith(saving: true, notice: null);
    final normalized = _normalized(state.json);
    try {
      await ref.read(documentSettingsGatewayProvider).save(normalized);
      ref.invalidate(savedAppSettingsProvider);
      if (!ref.mounted) return;
      state = state.copyWith(saving: false, saved: normalized, json: _deepCopy(normalized), notice: DraftNotice.saved);
    } catch (_) {
      if (!ref.mounted) return;
      state = state.copyWith(saving: false, notice: DraftNotice.saveFailed);
    }
  }
}

final settingsDraftProvider = NotifierProvider<SettingsDraftNotifier, SettingsDraft>(SettingsDraftNotifier.new);

Map<String, dynamic> _deepCopy(Map<String, dynamic> m) => (jsonDecode(jsonEncode(m)) as Map).cast<String, dynamic>();
