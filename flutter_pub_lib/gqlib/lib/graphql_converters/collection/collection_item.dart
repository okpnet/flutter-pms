import '../../edit_models/iedit_model.dart';
import '../converters/_converters.dart';

final class CollectionItem<T extends IEditModel> {
  final IGraphQLConverter<T> converter;
  Type get type => T;
  String get typeString => T.toString();
  CollectionItem(this.converter);
}
