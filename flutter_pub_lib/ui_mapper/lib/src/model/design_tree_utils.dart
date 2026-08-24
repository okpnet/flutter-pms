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

/// idが一致するノードを、同じ位置で transform の結果に差し替える。
bool replaceNodeInPlace(
  List<DesignNode> roots,
  String id,
  DesignNode Function(DesignNode old) transform,
) {
  for (var i = 0; i < roots.length; i++) {
    if (roots[i].id == id) {
      roots[i] = transform(roots[i]);
      return true;
    }
    if (replaceNodeInPlace(roots[i].children, id, transform)) return true;
  }
  return false;
}

/// nodeIdの木構造上の深さを返す。rootNodes直下は1。未挿入なら0。
int nodeDepth(List<DesignNode> roots, String nodeId, [int depth = 1]) {
  for (final n in roots) {
    if (n.id == nodeId) return depth;
    final found = nodeDepth(n.children, nodeId, depth + 1);
    if (found != 0) return found;
  }
  return 0;
}

/// nodeを1段目としたときの、配下を含めた最大深さ（葉のみなら1）。
/// 移動操作で「今から積み込もうとしている部分木の高さ」を知るために使う。
int subtreeHeight(DesignNode node) {
  if (node.children.isEmpty) return 1;
  return 1 + node.children.map(subtreeHeight).reduce((a, b) => a > b ? a : b);
}
