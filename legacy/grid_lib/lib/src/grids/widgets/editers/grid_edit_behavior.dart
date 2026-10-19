import 'package:flutter/material.dart';
import 'package:trina_grid/trina_grid.dart';

///TrinaColumnのTypeに応じたWidget生成する
abstract interface class IEditerInvoker {
  ///Widget生成
  Widget invoke({
    required BuildContext context,
    required TrinaColumnType typeInstance, // 👈 基底クラスで受け取る
    required dynamic initialValue,
    required String field,
    required String? title,
    required ValueChanged<dynamic> onCommit,
  });
}

// 💡 ジェネリクス <T> を型安全に解決して保持する実装クラス
class ConcreteEditorInvoker<T extends TrinaColumnType>
    implements IEditerInvoker {
  final GridEditBehavior<T> wrapper;
  const ConcreteEditorInvoker(this.wrapper);

  @override
  Widget invoke({
    required BuildContext context,
    required TrinaColumnType typeInstance,
    required dynamic initialValue,
    required String field,
    required String? title,
    required ValueChanged<dynamic> onCommit,
  }) {
    // 💡 ここで TrinaColumnType から 固有の型 T へ型安全にキャストされる！
    // ここはインテリセンスが100%効きます。
    return wrapper.build(
      context: context,
      type: typeInstance as T,
      initialValue: initialValue,
      field: field,
      title: title,
      onCommit: onCommit,
    );
  }
}

///指定した[T]のTrinaColumnのTypeに応じたWidget生成する
abstract class GridEditBehavior<T extends TrinaColumnType> {
  const GridEditBehavior();
  Widget build({
    required BuildContext context,
    required T type,
    required dynamic initialValue,
    required String field,
    required String? title,
    required ValueChanged<dynamic> onCommit,
  });
}
