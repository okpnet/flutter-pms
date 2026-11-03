import 'package:access_control_model/access_control_client.dart';
import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';

import '../entities/access_control_definitions.dart';

/// アクセス管理の実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 通信は `access_control_model` の窓口([AccessControlClient])に任せ、生成された型はここへ出さない。
/// 抽出条件・並び順は無視する(絞り込みと並べ替えはテーブル側。サンプルと同じ)。
///
/// パターン: Adapter(窓口の平らな型と、画面の [EntityRecord] を変換する)
List<IEntityRepository> accessControlRepositories(GraphQLClient client) {
  final window = AccessControlClient(client: client);
  EntityDefinition definition(String key) =>
      accessControlDefinitions.firstWhere((d) => d.key == key);
  return [
    _AccessPathRepository(definition('accesspath'), window),
    _DepartmentAccessPathRepository(definition('deptaccesspath'), window),
    _StaffAccessPermissionRepository(
      definition('staffaccesspermission'),
      window,
    ),
    _EffectiveAccessPathRepository(definition('effectiveaccesspath'), window),
  ];
}

/// 窓口の呼び出しの共通部分(必須の検査、ページング)。
abstract class _GraphqlRepository implements IEntityRepository {
  _GraphqlRepository(this.definition, this.window);

  @override
  final EntityDefinition definition;
  final AccessControlClient window;

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];

  /// 必須の項目が空なら [EntityValidationException]。
  void validate(EntityRecord record) {
    final errors = <String, EntityFieldError>{};
    for (final f in definition.fields) {
      if (f.required && !f.readOnly && record.valueOf(f.key).trim().isEmpty) {
        errors[f.key] = EntityFieldError.required;
      }
    }
    if (errors.isNotEmpty) throw EntityValidationException(errors);
  }

  static bool isOn(String v) => v == flagOn;
  static String flag(bool v) => v ? flagOn : '';
}

class _AccessPathRepository extends _GraphqlRepository {
  _AccessPathRepository(super.definition, super.window);

  EntityRecord _record(AccessPathRecord r) => EntityRecord(
    id: r.id,
    values: {
      'name_ja': r.nameJa,
      'name_en': r.nameEn,
      'usecase_path': r.usecasePath,
      'remarks': r.remarks,
    },
  );

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => [
    for (final r in await window.listAccessPaths(first: take, offset: skip))
      _record(r),
  ];

  @override
  Future<EntityRecord?> findById(String id) async {
    final r = await window.getAccessPath(id);
    return r == null ? null : _record(r);
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    validate(record);
    final id = await window.saveAccessPath(
      AccessPathRecord(
        id: record.id,
        nameJa: record.valueOf('name_ja').trim(),
        nameEn: record.valueOf('name_en').trim(),
        usecasePath: record.valueOf('usecase_path').trim(),
        remarks: record.valueOf('remarks').trim(),
      ),
    );
    return (await findById(id)) ?? record.copyWith();
  }

  @override
  Future<void> remove(String id) => window.removeAccessPath(id);
}

class _DepartmentAccessPathRepository extends _GraphqlRepository {
  _DepartmentAccessPathRepository(super.definition, super.window);

  EntityRecord _record(DepartmentAccessPathRecord r) => EntityRecord(
    id: r.id,
    values: {
      'department': r.departmentId,
      'access_path': r.accessPathId,
      'write': _GraphqlRepository.flag(r.write),
      'remarks': r.remarks,
    },
  );

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => [
    for (final r in await window.listDepartmentAccessPaths(
      first: take,
      offset: skip,
    ))
      _record(r),
  ];

  @override
  Future<EntityRecord?> findById(String id) async {
    final r = await window.getDepartmentAccessPath(id);
    return r == null ? null : _record(r);
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    validate(record);
    final id = await window.saveDepartmentAccessPath(
      DepartmentAccessPathRecord(
        id: record.id,
        departmentId: record.valueOf('department'),
        accessPathId: record.valueOf('access_path'),
        write: _GraphqlRepository.isOn(record.valueOf('write')),
        remarks: record.valueOf('remarks').trim(),
      ),
    );
    return (await findById(id)) ?? record.copyWith();
  }

  @override
  Future<void> remove(String id) => window.removeDepartmentAccessPath(id);
}

class _StaffAccessPermissionRepository extends _GraphqlRepository {
  _StaffAccessPermissionRepository(super.definition, super.window);

  EntityRecord _record(StaffAccessPermissionRecord r) => EntityRecord(
    id: r.id,
    values: {
      'staff': r.staffId,
      'access_path': r.accessPathId,
      'write': _GraphqlRepository.flag(r.write),
      'remarks': r.remarks,
    },
  );

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => [
    for (final r in await window.listStaffAccessPermissions(
      first: take,
      offset: skip,
    ))
      _record(r),
  ];

  @override
  Future<EntityRecord?> findById(String id) async {
    final r = await window.getStaffAccessPermission(id);
    return r == null ? null : _record(r);
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    validate(record);
    final id = await window.saveStaffAccessPermission(
      StaffAccessPermissionRecord(
        id: record.id,
        staffId: record.valueOf('staff'),
        accessPathId: record.valueOf('access_path'),
        write: _GraphqlRepository.isOn(record.valueOf('write')),
        remarks: record.valueOf('remarks').trim(),
      ),
    );
    return (await findById(id)) ?? record.copyWith();
  }

  @override
  Future<void> remove(String id) => window.removeStaffAccessPermission(id);
}

/// 読み取り専用(ビュー)。担当者 × アクセスパスが主キーなので、id は「担当者の id|アクセスパスの id」。
class _EffectiveAccessPathRepository extends _GraphqlRepository {
  _EffectiveAccessPathRepository(super.definition, super.window);

  static const _separator = '|';

  EntityRecord _record(EffectiveAccessPathRecord r) => EntityRecord(
    id: '${r.staffId}$_separator${r.accessPathId}',
    values: {
      'staff': r.staffId,
      'access_path': r.accessPathId,
      'can_write': _GraphqlRepository.flag(r.canWrite),
      'from_department': _GraphqlRepository.flag(r.fromDepartment),
      'from_staff': _GraphqlRepository.flag(r.fromStaff),
    },
  );

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => [
    for (final r in await window.listEffectiveAccessPaths(
      first: take,
      offset: skip,
    ))
      _record(r),
  ];

  @override
  Future<EntityRecord?> findById(String id) async {
    final parts = id.split(_separator);
    if (parts.length != 2) return null;
    for (final r in await window.listEffectiveAccessPaths(staffId: parts[0])) {
      if (r.accessPathId == parts[1]) return _record(r);
    }
    return null;
  }

  @override
  Future<EntityRecord> save(EntityRecord record) =>
      throw UnsupportedError('実効アクセスパスは読み取り専用です');

  @override
  Future<void> remove(String id) => throw UnsupportedError('実効アクセスパスは読み取り専用です');
}
