import '../../edit_models/iedit_model.dart';
import '../converters/_converters.dart';

/// [IGraphQLConverter] とその対象となるモデルの型情報をペアで保持するクラス。
/// [GraphQLConverterCollection] へコンバーターを登録する際に使用する。
final class CollectionItem<T extends IEditModel> {
  /// このアイテムが保持するコンバーター本体。
  final IGraphQLConverter<T> converter;

  /// このアイテムが対象とするモデルの型。
  Type get type => T;

  /// このアイテムが対象とするモデルの型名。
  String get typeString => T.toString();
  CollectionItem(this.converter);
}
