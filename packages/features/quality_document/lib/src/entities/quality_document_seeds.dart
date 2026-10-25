// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

/// 品質管理文書のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。
const Map<String, List<EntityRecord>> qualityDocumentSeeds = {
    'doctier': [
      EntityRecord(id: '737c2019-0000-4000-8000-000000000001', values: {'code': 'DOC-001', 'name': '品質マニュアル', 'pronunciation': 'ヒンシツマニュアル', 'nickname': '', 'attributive_noun': '限定名詞1', 'tier_number': '10', 'remarks': ''}),
      EntityRecord(id: '737c2019-0000-4000-8000-000000000002', values: {'code': 'DOC-002', 'name': '規程', 'pronunciation': 'キテイ', 'nickname': '', 'attributive_noun': '限定名詞2', 'tier_number': '20', 'remarks': ''}),
      EntityRecord(id: '737c2019-0000-4000-8000-000000000003', values: {'code': 'DOC-003', 'name': '手順書', 'pronunciation': 'テジュンショ', 'nickname': '', 'attributive_noun': '限定名詞3', 'tier_number': '30', 'remarks': ''}),
    ],
    'doc': [
      EntityRecord(id: 'ea68c355-0000-4000-8000-000000000001', values: {'code': 'QM-01', 'control_number': 'DOC-001', 'version_code': 'DOC-001', 'name': '品質マニュアル', 'pronunciation': 'ヒンシツマニュアル', 'nickname': '', 'mstr_document_tier_id': '737c2019-0000-4000-8000-000000000001', 'remarks': ''}),
      EntityRecord(id: 'ea68c355-0000-4000-8000-000000000002', values: {'code': 'QP-10', 'control_number': 'DOC-002', 'version_code': 'DOC-002', 'name': '検査規程', 'pronunciation': 'ケンサキテイ', 'nickname': '', 'mstr_document_tier_id': '737c2019-0000-4000-8000-000000000002', 'remarks': ''}, parentId: 'ea68c355-0000-4000-8000-000000000001'),
      EntityRecord(id: 'ea68c355-0000-4000-8000-000000000003', values: {'code': 'QW-101', 'control_number': 'DOC-003', 'version_code': 'DOC-003', 'name': '受入検査手順', 'pronunciation': 'ウケイレケンサテジュン', 'nickname': '', 'mstr_document_tier_id': '737c2019-0000-4000-8000-000000000003', 'remarks': ''}, parentId: 'ea68c355-0000-4000-8000-000000000002'),
    ],
    'doccontent': [
      EntityRecord(id: '582885f2-0000-4000-8000-000000000001', values: {'doc': 'ea68c355-0000-4000-8000-000000000003', 'code': 'DOC-001', 'name': '1. 目的', 'pronunciation': '', 'nickname': '', 'detail': '受け入れる材料の品質を確認する。', 'sequence': '10', 'image_content': 'はい', 'remarks': ''}),
      EntityRecord(id: '582885f2-0000-4000-8000-000000000002', values: {'doc': 'ea68c355-0000-4000-8000-000000000003', 'code': 'DOC-002', 'name': '1.1 適用範囲', 'pronunciation': '', 'nickname': '', 'detail': '購入材料のすべて。', 'sequence': '20', 'image_content': 'いいえ', 'remarks': ''}, parentId: '582885f2-0000-4000-8000-000000000001'),
    ],
    'report': [
      EntityRecord(id: '19bb34eb-0000-4000-8000-000000000001', values: {'code': 'RT-01', 'name': '検査成績書', 'pronunciation': 'ケンサセイセキショ', 'nickname': '', 'is_default': 'はい', 'remarks': ''}),
      EntityRecord(id: '19bb34eb-0000-4000-8000-000000000002', values: {'code': 'RT-02', 'name': '月次不適合集計', 'pronunciation': 'ゲツジフテキゴウシュウケイ', 'nickname': '', 'is_default': 'いいえ', 'remarks': ''}),
    ],
};
