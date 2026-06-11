import '../condition.dart';

/// ルート条件のインターフェース
///
/// ルート条件は検索パイプラインの最上位を表し、ページネーション情報（`skip`/`take`）や
/// 条件変換用の `ConditionConverter` を提供します。
abstract interface class IRootCondition implements SearchCondition {
  /// スキップするアイテム数（ページネーション用）
  int get skip;

  /// 取得するアイテム数（ページネーション用）
  int get take;

  GruleRule get siblingsRule;
}

/// 検索条件ツリーのルートを表すクラス
///
/// `ParentCondition` を継承して子条件を保持します。ルートは親を持たないため `parent` は常に `null` を返します。
class RootCondition extends SearchCondition
    with ParentConditionMixin
    implements IRootCondition, IParentCondition {
  GruleRule _siblingsRule;
  @override
  GruleRule get siblingsRule => _siblingsRule;

  /// 内部で保持する子条件のリスト
  final List<SearchCondition> _children = [];

  /// ルートは親を持たないので常に `null` を返す
  @override
  SearchCondition? get parent => null;

  /// 子条件リストの公開アクセサ
  @override
  List<SearchCondition> get children => _children;

  /// ページネーションでスキップする件数
  @override
  int skip;

  /// ページネーションで取得する件数
  @override
  int take;

  /// コンストラクタ。`skip` と `take` はデフォルト値を持ち、`converter` は任意です。
  RootCondition({int? skip, int? take, GruleRule? siblingsRule})
    : _siblingsRule = siblingsRule ?? .and,
      skip = skip ?? 0,
      take = take ?? 4;

  @override
  void setSiblingsRule(GruleRule siblingsRule) {
    _siblingsRule = siblingsRule;
  }
}
