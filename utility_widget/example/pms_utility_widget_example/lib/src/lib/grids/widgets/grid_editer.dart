import 'package:trina_grid/trina_grid.dart';
import '../../undoredo/undo_redo.dart';

mixin  GridEditer<T> implements IUndoRedoStatable<T>{
  void openEddit(TrinaRow? editRow,){
    final builder=editRow!.cells..map((a,b)=>b.column.)
  }

  void column(TrinaColumn column){
    switch(column.type){
      TrinaColumnType. type=>
    }
  }
}