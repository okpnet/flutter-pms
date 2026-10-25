import 'package:data_strategist/lib.dart';
import 'package:uuid/uuid.dart';

import 'shipping_kind_model.dart';

/// 配送区分の取得元(Repository)。一覧は [IDataRepository] で取得し、1件の取得・保存・削除を足す。
///
/// id は GraphQL の UUID を文字列として扱う。
/// GraphQL 版を作るときはこれを実装し、`shippingKindRepositoryProvider` を差し替える。
abstract interface class IShippingKindRepository
    implements IDataRepository<List<ShippingKind>> {
  Future<ShippingKind?> findById(String id);

  /// 保存して保存後の値を返す。コード重複などは [ShippingKindValidationException]。
  Future<ShippingKind> save(ShippingKindDraft draft);

  /// 削除する。顧客・受注・サプライヤーなどが使用中のときは [ShippingKindInUseException]。
  Future<void> remove(String id);
}

/// 使用中かを調べる処理。使用側の機能(営業・購買など)が差し込む。
typedef ShippingKindUsageChecker = Future<bool> Function(String id);

/// メモリ上のサンプル。抽出条件・並び順は無視する(絞り込みと並べ替えはテーブル側)。
class InMemoryShippingKindRepository implements IShippingKindRepository {
  InMemoryShippingKindRepository({
    List<ShippingKind>? kinds,
    ShippingKindUsageChecker? isInUse,
  }) : _kinds = [...(kinds ?? samples)],
       _isInUse = isInUse ?? ((_) async => false);

  /// サンプルの id(UUID の文字列)。
  static const sampleIds = [
    '5b1f0c1e-0000-4000-8000-000000000001',
    '5b1f0c1e-0000-4000-8000-000000000002',
    '5b1f0c1e-0000-4000-8000-000000000003',
  ];

  static const samples = [
    ShippingKind(
      id: '5b1f0c1e-0000-4000-8000-000000000001',
      code: 'S01',
      name: '通常便',
      pronunciation: 'つうじょうびん',
      nickname: '通常',
    ),
    ShippingKind(
      id: '5b1f0c1e-0000-4000-8000-000000000002',
      code: 'S02',
      name: '特急便',
      pronunciation: 'とっきゅうびん',
      nickname: '特急',
      remarks: '翌日着',
    ),
    ShippingKind(
      id: '5b1f0c1e-0000-4000-8000-000000000003',
      code: 'S03',
      name: '引取',
      pronunciation: 'ひきとり',
      nickname: '引取',
    ),
  ];

  final List<ShippingKind> _kinds;
  final ShippingKindUsageChecker _isInUse;

  @override
  Future<List<ShippingKind>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => _kinds.skip(skip).take(take).toList();

  @override
  Future<ShippingKind?> findById(String id) async {
    for (final k in _kinds) {
      if (k.id == id) return k;
    }
    return null;
  }

  @override
  Future<ShippingKind> save(ShippingKindDraft draft) async {
    final code = draft.code.trim();
    final name = draft.name.trim();
    if (code.isEmpty) {
      throw const ShippingKindValidationException(
        ShippingKindValidationError.codeRequired,
      );
    }
    if (name.isEmpty) {
      throw const ShippingKindValidationException(
        ShippingKindValidationError.nameRequired,
      );
    }
    if (_kinds.any((k) => k.code == code && k.id != draft.id)) {
      throw const ShippingKindValidationException(
        ShippingKindValidationError.codeDuplicated,
      );
    }
    final id = draft.id ?? const Uuid().v4();
    final saved = ShippingKind(
      id: id,
      code: code,
      name: name,
      pronunciation: draft.pronunciation.trim(),
      nickname: draft.nickname.trim(),
      remarks: draft.remarks.trim(),
    );
    final i = _kinds.indexWhere((k) => k.id == id);
    if (i >= 0) {
      _kinds[i] = saved;
    } else {
      _kinds.add(saved);
    }
    return saved;
  }

  @override
  Future<void> remove(String id) async {
    if (await _isInUse(id)) throw ShippingKindInUseException(id);
    _kinds.removeWhere((k) => k.id == id);
  }
}
