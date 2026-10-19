/// アプリケーション側のモデルが `GraphQLClientProvider.save()` に渡されるために
/// 実装する必要があるインターフェース。
abstract interface class IEditModel {
  /// モデルの内容がミューテーションとして送信可能な状態かどうか。
  bool get isValid;

  /// モデルが新規作成対象かどうか。trueの場合はinsert、falseの場合はupdateとして扱われる。
  bool get isNew;
}
