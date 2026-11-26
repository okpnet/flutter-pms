import 'dart:typed_data';

import 'package:approval_stamp/approval_stamp.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:markdown_pdf/markdown_pdf.dart';

import 'manual_repository.dart' show ManualError, ManualException;

/// 文書(ルートのページ)の公開・承認の状態。DB のビュー(`v_document_publication`・`v_document_approval_stamp`)の値。
/// 公開の判定とスタンプの文字は DB のビューが持つため、画面・PDF はここの値をそのまま使う(判定を持たない)。
class ManualApproval {
  const ManualApproval({
    this.published = true,
    this.pending = false,
    this.readable = true,
    this.steps = const [],
    this.statusLabel = '',
    this.controlNumber = '',
    this.versionCode = '',
    this.stampStyleOverride,
  });

  /// 承認の段が 0 件(承認不要)、またはすべて承認済み。
  final bool published;

  /// 承認待ちの段がある。
  final bool pending;

  /// 読める(公開済み、承認の該当者、管理者)。false のとき本文を出さない。
  final bool readable;

  /// 承認の段ごとの状態。空のときスタンプを出さない(承認不要)。
  final List<ApprovalStepInfo> steps;

  /// 承認・承認待ち(ビューの `stamp_label_ja/en`)。PDF のフッタの `{statusLabel}`。
  final String statusLabel;
  final String controlNumber;
  final String versionCode;

  /// 承認パターンごとのスタンプの様式(`mstr_approval_pattern.stamp_style`。NULL は標準)。
  final Object? stampStyleOverride;

  /// 承認なし(承認不要・公開)。
  static const ManualApproval none = ManualApproval();
}

/// 文書の承認の状態の取得元。アプリが GraphQL 版に差し替える(Strategy)。
abstract interface class IManualApprovalSource {
  /// ルートのページ [rootPageId] の承認の状態。
  Future<ManualApproval> of(String rootPageId);

  /// ルートのページ [rootPageId] の承認を申請する(承認する人への通知を作る。冪等)。作った通知の件数を返す。
  /// 承認の段が無い・すでに公開済みのときは `ManualException(ManualError.requestUnavailable)`。
  Future<int> request(String rootPageId);
}

/// 承認を持たない取得元(既定。すべて公開・スタンプなし)。
class NoManualApprovalSource implements IManualApprovalSource {
  const NoManualApprovalSource();

  @override
  Future<ManualApproval> of(String rootPageId) async => ManualApproval.none;

  @override
  Future<int> request(String rootPageId) async => throw const ManualException(ManualError.requestUnavailable);
}

/// メモリ上の取得元(example・テスト用)。
class InMemoryManualApprovalSource implements IManualApprovalSource {
  InMemoryManualApprovalSource([Map<String, ManualApproval>? byRoot]) : byRoot = byRoot ?? {};

  final Map<String, ManualApproval> byRoot;

  /// 申請した文書の ID(テストで確かめる)。
  final List<String> requested = [];

  @override
  Future<ManualApproval> of(String rootPageId) async => byRoot[rootPageId] ?? ManualApproval.none;

  /// 承認待ちの文書だけ申請できる。同じ文書の 2 回目は通知を増やさない(0 件)。
  @override
  Future<int> request(String rootPageId) async {
    final a = byRoot[rootPageId] ?? ManualApproval.none;
    if (!a.pending) throw const ManualException(ManualError.requestUnavailable);
    if (requested.contains(rootPageId)) return 0;
    requested.add(rootPageId);
    return a.steps.length;
  }
}

final manualApprovalSourceProvider = Provider<IManualApprovalSource>((ref) => const NoManualApprovalSource());

/// ルートのページの承認の状態(ページを開くたびに取り直す)。
final manualApprovalProvider = FutureProvider.family<ManualApproval, String>(
  (ref, rootPageId) => ref.watch(manualApprovalSourceProvider).of(rootPageId),
);

/// アプリの設定(`info_app.settings`。承認スタンプの標準・PDF のテーマ・ヘッダ/フッタ)。既定は標準値。アプリが DB の値に差し替える。
final manualAppSettingsProvider = Provider<AppSettings>((ref) => AppSettings.standard);

/// PDF に埋め込むフォント。既定は同梱の BIZ UDP 明朝。テストでは差し替えられる。
final manualPdfFontsProvider = FutureProvider<PdfFonts>((ref) => loadBundledPdfFonts());

/// PDF を保存する(Strategy)。取り消しは false。
abstract interface class IManualFileSaver {
  Future<bool> save(String filename, Uint8List bytes);
}

/// OS の「名前を付けて保存」ダイアログ(`file_picker`)。
class PlatformManualFileSaver implements IManualFileSaver {
  const PlatformManualFileSaver();

  @override
  Future<bool> save(String filename, Uint8List bytes) async =>
      await FilePicker.saveFile(fileName: filename, bytes: bytes) != null;
}

final manualFileSaverProvider = Provider<IManualFileSaver>((ref) => const PlatformManualFileSaver());

/// PDF の「出力した人」。既定は空。アプリがログインユーザーの表示名に差し替える。
final manualPrinterNameProvider = Provider<String>((ref) => '');

/// 出力日時の取得元(テストで固定する)。
final manualClockProvider = Provider<DateTime Function()>((ref) => DateTime.now);
