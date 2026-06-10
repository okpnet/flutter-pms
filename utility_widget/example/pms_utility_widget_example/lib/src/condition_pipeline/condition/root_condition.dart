import '../converter/condition_converter.dart';
import 'parent_condtionn.dart';
import 'search_condition.dart';

/// ルート条件のインターフェース
///
/// ルート条件は検索パイプラインの最上位を表し、ページネーション情報（`skip`/`take`）や
/// 条件変換用の `ConditionConverter` を提供します。
abstract interface class IRootCondition {
  /// スキップするアイテム数（ページネーション用）
  int get skip;

  /// 取得するアイテム数（ページネーション用）
  int get take;

  /// 条件を別形式に変換するコンバータ（必要に応じて null 許容）
  ConditionConverter? get converter;
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

  /// 条件変換用コンバータ（オプション）
  final ConditionConverter? _converter;

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

  /// 外部から参照可能なコンバータアクセサ
  @override
  ConditionConverter? get converter => _converter;

  /// コンストラクタ。`skip` と `take` はデフォルト値を持ち、`converter` は任意です。
  RootCondition({
    ConditionConverter? converter,
    int? skip,
    int? take,
    GruleRule? siblingsRule,
  }) : _siblingsRule = siblingsRule ?? .and,
       skip = skip ?? 0,
       take = take ?? 4,
       _converter = converter;

  @override
  void setSiblingsRule(GruleRule siblingsRule) {
    _siblingsRule = siblingsRule;
  }
}
