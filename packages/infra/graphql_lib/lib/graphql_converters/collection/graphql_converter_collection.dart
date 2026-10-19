import '../../edit_models/iedit_model.dart';
import '../converters/i_graphql_converter.dart';
import '_collection.dart';

/// モデルの型名をキーに [IGraphQLConverter] を管理するレジストリ。
/// `save()` から、保存対象モデルの型に対応するコンバーターを探すために参照される。
final class GraphQLConverterCollection {
  final Map<String, IGraphQLConverter> _converters;

  GraphQLConverterCollection._(this._converters);

  /// [converters] に含まれる各 [CollectionItem] を型名をキーとして登録し、
  /// [GraphQLConverterCollection] を生成する。
  factory GraphQLConverterCollection(List<CollectionItem> converters) {
    final converterMap = {
      for (var item in converters) item.typeString: item.converter,
    };
    return GraphQLConverterCollection._(converterMap);
  }

  /// [instance] の実行時型に対応するコンバーターを取得する。モデルのインスタンスから
  /// 対応するコンバーターを探したい場合に呼び出す。対応するコンバーターが登録されて
  /// いない場合はnullを返す。
  IGraphQLConverter? getConverterFromInstance(IEditModel instance) {
    if (!hasConverterFromInstance(instance)) {
      return null;
    }
    return _converters[instance.runtimeType.toString()]!;
  }

  /// 型引数 [T] に対応するコンバーターを取得する。モデルの型が分かっている場合に
  /// 呼び出す。対応するコンバーターが登録されていない場合はnullを返す。
  IGraphQLConverter? getConverter<T>() {
    if (!hasConverter<T>()) {
      return null;
    }
    return _converters[T.toString()]!;
  }

  /// 型引数 [T] に対応するコンバーターが登録済みかどうかを判定する。
  bool hasConverter<T>() {
    // if (T is! IEditModel) {
    //   throw ArgumentError(
    //     'T cannot be of type IEditModel. Please use the specific converter for edit models.',
    //   );
    // }
    return _converters.containsKey(T.toString());
  }

  /// [instance] の実行時型に対応するコンバーターが登録済みかどうかを判定する。
  bool hasConverterFromInstance(IEditModel instance) {
    return _converters.containsKey(instance.runtimeType.toString());
  }

  /// 型引数 [T] に対応するコンバーターとして [converter] を登録する。
  /// 警告: 同じ型のコンバーターが既に登録されている場合は上書きされる。
  void addConverter<T>(IGraphQLConverter converter) {
    _converters[T.toString()] = converter;
  }

  /// 型引数 [T] に対応するコンバーターの登録を削除する。
  /// 警告: 削除後は [getConverter]・[hasConverter] などの結果に影響する。
  void removeConverter<T>() {
    _converters.remove(T.toString());
  }

  /// [converter] と等しいコンバーターをすべて登録から削除する。
  /// 警告: 削除後は登録内容に影響し、以後そのコンバーターは取得できなくなる。
  void removeAtConverter(IGraphQLConverter converter) {
    _converters.removeWhere((key, value) => value == converter);
  }

  /// 登録済みのコンバーターをすべて削除する。
  /// 警告: 呼び出し後はコンバーターが1件も登録されていない状態になり、
  /// 以後 [getConverter] や [getConverterFromInstance] は常にnullを返す。
  void removeAllConverters() {
    _converters.clear();
  }
}
