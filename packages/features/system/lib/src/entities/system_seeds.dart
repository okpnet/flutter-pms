// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// システムのサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> systemSeeds = {
  'unit': [
    EntityRecord(
      id: 'e8b51a07-0000-4000-8000-000000000001',
      values: {
        'name': 'キログラム',
        'pronunciation': 'キログラム',
        'nickname': '',
        'detail': '',
        'symbol': 'kg',
        'remarks': '',
      },
    ),
    EntityRecord(
      id: 'e8b51a07-0000-4000-8000-000000000002',
      values: {
        'name': 'グラム',
        'pronunciation': 'グラム',
        'nickname': '',
        'detail': '',
        'symbol': 'g',
        'remarks': '',
      },
    ),
    EntityRecord(
      id: 'e8b51a07-0000-4000-8000-000000000003',
      values: {
        'name': 'ミリメートル',
        'pronunciation': 'ミリメートル',
        'nickname': '',
        'detail': '',
        'symbol': 'mm',
        'remarks': '',
      },
    ),
    EntityRecord(
      id: 'e8b51a07-0000-4000-8000-000000000004',
      values: {
        'name': '個',
        'pronunciation': 'コ',
        'nickname': '',
        'detail': '',
        'symbol': 'pcs',
        'remarks': '',
      },
    ),
    EntityRecord(
      id: 'e8b51a07-0000-4000-8000-000000000005',
      values: {
        'name': 'リットル',
        'pronunciation': 'リットル',
        'nickname': '',
        'detail': '',
        'symbol': 'L',
        'remarks': '',
      },
    ),
  ],
  'currency': [
    EntityRecord(
      id: 'ddf28636-0000-4000-8000-000000000001',
      values: {
        'code': 'JPY',
        'name': '日本円',
        'pronunciation': '',
        'nickname': '',
        'currency_symbol': '円',
        'minor_unit': '10',
        'rate_auto': 'はい',
        'remarks': '',
      },
    ),
    EntityRecord(
      id: 'ddf28636-0000-4000-8000-000000000002',
      values: {
        'code': 'USD',
        'name': '米ドル',
        'pronunciation': '',
        'nickname': '',
        'currency_symbol': '\$',
        'minor_unit': '20',
        'rate_auto': 'いいえ',
        'remarks': '',
      },
    ),
    EntityRecord(
      id: 'ddf28636-0000-4000-8000-000000000003',
      values: {
        'code': 'EUR',
        'name': 'ユーロ',
        'pronunciation': '',
        'nickname': '',
        'currency_symbol': 'EUR',
        'minor_unit': '30',
        'rate_auto': 'はい',
        'remarks': '',
      },
    ),
  ],
  'exchangerate': [
    EntityRecord(
      id: '9ee0e262-0000-4000-8000-000000000001',
      values: {
        'mstr_currency_id': 'ddf28636-0000-4000-8000-000000000002',
        'rate_month': '2026-11-01',
        'rate': '150',
        'auto_fetched': 'はい',
        'source': '',
        'remarks': '',
      },
    ),
    EntityRecord(
      id: '9ee0e262-0000-4000-8000-000000000002',
      values: {
        'mstr_currency_id': 'ddf28636-0000-4000-8000-000000000003',
        'rate_month': '2026-11-01',
        'rate': '162',
        'auto_fetched': 'いいえ',
        'source': '',
        'remarks': '',
      },
    ),
  ],
};
