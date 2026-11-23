import 'package:entity_screens/entity_screens.dart';

/// 作業実績の選択(異常の登録などで、対象の作業実績を選ぶ。読み取り専用・メニューに出さない)。
const String workRecordPickKey = 'workrecpick';

/// ロット(棚ビジター)の選択(同上)。
const String lotPickKey = 'lotpick';

/// 選択用の実体の定義(手書き。生成の対象外)。他の機能は、キーだけで選ぶ(`EntityPickerDestination`)。
/// 選んだときの表示は、先頭から文字・数値の 2 つ(シンボル + 数量)。
const List<EntityDefinition> pickDefinitions = [
  EntityDefinition(
    key: workRecordPickKey,
    viewOnly: true,
    inMenu: false,
    fields: [
      FieldDefinition(key: 'symbol', required: false, readOnly: true),
      FieldDefinition(key: 'qty', kind: FieldKind.number, required: false, readOnly: true),
      FieldDefinition(key: 'nth_time', kind: FieldKind.number, required: false, readOnly: true),
      FieldDefinition(key: 'start_at', kind: FieldKind.date, required: false, readOnly: true),
    ],
  ),
  EntityDefinition(
    key: lotPickKey,
    viewOnly: true,
    inMenu: false,
    fields: [
      FieldDefinition(key: 'symbol', required: false, readOnly: true),
      FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false, readOnly: true),
      FieldDefinition(key: 'release', kind: FieldKind.flag, required: false, readOnly: true),
    ],
  ),
];

/// 選択用の実体のサンプル(メモリ上の既定。GraphQL 版が無いときに使う)。
final Map<String, List<EntityRecord>> pickSeeds = {
  workRecordPickKey: const [
    EntityRecord(id: 'wr-sample-1', values: {'symbol': 'WR-0001', 'qty': '10', 'nth_time': '1', 'start_at': '2026-10-12'}),
  ],
  lotPickKey: const [
    EntityRecord(id: 'lot-sample-1', values: {'symbol': 'LT-0001', 'quantity': '5', 'release': flagOn}),
  ],
};
