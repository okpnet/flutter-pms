import '../model/manual_page_record.dart';

/// 取得元が返すエラーの種類。画面が表示のときに文字へ変える(文字列では持たない)。
enum ManualError {
  /// ページ名が空。
  titleRequired,

  /// 同じページ名が、ほかのページにある。
  titleDuplicate,

  /// 対象のページ・版が無い。
  notFound,

  /// 管理者でないため、編集できない。
  notAdmin,

  /// ルートの文書の管理番号が空(管理番号は利用者が決める)。
  controlNumberRequired,

  /// ルートの文書の階層(文書階層)が登録されていない(文書を作れない)。
  rootTierMissing,

  /// 文書の承認パターンが設定されていない(`info_app.document_approval_pattern_id`。承認不要でも、段が 0 件のパターンを設定する)。
  approvalPatternMissing,
}

class ManualException implements Exception {
  const ManualException(this.error);
  final ManualError error;

  @override
  String toString() => 'ManualException($error)';
}

/// マニュアルの取得元。メモリ上([InMemoryManualRepository])のほか、GraphQL 版を差し替えられる。
///
/// 編集の権限は呼び出し側(画面)が見るが、取得元も [isAdmin] を受け取って守る(二重の確認)。
///
/// パターン: Strategy(保存先の差し替え)
abstract interface class IManualRepository {
  /// ルートのページ(文書)が本文を持つか。持たない取得元(DB の文書は本文の列が無く、本文は子のページ = 文書コンテンツが持つ)では、
  /// ルートの編集はページ名だけにする。
  bool get rootHasBody;

  /// ルートを作るとき、管理番号(利用者が決める)が要るか。
  bool get requiresControlNumber;

  Future<List<ManualPageRecord>> list();

  /// [parentId] の下(null ならルート)に、末尾のページを作る。ルートは複数作れる。
  /// ルートの [controlNumber](文書の管理番号)は、[requiresControlNumber] のとき必須(空は `controlNumberRequired`)。
  Future<ManualPageRecord> create({
    required String? parentId,
    required String title,
    required String md,
    required String updatedBy,
    required bool isAdmin,
    String? controlNumber,
  });

  /// ページ名・本文を保存する。変更があれば、直前の版を履歴に残して改訂を 1 つ上げる。
  /// ページ名を変えたときは、他のページの本文のリンクも書き換える。
  Future<ManualPageRecord> update(
    String id, {
    required String title,
    required String md,
    required String updatedBy,
    required bool isAdmin,
  });

  /// 履歴の [rev] の版に戻す(戻す前の版も履歴に残る)。
  Future<ManualPageRecord> restore(
    String id,
    int rev, {
    required String updatedBy,
    required bool isAdmin,
  });
}
