import '../data/conditions.dart';
import '../data/load_models.dart';

/// 行選択の方式。
enum RowSelectionMode { none, single, multiple }

/// ローディング表示の種別。
enum LoadingKind { overlay, header, footer }

/// 左右の位置。
enum HorizontalPlacement { left, center, right }

/// 件数表示の場所。
enum CountPosition { header, footer, none }

/// 件数表示の並べ方。
enum CountDirection { horizontal, vertical }

/// 件数表示の項目。全件・フィルタ適用後・読み込み済み。
enum CountItem { total, filtered, loaded }

/// テーブル全体の設定。JSON でシリアライズ/デシリアライズできる。
class TableConfig {
  const TableConfig({
    this.rowHeight,
    this.pageSize = 50,
    this.loadMode = LoadMode.none,
    this.defaultColumnChars = 20,
    this.sortEnabled = false,
    this.filterEnabled = false,
    this.initialSort,
    this.initialFilters = const [],
    this.paginationDigits = 10,
    this.rowSelection = RowSelectionMode.none,
    this.cellSelection = false,
    this.dragEnabled = false,
    this.rowActionsEnabled = false,
    this.flagLimit,
    this.groupColumnKeys = const [],
    this.frozenColumnKey,
    this.loadingKind = LoadingKind.header,
    this.loadingAlignment = HorizontalPlacement.left,
    this.countItems,
    this.countPosition = CountPosition.header,
    this.countAlignment = HorizontalPlacement.right,
    this.countDirection = CountDirection.horizontal,
    this.countHorizontalOrder = defaultCountOrder,
    this.countVerticalOrder = defaultCountOrder,
  });

  /// 件数表示の標準の並び順(全件→フィルタ適用→読込)。
  static const defaultCountOrder = [
    CountItem.total,
    CountItem.filtered,
    CountItem.loaded,
  ];

  /// JSON から復元する。欠けた/不正な項目は既定値にする。
  factory TableConfig.fromJson(Map<String, dynamic> json) {
    const d = TableConfig();
    bool flag(String key, bool def) =>
        json[key] is bool ? json[key] as bool : def;
    int? positive(Object? v) => v is int && v > 0 ? v : null;
    T enumOf<T extends Enum>(List<T> values, Object? name, T def) =>
        values.where((v) => v.name == name).firstOrNull ?? def;

    final height = json['rowHeight'];
    final filters = json['initialFilters'];
    final groups = json['groupColumnKeys'];
    final frozen = json['frozenColumnKey'];
    List<CountItem> countList(Object? v, List<CountItem> def) => v is List
        ? [
            for (final e in v)
              ?CountItem.values.where((c) => c.name == e).firstOrNull,
          ]
        : def;
    final items = json['countItems'];
    return TableConfig(
      rowHeight: height is num && height > 0 ? height.toDouble() : d.rowHeight,
      pageSize: positive(json['pageSize']) ?? d.pageSize,
      loadMode: enumOf(LoadMode.values, json['loadMode'], d.loadMode),
      defaultColumnChars:
          positive(json['defaultColumnChars']) ?? d.defaultColumnChars,
      sortEnabled: flag('sortEnabled', d.sortEnabled),
      filterEnabled: flag('filterEnabled', d.filterEnabled),
      initialSort: SortCondition.tryFromJson(json['initialSort']),
      initialFilters: filters is List
          ? [for (final f in filters) ?FilterCondition.tryFromJson(f)]
          : d.initialFilters,
      paginationDigits:
          positive(json['paginationDigits']) ?? d.paginationDigits,
      rowSelection: enumOf(
        RowSelectionMode.values,
        json['rowSelection'],
        d.rowSelection,
      ),
      cellSelection: flag('cellSelection', d.cellSelection),
      dragEnabled: flag('dragEnabled', d.dragEnabled),
      rowActionsEnabled: flag('rowActionsEnabled', d.rowActionsEnabled),
      flagLimit: positive(json['flagLimit']),
      groupColumnKeys: groups is List
          ? [
              for (final g in groups)
                if (g is String) g,
            ]
          : d.groupColumnKeys,
      frozenColumnKey: frozen is String ? frozen : null,
      loadingKind: enumOf(
        LoadingKind.values,
        json['loadingKind'],
        d.loadingKind,
      ),
      loadingAlignment: enumOf(
        HorizontalPlacement.values,
        json['loadingAlignment'],
        d.loadingAlignment,
      ),
      countItems: items is List ? countList(items, const []) : null,
      countPosition: enumOf(
        CountPosition.values,
        json['countPosition'],
        d.countPosition,
      ),
      countAlignment: enumOf(
        HorizontalPlacement.values,
        json['countAlignment'],
        d.countAlignment,
      ),
      countDirection: enumOf(
        CountDirection.values,
        json['countDirection'],
        d.countDirection,
      ),
      countHorizontalOrder: countList(
        json['countHorizontalOrder'],
        d.countHorizontalOrder,
      ),
      countVerticalOrder: countList(
        json['countVerticalOrder'],
        d.countVerticalOrder,
      ),
    );
  }

  /// null のとき、文字サイズにマージンを加えた高さにする。
  final double? rowHeight;
  final int pageSize;
  final LoadMode loadMode;

  /// 列幅の指定がないときに収める文字数。
  final int defaultColumnChars;

  /// ソート/フィルタの有効(さらに列の`sortable`/`filterable`が必要)。
  final bool sortEnabled;
  final bool filterEnabled;
  final SortCondition? initialSort;
  final List<FilterCondition> initialFilters;

  /// ページ番号の表示桁数。
  final int paginationDigits;
  final RowSelectionMode rowSelection;
  final bool cellSelection;
  final bool dragEnabled;

  /// 右クリック/右スライド/長押しの行操作(削除・フラグ・上下移動)。
  final bool rowActionsEnabled;

  /// フラグを付けられる最大数。null は[pageSize]。
  final int? flagLimit;

  /// グループ化する列のキー(選択順)。
  final List<String> groupColumnKeys;

  /// 固定列のキー。このキーの列を含む左側を固定する。
  final String? frozenColumnKey;
  final LoadingKind loadingKind;

  /// header/footer のローディング(メッセージ+サークル)の左右位置。
  final HorizontalPlacement loadingAlignment;

  /// 件数表示の項目。null のときは件数を表示しない。
  final List<CountItem>? countItems;
  final CountPosition countPosition;
  final HorizontalPlacement countAlignment;
  final CountDirection countDirection;

  /// 横並び/縦並びのときの項目の並び順。
  final List<CountItem> countHorizontalOrder;
  final List<CountItem> countVerticalOrder;

  Map<String, dynamic> toJson() => {
    'rowHeight': rowHeight,
    'pageSize': pageSize,
    'loadMode': loadMode.name,
    'defaultColumnChars': defaultColumnChars,
    'sortEnabled': sortEnabled,
    'filterEnabled': filterEnabled,
    'initialSort': initialSort?.toJson(),
    'initialFilters': [for (final f in initialFilters) f.toJson()],
    'paginationDigits': paginationDigits,
    'rowSelection': rowSelection.name,
    'cellSelection': cellSelection,
    'dragEnabled': dragEnabled,
    'rowActionsEnabled': rowActionsEnabled,
    'flagLimit': flagLimit,
    'groupColumnKeys': groupColumnKeys,
    'frozenColumnKey': frozenColumnKey,
    'loadingKind': loadingKind.name,
    'loadingAlignment': loadingAlignment.name,
    'countItems': countItems?.map((e) => e.name).toList(),
    'countPosition': countPosition.name,
    'countAlignment': countAlignment.name,
    'countDirection': countDirection.name,
    'countHorizontalOrder': countHorizontalOrder.map((e) => e.name).toList(),
    'countVerticalOrder': countVerticalOrder.map((e) => e.name).toList(),
  };
}
