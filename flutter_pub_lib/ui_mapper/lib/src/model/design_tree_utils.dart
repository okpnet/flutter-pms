import 'design_node.dart';

/// ツリー全体からid一致のノードを探す（深さ優先）。
DesignNode? findNodeById(List<DesignNode> roots, String id) {
  for (final node in roots) {
    if (node.id == id) return node;
    final found = findNodeById(node.children, id);
    if (found != null) return found;
  }
  return null;
}

/// ツリー全体からid一致のノードを探し、所属リストから取り除いて返す。
/// 見つからなければnull。
DesignNode? detachNodeById(List<DesignNode> roots, String id) {
  for (var i = 0; i < roots.length; i++) {
    if (roots[i].id == id) {
      return roots.removeAt(i);
    }
    final detached = detachNodeById(roots[i].children, id);
    if (detached != null) return detached;
  }
  return null;
}
