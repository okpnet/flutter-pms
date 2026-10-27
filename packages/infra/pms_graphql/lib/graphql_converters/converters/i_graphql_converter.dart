import 'package:graphql/client.dart';

import '../../edit_models/_edit_model.dart';

/// [IEditModel] を実装したモデルをGraphQLのミューテーションへ変換するためのインターフェース。
/// アプリケーション側でモデルの型ごとに1つ実装する。
abstract interface class IGraphQLConverter<T extends IEditModel> {
  /// [instance] を新規作成(insert)用の [MutationOptions] へ変換する。
  /// [instance] の `isNew` が true の場合に呼び出される。
  MutationOptions toInsertOptions(T instance);

  /// [instance] を更新(update)用の [MutationOptions] へ変換する。
  /// [instance] の `isNew` が false の場合に呼び出される。
  MutationOptions toUpdateOptions(T instance);
}
