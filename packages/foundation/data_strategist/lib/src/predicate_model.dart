import 'import.dart';

///問い合わせ条件(取得件数・開始位置・抽出条件・並び順)を引き渡すモデルのインターフェイス
abstract interface class IPredicateModel {
  ///取得件数
  int get take;

  ///読み飛ばす件数
  int get skip;

  ///抽出条件。nullは条件なし
  Expression? get predicate;

  ///並び順。nullは指定なし
  SortExpression? get orders;

  ///一部を差し替えたコピーを作成する。
  ///nullを渡した項目は元の値を引き継ぐ(nullへ戻すことはできない)。
  IPredicateModel copyWith({
    SortExpression? orders,
    Expression? predicate,
    int? skip,
    int? take,
  });

  ///エラー追跡用のJSON。復元には使用しない。
  Map<String, Object?> toJson();
}

///問い合わせ条件を保持する値オブジェクト(Value Object)
class PredicateModel implements IPredicateModel {
  @override
  final SortExpression? orders;

  @override
  final Expression? predicate;

  @override
  final int skip;

  @override
  final int take;

  PredicateModel({
    required this.take,
    required this.skip,
    this.predicate,
    this.orders,
  });

  @override
  PredicateModel copyWith({
    SortExpression? orders,
    Expression? predicate,
    int? skip,
    int? take,
  }) {
    return PredicateModel(
      take: take ?? this.take,
      skip: skip ?? this.skip,
      predicate: predicate ?? this.predicate,
      orders: orders ?? this.orders,
    );
  }

  @override
  Map<String, Object?> toJson() => {
    'take': take,
    'skip': skip,
    'predicate': predicate?.toString(),
    'orders': orders?.toString(),
  };
}
