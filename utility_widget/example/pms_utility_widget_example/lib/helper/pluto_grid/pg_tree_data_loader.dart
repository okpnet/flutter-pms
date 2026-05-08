abstract class PgTreeDataLoader {
  /// parentId が null のときは root を返す
  Future<List<Map<String, dynamic>>> loadChildrenOf(String? parentId);

  /// 親変更（デモではメモリ上だけ）
  void updateParent(String id, String newParentId);
}
