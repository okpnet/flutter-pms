// 要件0050: 平坦なMap -> 入れ子のFilter(lib/extensions/flat_filter_converter.dart)のテスト。
//
// 1) コンバーター単体の挙動(経路の展開・some・条件の変数・エラー)。
// 2) 全画面について、対応表(lib/contents/<画面>_filter_spec.dart)のすべてのキーが、
//    生成モデル(Input$<テーブル>Filter)のfromJson/toJsonで欠落なく往復できること。
//    fromJsonは未知のキーを黙って捨てるため、toJsonとの一致で、生成用スキーマ
//    (tool/prune_schema.dartが残した関連フィルタの入力型)に経路が揃っていることを確認する。
// 3) OfficePageの実例(住所・呼称を経由した検索)。

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/office_page_filter_spec.dart';
import 'package:gqlprvlib/extensions/flat_filter_converter.dart';
import 'package:gqlprvlib/postgraphile/schema.graphql.dart';
import 'package:gqlprvlib/contents/approval_operation_page_filter_spec.dart';
import 'package:gqlprvlib/contents/assign_page_filter_spec.dart';
import 'package:gqlprvlib/contents/capability_page_filter_spec.dart';
import 'package:gqlprvlib/contents/capable_staff_page_filter_spec.dart';
import 'package:gqlprvlib/contents/company_page_filter_spec.dart';
import 'package:gqlprvlib/contents/department_category_page_filter_spec.dart';
import 'package:gqlprvlib/contents/department_page_filter_spec.dart';
import 'package:gqlprvlib/contents/item_kind_page_filter_spec.dart';
import 'package:gqlprvlib/contents/license_holders_page_filter_spec.dart';
import 'package:gqlprvlib/contents/license_page_filter_spec.dart';
import 'package:gqlprvlib/contents/office_page_filter_spec.dart';
import 'package:gqlprvlib/contents/position_page_filter_spec.dart';
import 'package:gqlprvlib/contents/provision_page_filter_spec.dart';
import 'package:gqlprvlib/contents/spec_measurement_page_filter_spec.dart';
import 'package:gqlprvlib/contents/staff_capability_page_filter_spec.dart';
import 'package:gqlprvlib/contents/staff_held_license_page_filter_spec.dart';
import 'package:gqlprvlib/contents/staff_page_filter_spec.dart';
import 'package:gqlprvlib/contents/unit_page_filter_spec.dart';

/// 最上位のFilter型名 -> fromJson/toJson(生成モデル)の往復。
final _roundTrips =
    <String, Map<String, dynamic> Function(Map<String, dynamic>)>{
      'InfoAssignFilter': (j) => Input$InfoAssignFilter.fromJson(j).toJson(),
      'InfoCompanyFilter': (j) => Input$InfoCompanyFilter.fromJson(j).toJson(),
      'InfoDepartmentFilter': (j) =>
          Input$InfoDepartmentFilter.fromJson(j).toJson(),
      'InfoDepartmentKindValueFilter': (j) =>
          Input$InfoDepartmentKindValueFilter.fromJson(j).toJson(),
      'InfoOfficeFilter': (j) => Input$InfoOfficeFilter.fromJson(j).toJson(),
      'InfoPositionFilter': (j) =>
          Input$InfoPositionFilter.fromJson(j).toJson(),
      'InfoProvisionFilter': (j) =>
          Input$InfoProvisionFilter.fromJson(j).toJson(),
      'InfoStaffFilter': (j) => Input$InfoStaffFilter.fromJson(j).toJson(),
      'MstrApprovalPatternFilter': (j) =>
          Input$MstrApprovalPatternFilter.fromJson(j).toJson(),
      'MstrCapabilityFilter': (j) =>
          Input$MstrCapabilityFilter.fromJson(j).toJson(),
      'MstrItemKindFilter': (j) =>
          Input$MstrItemKindFilter.fromJson(j).toJson(),
      'MstrLicenseFilter': (j) => Input$MstrLicenseFilter.fromJson(j).toJson(),
      'MstrSpecMeasurementFilter': (j) =>
          Input$MstrSpecMeasurementFilter.fromJson(j).toJson(),
      'SharedUnitFilter': (j) => Input$SharedUnitFilter.fromJson(j).toJson(),
    };

final _specs = <String, FlatFilterSpec>{
  'approval_operation_page': ApprovalOperationPageFilterSpec.spec,
  'assign_page': AssignPageFilterSpec.spec,
  'capability_page': CapabilityPageFilterSpec.spec,
  'capable_staff_page': CapableStaffPageFilterSpec.spec,
  'company_page': CompanyPageFilterSpec.spec,
  'department_category_page': DepartmentCategoryPageFilterSpec.spec,
  'department_page': DepartmentPageFilterSpec.spec,
  'item_kind_page': ItemKindPageFilterSpec.spec,
  'license_holders_page': LicenseHoldersPageFilterSpec.spec,
  'license_page': LicensePageFilterSpec.spec,
  'office_page': OfficePageFilterSpec.spec,
  'position_page': PositionPageFilterSpec.spec,
  'provision_page': ProvisionPageFilterSpec.spec,
  'spec_measurement_page': SpecMeasurementPageFilterSpec.spec,
  'staff_capability_page': StaffCapabilityPageFilterSpec.spec,
  'staff_held_license_page': StaffHeldLicensePageFilterSpec.spec,
  'staff_page': StaffPageFilterSpec.spec,
  'unit_page': UnitPageFilterSpec.spec,
};

void main() {
  group('FlatFilterConverter(単体)', () {
    const spec = FlatFilterSpec('XFilter', {
      'code': FlatFilterPath([], 'code'),
      'name': FlatFilterPath([], 'name'),
      'address||zip': FlatFilterPath([FilterStep('addressByAddressId')], 'zip'),
      'address||city||name': FlatFilterPath([
        FilterStep('addressByAddressId'),
        FilterStep('cityByCityId'),
      ], 'name'),
      'labels||value||text': FlatFilterPath([
        FilterStep('labelByLabelId'),
        FilterStep.many('valuesByLabelId', {'languageId': 'languageCodeId'}),
      ], 'text'),
      'labels||value||note': FlatFilterPath([
        FilterStep('labelByLabelId'),
        FilterStep.many('valuesByLabelId', {'languageId': 'languageCodeId'}),
      ], 'note'),
    });
    const converter = FlatFilterConverter(spec);

    test('自テーブルの列は演算子のMapをそのまま渡す', () {
      expect(
        converter.convert({
          'code': {'equalTo': 'A'},
        }),
        {
          'code': {'equalTo': 'A'},
        },
      );
    });

    test('1対1の関連は前方の関連フィールドで辿り、同じ経路の条件は1つにまとまる', () {
      expect(
        converter.convert({
          'address||zip': {'startsWith': '100'},
          'address||city||name': {'includes': '千代田'},
        }),
        {
          'addressByAddressId': {
            'zip': {'startsWith': '100'},
            'cityByCityId': {
              'name': {'includes': '千代田'},
            },
          },
        },
      );
    });

    test('1対多はsomeで辿り、変数による条件を同じsomeの中へ加える', () {
      expect(
        converter.convert(
          {
            'labels||value||text': {'includes': '東京'},
            'labels||value||note': {'isNull': false},
          },
          variables: {'languageCodeId': 'lang-ja'},
        ),
        {
          'labelByLabelId': {
            'valuesByLabelId': {
              'some': {
                'languageId': {'equalTo': 'lang-ja'},
                'text': {'includes': '東京'},
                'note': {'isNull': false},
              },
            },
          },
        },
      );
    });

    test('nullまたは空の条件は無視し、条件が無ければ空のMapを返す', () {
      expect(converter.convert({}), isEmpty);
      expect(
        converter.convert({'code': null, 'name': <String, dynamic>{}}),
        isEmpty,
      );
    });

    test('展開できないキーはArgumentError', () {
      expect(
        () => converter.convert({
          'unknown': {'equalTo': 1},
        }),
        throwsArgumentError,
      );
    });

    test('演算子のMapでない値はArgumentError', () {
      expect(() => converter.convert({'code': 'A'}), throwsArgumentError);
    });

    test('1対多の条件に必要な変数が無ければArgumentError', () {
      expect(
        () => converter.convert({
          'labels||value||text': {'includes': '東京'},
        }),
        throwsArgumentError,
      );
    });

    test('変換結果は呼び出し側のMapを書き換えない', () {
      final operators = <String, dynamic>{'equalTo': 'A'};
      final result = converter.convert({'code': operators});
      (result['code'] as Map)['equalTo'] = 'B';
      expect(operators['equalTo'], 'A');
    });
  });

  group('全画面の対応表が生成モデル(Input\$...Filter)で往復できる', () {
    for (final entry in _specs.entries) {
      test(entry.key, () {
        final spec = entry.value;
        final roundTrip = _roundTrips[spec.filterType];
        expect(roundTrip, isNotNull, reason: '${spec.filterType}の往復が未登録');
        expect(spec.paths, isNotEmpty);
        final converter = FlatFilterConverter(spec);
        for (final key in spec.paths.keys) {
          final nested = converter.convert(
            {
              key: {'isNull': false},
            },
            variables: {
              'languageCodeId': '00000000-0000-0000-0000-000000000001',
            },
          );
          expect(roundTrip!(nested), nested, reason: '$keyのFilterが生成モデルで欠落する');
        }
        // 全キーを一度に指定しても往復できる(同じ経路の条件が衝突しない)。
        final all = converter.convert(
          {
            for (final k in spec.paths.keys) k: {'isNull': false},
          },
          variables: {'languageCodeId': '00000000-0000-0000-0000-000000000001'},
        );
        expect(roundTrip!(all), all);
      });
    }
  });

  group('OfficePage(住所・呼称を経由した検索)', () {
    const converter = FlatFilterConverter(OfficePageFilterSpec.spec);

    test('住所の郵便番号と、事業所名(表示言語の辞書の値)で絞り込む', () {
      final filter = converter.convert(
        {
          'address||zipCode': {'startsWith': '100'},
          'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue':
              {'includes': '東京'},
        },
        variables: {'languageCodeId': 'lang-ja'},
      );
      expect(filter, {
        'infoAddressByInfoAddressId': {
          'zipCode': {'startsWith': '100'},
        },
        'sharedAppellationByNames': {
          'sharedDictionaryBySharedDictionaryNameId': {
            'sharedDictionaryValuesBySharedDictionaryId': {
              'some': {
                'sharedLanguageCodeId': {'equalTo': 'lang-ja'},
                'dictionaryValue': {'includes': '東京'},
              },
            },
          },
        },
      });
      final model = Input$InfoOfficeFilter.fromJson(filter);
      expect(model.infoAddressByInfoAddressId!.zipCode!.startsWith, '100');
      expect(model.toJson(), filter);
    });
  });
}
