import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:sales_model/sales_model.dart';

import '../entities/sales_definitions.dart';

/// 営業の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 対象は、DB に対応する実体だけ(受注・受注明細)。画面案にだけある実体(出荷予定・出荷指示)は、
/// DB に対応する表が無いため、サンプルのまま。書き込みは、画面案の定義を DB に合わせるまで行わない
/// (定義に顧客など DB の必須項目が無く、登録できないため)。そのため、実体を読み取り専用([EntityDefinition.viewOnly])にする。
///
/// 受注明細は、キャンセル数量・停止・顧客所有・残(DB のビュー `v_order_detail_balance`)を読み取り専用の項目で持つ。
/// 残・全部キャンセル済みは、DB のビューの列をそのまま使う(画面で計算しない)。
///
/// 生成された型は、この中だけで使い、外へ出さない。抽出条件・並び順は無視する(絞り込みと並べ替えはテーブル側。サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> salesRepositories(GraphQLClient client) {
  final language = _LanguageCode(client);
  return [
    _OrderRepository(_orderDefinition, client, language),
    _OrderDetailRepository(_orderDetailDefinition, client, language),
  ];
}

EntityDefinition _definition(String key) =>
    salesDefinitions.firstWhere((d) => d.key == key);

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

/// 受注: 取得元が値を返す項目。顧客は `stakeholder_id`(利害関係者の ID)。
final EntityDefinition _orderDefinition = _readOnlyDefinition('order', {
  'order_number',
  'customer_order_number',
  'stakeholder_id',
  'order_processing_date',
  'delivery_date',
  'deadline',
  'remarks',
});

/// 受注明細: 取得元が値を返す項目。キャンセル数量・停止・残・精算額は、DB のビューの列(読み取り専用)。
final EntityDefinition _orderDetailDefinition =
    _readOnlyDefinition('orderdetail', {
      'item_id',
      'quantity',
      'unit_price',
      'price_adjustment',
      'fixed_price',
      'master_error_count',
      'delivery_date',
      'deadline',
      'customer_property',
      'remarks',
      'cancel_quantity',
      'stop',
      'remaining_quantity',
      'open_quantity',
      'cancel_closed',
      'settlement_amount',
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

class _OrderRepository extends _ReadOnlyRepository {
  _OrderRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$OrderPageRead$allTransOrders$nodes n) =>
      EntityRecord(
        id: n.transOrderId,
        values: {
          'order_number': _ReadOnlyRepository.text(n.orderNumber),
          'customer_order_number': _ReadOnlyRepository.text(
            n.customerOrderNumber,
          ),
          'stakeholder_id': _ReadOnlyRepository.text(n.stakeholderId),
          'order_processing_date': _ReadOnlyRepository.date(
            n.orderProcessingDate,
          ),
          'delivery_date': _ReadOnlyRepository.date(n.deliveryDate),
          'deadline': _ReadOnlyRepository.date(n.deadline),
          'remarks': _ReadOnlyRepository.text(n.remarks),
        },
      );

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$OrderPageRead(
      Options$Query$OrderPageRead(
        variables: Variables$Query$OrderPageRead.fromJson({
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
          in result.parsedData?.allTransOrders?.nodes ??
              const <Query$OrderPageRead$allTransOrders$nodes?>[])
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
      'transOrderId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}

class _OrderDetailRepository extends _ReadOnlyRepository {
  _OrderDetailRepository(super.definition, super.client, super.language);

  EntityRecord _record(
    Query$OrderDetailPageRead$allTransOrderDetails$nodes n,
  ) {
    final b = n.balance;
    return EntityRecord(
      id: n.transOrderDetailId,
      parentId: n.transOrderId,
      values: {
        'item_id': _ReadOnlyRepository.text(n.itemId),
        'quantity': _ReadOnlyRepository.number(n.quantity),
        'unit_price': _ReadOnlyRepository.number(n.unitPrice),
        'price_adjustment': _ReadOnlyRepository.number(n.priceAdjustment),
        'fixed_price': _ReadOnlyRepository.number(n.fixedPrice),
        'master_error_count': _ReadOnlyRepository.text(n.masterErrorCount),
        'delivery_date': _ReadOnlyRepository.date(n.deliveryDate),
        'deadline': _ReadOnlyRepository.date(n.deadline),
        'remarks': _ReadOnlyRepository.text(n.remarks),
        'cancel_quantity': _ReadOnlyRepository.number(n.cancelQuantity),
        'stop': _ReadOnlyRepository.flag(n.stop),
        'customer_property': _ReadOnlyRepository.yesNo(n.customerProperty),
        // 残・全部キャンセル済みは、DB のビュー(v_order_detail_balance)の列。画面で計算しない
        'remaining_quantity': _ReadOnlyRepository.number(b?.remainingQuantity),
        'open_quantity': _ReadOnlyRepository.number(b?.openQuantity),
        'cancel_closed': _ReadOnlyRepository.flag(b?.cancelClosed),
        'settlement_amount': _ReadOnlyRepository.number(b?.settlementAmount),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    String orderId,
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$OrderDetailPageRead(
      Options$Query$OrderDetailPageRead(
        variables: Variables$Query$OrderDetailPageRead.fromJson({
          'first': first,
          'offset': offset,
          'languageCodeId': await language.id,
          'transOrderId': orderId,
          if (filter.isNotEmpty) 'filter': filter,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n
          in result.parsedData?.allTransOrderDetails?.nodes ??
              const <Query$OrderDetailPageRead$allTransOrderDetails$nodes?>[])
        if (n != null) _record(n),
    ];
  }

  /// 親(受注)が決まらない一覧は、受注ごとに引く(台帳の「表の中の表」は、親ごとに [findByParent] を使う)。
  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => const [];

  @override
  Future<EntityRecord?> findById(String id) async {
    // 受注明細は受注の下でしか引けない(読み込みが受注を必須にしている)ため、明細の ID から受注を引く
    final result = await client.query(
      QueryOptions(
        document: gql(
          'query(\$id: UUID!) { transOrderDetailByTransOrderDetailId(transOrderDetailId: \$id) { transOrderId } }',
        ),
        variables: {'id': id},
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    final orderId =
        (result.data?['transOrderDetailByTransOrderDetailId']
                as Map?)?['transOrderId']
            as String?;
    if (orderId == null) return null;
    final rows = await _read(orderId, 1, 0, {
      'transOrderDetailId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async =>
      parentId == null ? const [] : _read(parentId, 200, 0, const {});
}
