import 'package:data_strategist/lib.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';

/// フィルタグループの選択肢(例: 区分の「製品」、利害関係者の「顧客」)。
class CountFilterOption {
  const CountFilterOption({
    required this.key,
    required this.label,
    this.predicate,
  });

  final String key;
  final String label;

  /// 件数を数えるときの抽出条件。null は条件なし。
  final Expression? predicate;
}

/// 件数の項目と対にするフィルタグループ(例: 区分、利害関係者(顧客・外部))。
class CountFilterGroup {
  const CountFilterGroup({
    required this.key,
    required this.label,
    required this.options,
  });

  final String key;
  final String label;
  final List<CountFilterOption> options;

  CountFilterOption? optionOf(String? key) =>
      options.where((o) => o.key == key).firstOrNull;
}

/// 件数の元(出荷オーダー・進捗遅延など)。機能・アプリが提供し、`countSourcesProvider` で差し込む。
abstract interface class ICountSource {
  String get key;

  /// 項目の名前。
  String get label;

  /// 対にできるフィルタグループ。
  List<CountFilterGroup> get groups;

  /// レコード数の合計。[option] が null のときは条件なし。
  Future<int> count(CountFilterOption? option);
}

/// `IDataRepository<int>`(件数を返す取得元)から数える標準の実装。
///
/// 取得は page_mediator_extension のデータ取得([IPageDataMediator])で行う(エラーはログに残る)。
/// 取得元は、`take` を件数の上限ではなく「件数を数える」指示として扱う(`totalCount`)。
class RepositoryCountSource implements ICountSource {
  RepositoryCountSource({
    required this.key,
    required this.label,
    required this.state,
    required this.data,
    this.groups = const [],
  });

  @override
  final String key;

  @override
  final String label;

  @override
  final List<CountFilterGroup> groups;

  final IQueryState<int> state;
  final IPageDataMediator data;

  @override
  Future<int> count(CountFilterOption? option) => data.fetch<int>(
    state,
    model: PredicateModel(take: 0, skip: 0, predicate: option?.predicate),
  );
}
