// announcement_page_filter_spec.dart
//
// このファイルは gen_filter_spec が生成した検索条件の対応表です。直接編集しないでください。
// graphql/announcement_page/announcement_page_read.graphql の選択経路から、平坦化キー -> Filterの経路を作る。
// 使い方: FlatFilterConverter(AnnouncementPageFilterSpec.spec).convert(平坦なMap, variables: {...})
import 'package:pms_graphql/pms_graphql.dart';

abstract class AnnouncementPageFilterSpec {
  static const FlatFilterSpec spec = FlatFilterSpec('TransAnnouncementFilter', {
    'transAnnouncementId': FlatFilterPath([], 'transAnnouncementId'),
    'toStaffId': FlatFilterPath([], 'toStaffId'),
    'category': FlatFilterPath([], 'category'),
    'isRead': FlatFilterPath([], 'isRead'),
    'expirationDate': FlatFilterPath([], 'expirationDate'),
    'targetSymbol': FlatFilterPath([], 'targetSymbol'),
    'symbol': FlatFilterPath([], 'symbol'),
    'updateAt': FlatFilterPath([], 'updateAt'),
    'remove': FlatFilterPath([], 'remove'),
    'titleLabel||transLabelId': FlatFilterPath([FilterStep('transLabelByTitles')], 'transLabelId'),
    'titleLabel||value||labelValue': FlatFilterPath([FilterStep('transLabelByTitles'), FilterStep.many('transLabelValuesByTransLabelId', {'sharedLanguageCodeId': 'languageCodeId'})], 'labelValue'),
    'messageText||transTextId': FlatFilterPath([FilterStep('transTextByMessages')], 'transTextId'),
    'messageText||value||textValue': FlatFilterPath([FilterStep('transTextByMessages'), FilterStep.many('transTextValuesByTransTextId', {'sharedLanguageCodeId': 'languageCodeId'})], 'textValue'),
  });
}
