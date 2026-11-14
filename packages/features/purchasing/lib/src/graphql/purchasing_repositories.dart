import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:purchasing_model/purchasing_model.dart';

import '../entities/purchasing_definitions.dart';

/// 購買の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 対象は、DB に対応する実体(発注・発注明細)。発注明細は、キャンセル数量・停止・受入済み・残
/// (DB のビュー `v_purchase_detail_balance`)を読み取り専用の項目で持つ。残・全部キャンセル済みは、
/// DB のビューの列をそのまま使う(画面で計算しない)。発注数量を書き換えてキャンセルしない。
///
/// 書き込みは、画面案の定義を DB に合わせるまで行わない(定義に仕入先など DB の必須項目が無く、登録できないため)。
/// そのため、実体を読み取り専用([EntityDefinition.viewOnly])にする。発注の金額(purchase_amount・received_amount)は
/// 別のビュー(v_purchase_amount)の集計で、この読み込みには無いため、項目から外す。
/// 生成された型は、この中だけで使い、外へ出さない。抽出条件・並び順は無視する(サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> purchasingRepositories(GraphQLClient client) {
  final language = _LanguageCode(client);
  return [
    _PurchaseRepository(_purchaseDefinition, client, language),
    _PurchaseDetailRepository(_purchaseDetailDefinition, client, language),
  ];
}

EntityDefinition _definition(String key) =>
    purchasingDefinitions.firstWhere((d) => d.key == key);

/// 生成された定義(DB に合わせた項目・読み取り専用の項目を含む)から、この取得元が値を返す項目だけを、
/// 読み取り専用にして使う(台帳に「新規」を出さず、保存・削除を出さない)。
EntityDefinition _readOnlyDefinition(String key, Set<String> supplied) {
  final d = _definition(key);
  return EntityDefinition(
    key: d.key,
    owner: d.owner,
    fields: [
      for (final f in d.fields)
        if (supplied.contains(f.key)) _readOnly(f),
    ],
    viewOnly: true,
  );
}

/// 発注: 取得元が値を返す項目。発注先は `stakeholder_id`(利害関係者の ID)。発注の金額は別のビュー(v_purchase_amount)の集計で、この読み込みには無い。
final EntityDefinition _purchaseDefinition = _readOnlyDefinition('purchase', {
  'stakeholder_id',
  'register_at',
  'purchase_order_date',
  'deadline',
  'remarks',
});

/// 発注明細: 取得元が値を返す項目。キャンセル数量・停止・受入済み・残は、DB のビューの列(読み取り専用)。
final EntityDefinition _purchaseDetailDefinition =
    _readOnlyDefinition('purdetail', {
      'trans_resource_plan_id',
      'item_id',
      'restocking_purchase',
      'quantity',
      'unit_price',
      'price_adjustment',
      'fixed_price',
      'material_supply',
      'paid_supply',
      'period',
      'remarks',
      'cancel_quantity',
      'stop',
      'received_quantity',
      'remaining_quantity',
      'open_quantity',
      'cancel_closed',
    });

FieldDefinition _readOnly(FieldDefinition f) => FieldDefinition(
  key: f.key,
  kind: f.kind,
  required: false,
  readOnly: true,
  options: f.options,
  reference: f.reference,
);

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

  static String flag(bool? v) => v == true ? flagOn : '';

  /// 画面の選択(はい/いいえ)の値。
  static String yesNo(bool? v) => v == null ? '' : (v ? 'はい' : 'いいえ');
}

class _PurchaseRepository extends _ReadOnlyRepository {
  _PurchaseRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$PurchasePageRead$allTransPurchases$nodes n) =>
      EntityRecord(
        id: n.transPurchaseId,
        values: {
          'stakeholder_id': _ReadOnlyRepository.text(n.stakeholderId),
          'register_at': _ReadOnlyRepository.date(n.registerAt),
          'purchase_order_date': _ReadOnlyRepository.date(n.purchaseOrderDate),
          'deadline': _ReadOnlyRepository.date(n.deadline),
          'remarks': _ReadOnlyRepository.text(n.remarks),
        },
      );

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$PurchasePageRead(
      Options$Query$PurchasePageRead(
        variables: Variables$Query$PurchasePageRead.fromJson({
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
          in result.parsedData?.allTransPurchases?.nodes ??
              const <Query$PurchasePageRead$allTransPurchases$nodes?>[])
        if (n != null) _record(n),
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
      'transPurchaseId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}

class _PurchaseDetailRepository extends _ReadOnlyRepository {
  _PurchaseDetailRepository(super.definition, super.client, super.language);

  EntityRecord _record(
    Query$PurchaseDetailPageRead$allTransPurchaseDetails$nodes n,
  ) {
    final b = n.balance;
    final restocking = n.restockingPurchase;
    return EntityRecord(
      id: n.transPurchaseDetailId,
      parentId: n.transPurchaseId,
      values: {
        'trans_resource_plan_id': _ReadOnlyRepository.text(
          n.transResourcePlanId,
        ),
        'item_id': _ReadOnlyRepository.text(n.itemId),
        'restocking_purchase': restocking == null
            ? ''
            : (restocking ? 'はい' : 'いいえ'),
        'quantity': _ReadOnlyRepository.number(n.quantity),
        'unit_price': _ReadOnlyRepository.number(n.unitPrice),
        'price_adjustment': _ReadOnlyRepository.number(n.priceAdjustment),
        'fixed_price': _ReadOnlyRepository.number(n.fixedPrice),
        'period': _ReadOnlyRepository.date(n.period),
        'material_supply': _ReadOnlyRepository.yesNo(n.materialSupply),
        'paid_supply': _ReadOnlyRepository.yesNo(n.paidSupply),
        'remarks': _ReadOnlyRepository.text(n.remarks),
        'cancel_quantity': _ReadOnlyRepository.number(n.cancelQuantity),
        'stop': _ReadOnlyRepository.flag(n.stop),
        // 残・全部キャンセル済みは、DB のビュー(v_purchase_detail_balance)の列。画面で計算しない
        'received_quantity': _ReadOnlyRepository.number(b?.receivedQuantity),
        'remaining_quantity': _ReadOnlyRepository.number(b?.remainingQuantity),
        'open_quantity': _ReadOnlyRepository.number(b?.openQuantity),
        'cancel_closed': _ReadOnlyRepository.flag(b?.cancelClosed),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    String purchaseId,
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$PurchaseDetailPageRead(
      Options$Query$PurchaseDetailPageRead(
        variables: Variables$Query$PurchaseDetailPageRead.fromJson({
          'first': first,
          'offset': offset,
          'languageCodeId': await language.id,
          'transPurchaseId': purchaseId,
          if (filter.isNotEmpty) 'filter': filter,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n
          in result.parsedData?.allTransPurchaseDetails?.nodes ??
              const <Query$PurchaseDetailPageRead$allTransPurchaseDetails$nodes?>[])
        if (n != null) _record(n),
    ];
  }

  /// 親(発注)が決まらない一覧は、発注ごとに引く(台帳の「表の中の表」は、親ごとに [findByParent] を使う)。
  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => const [];

  @override
  Future<EntityRecord?> findById(String id) async {
    // 発注明細は発注の下でしか引けない(読み込みが発注を必須にしている)ため、明細の ID から発注を引く
    final result = await client.query(
      QueryOptions(
        document: gql(
          'query(\$id: UUID!) { transPurchaseDetailByTransPurchaseDetailId(transPurchaseDetailId: \$id) { transPurchaseId } }',
        ),
        variables: {'id': id},
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    final purchaseId =
        (result.data?['transPurchaseDetailByTransPurchaseDetailId']
                as Map?)?['transPurchaseId']
            as String?;
    if (purchaseId == null) return null;
    final rows = await _read(purchaseId, 1, 0, {
      'transPurchaseDetailId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async =>
      parentId == null ? const [] : _read(parentId, 200, 0, const {});
}
