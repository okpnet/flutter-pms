import '../condition.dart';

/// ルート条件のインターフェース。
/// - ルートは検索パイプラインの最上位ノードを表します。
/// - ページネーションのための [skip]/[take] や、条件変換に用いる [ConditionConverter] を提供します。
abstract interface class IRootCondition implements SearchCondition {
  /// [skip]: 前方からスキップするアイテム数（ページネーション用）。
  int get skip;

  /// [take]: 取得するアイテム数（ページネーション用）。
  int get take;

  /// [siblingsRule]: ルート配下の子条件同士を結合するルール。
  GruleRule get siblingsRule;
}

/// 検索条件ツリーのルートノードを表す実装クラス。
/// - 子条件を保持し、ページネーション情報や子同士の結合ルールを管理します。
class RootCondition extends SearchCondition
    with ParentConditionMixin
    implements IRootCondition, IParentCondition {
  GruleRule _siblingsRule;
  @override
  GruleRule get siblingsRule => _siblingsRule;

  /// 内部で保持する子条件のリスト。
  final List<SearchCondition> _children = [];

  /// ルートは常に親を持たないため、[parent] は常に `null` を返します。
  @override
  SearchCondition? get parent => null;

  /// 子条件の一覧を返すアクセサ。
  @override
  List<SearchCondition> get children => _children;

  /// [skip]: ページネーションでスキップする件数。
  @override
  int skip;

  /// [take]: ページネーションで取得する件数。
  @override
  int take;

  /// コンストラクタ。
  /// - [skip]: 初期スキップ件数（省略時は 0）。
  /// - [take]: 初期取得件数（省略時は 4）。
  /// - [siblingsRule]: 子条件の結合ルール（省略時は [GruleRule.and]）。
  RootCondition({int? skip, int? take, GruleRule? siblingsRule})
    : _siblingsRule = siblingsRule ?? GruleRule.and,
      skip = skip ?? 0,
      take = take ?? 4;

  @override
  void setSiblingsRule(GruleRule siblingsRule) {
    _siblingsRule = siblingsRule;
  }
}
