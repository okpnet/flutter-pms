import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:plan_change_model/plan_change_model.dart';

import '../entities/plan_change_definitions.dart';

/// 計画変更の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 対象は、計画変更の履歴(`planchange`。DB のビュー `v_plan_change`)と、未処置一覧(`cancelopen`。`v_cancel_open_item`)。
/// 対象・動き・処置・原因・種類は、コード値(文字列・整数)でなく boolean の列(チェック)で受け取り、画面の真偽の項目にそのまま写す。
/// 値の文字は組み立てない(列の名前だけ)。いずれも追記のみ・計算済みのビューで、画面から書かない(`viewOnly`)。
/// 生成された型は、この中だけで使い、外へ出さない。抽出条件・並び順は無視する(絞り込みと並べ替えはテーブル側)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> planChangeRepositories(GraphQLClient client) {
  final language = _LanguageCode(client);
  return [
    _PlanChangeRepository(_definition('planchange'), client, language),
    _CancelOpenRepository(_definition('cancelopen'), client, language),
  ];
}

EntityDefinition _definition(String key) =>
    planChangeDefinitions.firstWhere((d) => d.key == key);

/// 検証用 DB の言語コード `ja` の ID(読み込みの必須の条件)。最初の1回だけ引く。
class _LanguageCode {
  _LanguageCode(this._client);

  final GraphQLClient _client;
  Future<String>? _id;

  Future<String> get id => _id ??= _load();

  Future<String> _load() async {
    final result = await _client.query(
      QueryOptions(
        document: gql(
          'query { allSharedLanguageCodes(first: 20, filter: {remove: {equalTo: false}}) { nodes { sharedLanguageCodeId code } } }',
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    final nodes =
        (result.data?['allSharedLanguageCodes'] as Map?)?['nodes'] as List? ??
        const [];
    for (final n in nodes.whereType<Map>()) {
      if ('${n['code']}'.toLowerCase() == 'ja') {
        return n['sharedLanguageCodeId'] as String;
      }
    }
    throw StateError('言語コード ja が見つかりません');
  }
}

abstract class _ReadOnlyRepository implements IEntityRepository {
  _ReadOnlyRepository(this.definition, this.client, this.language);

  @override
  final EntityDefinition definition;
  final GraphQLClient client;
  final _LanguageCode language;

  @override
  Future<EntityRecord> save(EntityRecord record) =>
      throw UnsupportedError('${definition.key}: 読み取り専用です');

  @override
  Future<void> remove(String id) =>
      throw UnsupportedError('${definition.key}: 読み取り専用です');

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];

  static String text(Object? v) => v == null ? '' : '$v';

  /// 日付(ISO 8601)を、画面の日付の形(年-月-日)にする。
  static String date(Object? v) {
    final s = text(v);
    return s.length >= 10 ? s.substring(0, 10) : s;
  }

  /// DB の numeric(文字列)を、画面の数値の形にする(小数の 0 は省く)。
  static String number(Object? v) {
    final s = text(v);
    if (s.isEmpty) return '';
    final n = num.tryParse(s);
    if (n == null) return s;
    return n == n.roundToDouble() ? '${n.round()}' : '$n';
  }

  /// 真偽(boolean の列)。画面の真偽の項目の値(オン = [flagOn]、オフ = 空)。
  static String flag(bool? v) => v == true ? flagOn : '';
}

class _PlanChangeRepository extends _ReadOnlyRepository {
  _PlanChangeRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$PlanChangePageRead$allVPlanChanges$nodes n) =>
      EntityRecord(
        id: n.transPlanChangeId,
        values: {
          'change_at': _ReadOnlyRepository.date(n.changeAt),
          'symbol': _ReadOnlyRepository.text(n.symbol),
          'is_order_detail': _ReadOnlyRepository.flag(n.isOrderDetail),
          'is_purchase_detail': _ReadOnlyRepository.flag(n.isPurchaseDetail),
          'is_operations_plan': _ReadOnlyRepository.flag(n.isOperationsPlan),
          'is_inventory_request': _ReadOnlyRepository.flag(
            n.isInventoryRequest,
          ),
          'is_visiter': _ReadOnlyRepository.flag(n.isVisiter),
          'is_shipping_order_detail': _ReadOnlyRepository.flag(
            n.isShippingOrderDetail,
          ),
          'item': _ReadOnlyRepository.text(n.itemId),
          'is_cancel': _ReadOnlyRepository.flag(n.isCancel),
          'is_quantity_change': _ReadOnlyRepository.flag(n.isQuantityChange),
          'is_date_change': _ReadOnlyRepository.flag(n.isDateChange),
          'is_postpone': _ReadOnlyRepository.flag(n.isPostpone),
          'is_advance': _ReadOnlyRepository.flag(n.isAdvance),
          'is_stop': _ReadOnlyRepository.flag(n.isStop),
          'is_resume': _ReadOnlyRepository.flag(n.isResume),
          'is_discontinue': _ReadOnlyRepository.flag(n.isDiscontinue),
          'is_release': _ReadOnlyRepository.flag(n.isRelease),
          'is_hold': _ReadOnlyRepository.flag(n.isHold),
          'is_scrap': _ReadOnlyRepository.flag(n.isScrap),
          'is_deliver': _ReadOnlyRepository.flag(n.isDeliver),
          'has_settlement': _ReadOnlyRepository.flag(n.hasSettlement),
          'customer_cause': _ReadOnlyRepository.flag(n.customerCause),
          'supplier_cause': _ReadOnlyRepository.flag(n.supplierCause),
          'quality_cause': _ReadOnlyRepository.flag(n.qualityCause),
          'from_mrp': _ReadOnlyRepository.flag(n.fromMrp),
          'is_reflected': _ReadOnlyRepository.flag(n.isReflected),
          'is_unreflected': _ReadOnlyRepository.flag(n.isUnreflected),
          'is_root': _ReadOnlyRepository.flag(n.isRoot),
          'cancel_quantity': _ReadOnlyRepository.number(n.cancelQuantity),
          'old_quantity': _ReadOnlyRepository.number(n.oldQuantity),
          'new_quantity': _ReadOnlyRepository.number(n.newQuantity),
          'old_date': _ReadOnlyRepository.date(n.oldDate),
          'new_date': _ReadOnlyRepository.date(n.newDate),
          'reason': _ReadOnlyRepository.text(n.reason),
        },
      );

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$PlanChangePageRead(
      Options$Query$PlanChangePageRead(
        variables: Variables$Query$PlanChangePageRead.fromJson({
          'first': first,
          'offset': offset,
          'languageCodeId': await language.id,
          // 新しい変更を先に出す
          'orderBy': ['CHANGE_AT_DESC'],
          if (filter.isNotEmpty) 'filter': filter,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n
          in result.parsedData?.allVPlanChanges?.nodes ??
              const <Query$PlanChangePageRead$allVPlanChanges$nodes?>[])
        ?n == null ? null : _record(n),
    ];
  }

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) => _read(take, skip, const {});

  @override
  Future<EntityRecord?> findById(String id) async {
    final rows = await _read(1, 0, {
      'transPlanChangeId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }
}

class _CancelOpenRepository extends _ReadOnlyRepository {
  _CancelOpenRepository(super.definition, super.client, super.language);

  EntityRecord _record(
    Query$CancelOpenItemPageRead$allVCancelOpenItems$nodes n,
  ) => EntityRecord(
    id: n.openItemId,
    values: {
      'symbol': _ReadOnlyRepository.text(n.symbol),
      'is_inventory_request': _ReadOnlyRepository.flag(n.isInventoryRequest),
      'is_work_in_process': _ReadOnlyRepository.flag(n.isWorkInProcess),
      'is_hold': _ReadOnlyRepository.flag(n.isHold),
      'is_shipping_order': _ReadOnlyRepository.flag(n.isShippingOrder),
      'is_outsource_order': _ReadOnlyRepository.flag(n.isOutsourceOrder),
      'is_supply_at_supplier': _ReadOnlyRepository.flag(n.isSupplyAtSupplier),
      'is_customer_supply': _ReadOnlyRepository.flag(n.isCustomerSupply),
      'cause_cancel': _ReadOnlyRepository.flag(n.causeCancel),
      'cause_stop': _ReadOnlyRepository.flag(n.causeStop),
      'cause_discontinue': _ReadOnlyRepository.flag(n.causeDiscontinue),
      'item': _ReadOnlyRepository.text(n.itemId),
      'quantity': _ReadOnlyRepository.number(n.quantity),
      'since': _ReadOnlyRepository.date(n.since),
    },
  );

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$CancelOpenItemPageRead(
      Options$Query$CancelOpenItemPageRead(
        variables: Variables$Query$CancelOpenItemPageRead.fromJson({
          'first': first,
          'offset': offset,
          'languageCodeId': await language.id,
          if (filter.isNotEmpty) 'filter': filter,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n
          in result.parsedData?.allVCancelOpenItems?.nodes ??
              const <Query$CancelOpenItemPageRead$allVCancelOpenItems$nodes?>[])
        ?n == null ? null : _record(n),
    ];
  }

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) => _read(take, skip, const {});

  @override
  Future<EntityRecord?> findById(String id) async {
    final rows = await _read(1, 0, {
      'openItemId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }
}
