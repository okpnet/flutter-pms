import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter/material.dart';

import '../i18n/strings.g.dart';
import 'register_gateway.dart';
import 'register_models.dart';

/// 開始のコンテナを探して選ぶ画面。実体の台帳の画面([EntityListPage])を、生産計画に紐づく材料・仕掛りのコンテナだけで開く。
///
/// 明細(= 生産計画の工程)を引数にして取得元を絞る: 最初の工程は同じ注文の材料が入ったコンテナ、2 工程目以降は
/// 同じ生産計画で前工程の完了品を入庫したコンテナ。取り出せないコンテナも、理由つきで並べる(選べない)。
/// 選ぶと [ContainerStock] を返して閉じる。取り消しは null。
///
/// パターン: Adapter(取得元のコンテナを、台帳の行に変える)
class ContainerPickerPage extends StatelessWidget {
  const ContainerPickerPage({
    super.key,
    required this.gateway,
    required this.stepId,
    required this.scope,
    required this.strings,
  });

  final IWorkRegisterGateway gateway;
  final String stepId;

  /// 実体の画面の共通のもの(文字列・ファイル)。登録簿は、この画面だけの小さなものに差し替える。
  final EntityScope scope;
  final WorkRecordStrings strings;

  static const entityKey = 'stepcontainer';

  static const definition = EntityDefinition(
    key: entityKey,
    viewOnly: true,
    fields: [
      FieldDefinition(key: 'name', required: false, readOnly: true),
      FieldDefinition(key: 'location', required: false, readOnly: true),
      FieldDefinition(key: 'contents', required: false, readOnly: true),
      FieldDefinition(
        key: 'quantity',
        kind: FieldKind.number,
        required: false,
        readOnly: true,
      ),
      FieldDefinition(
        key: 'reserved',
        kind: FieldKind.flag,
        required: false,
        readOnly: true,
      ),
      FieldDefinition(key: 'reason', required: false, readOnly: true),
    ],
  );

  @override
  Widget build(BuildContext context) {
    final repository = _StepContainerRepository(gateway, stepId);
    final catalog = EntityCatalog()..register(repository);
    final local = EntityScope(
      catalog: catalog,
      labels: _PickerLabels(strings),
      strings: scope.strings,
    );
    return Scaffold(
      body: EntityListPage(
        entityKey: entityKey,
        scope: local,
        title: strings.register.picker.title,
        showCreate: false,
        onCreate: () async {},
        onOpen: (record) async {
          final stock = repository.stockOf(record.id);
          if (stock == null) return;
          if (!stock.available) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  stock.unavailableReason.isEmpty
                      ? strings.register.picker.unavailable
                      : stock.unavailableReason,
                ),
              ),
            );
            return;
          }
          Navigator.of(context).pop(stock);
        },
      ),
    );
  }
}

class _PickerLabels implements EntityLabels {
  const _PickerLabels(this._s);

  final WorkRecordStrings _s;

  @override
  String entity(String entityKey) => _s.register.picker.title;

  @override
  String field(String entityKey, String fieldKey) => switch (fieldKey) {
    'name' => _s.register.picker.name,
    'location' => _s.register.picker.location,
    'contents' => _s.register.picker.contents,
    'quantity' => _s.register.picker.quantity,
    'reserved' => _s.register.picker.reserved,
    'reason' => _s.register.picker.reason,
    _ => fieldKey,
  };

  @override
  String reverse(String entityKey, String reverseEntityKey) => reverseEntityKey;
}

class _StepContainerRepository implements IEntityRepository {
  _StepContainerRepository(this._gateway, this._stepId);

  final IWorkRegisterGateway _gateway;
  final String _stepId;
  final Map<String, ContainerStock> _stocks = {};

  ContainerStock? stockOf(String id) => _stocks[id];

  @override
  EntityDefinition get definition => ContainerPickerPage.definition;

  EntityRecord _record(ContainerStock s) => EntityRecord(
    id: s.id,
    values: {
      'name': s.name,
      'location': s.location,
      'contents': s.contents,
      'quantity': '${s.quantity}',
      'reserved': s.reserved ? flagOn : '',
      'reason': s.available ? '' : s.unavailableReason,
    },
  );

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async {
    final list = await _gateway.containers(_stepId);
    _stocks
      ..clear()
      ..addEntries(list.map((s) => MapEntry(s.id, s)));
    return [for (final s in list.skip(skip).take(take)) _record(s)];
  }

  @override
  Future<EntityRecord?> findById(String id) async {
    final s = _stocks[id];
    return s == null ? null : _record(s);
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];

  @override
  Future<EntityRecord> save(EntityRecord record) =>
      throw UnsupportedError('読み取り専用です');

  @override
  Future<void> remove(String id) => throw UnsupportedError('読み取り専用です');
}
