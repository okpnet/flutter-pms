import 'package:data_strategist/lib.dart';
import 'package:trina_grid/trina_grid.dart';
import '../../undoredo/undo_redo_state.dart';
import '../grid/providers/gridable_mixin.dart';
import '../presenters/presenters.dart';
import 'tree_load_status.dart';

///TreeタイプのGridに使用できるMixinの基本情報
///TはQueryの引数の型
///[R]はQueryの戻り値の型
abstract interface class ITreeGridableMixin<T, R>
    implements IGridableMixin<T, R> {
  ///読み込み最初の条件式。以降は[toCondition]が呼ばれる
  IPredicateModel get initiBuildPredicate;

  /// グリッド操作の抽象化
  UndoRedoState<RowModel> get undoredoState;

  ///最初以降の展開時の条件式
  IPredicateModel buildPredicate(TrinaRow? parentRow, TreeLoadStatus treeState);
}
