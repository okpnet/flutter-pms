import 'dart:async';

import 'package:grid_extensions/grid_extensions_lib.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'grid_drag_drop_controller.g.dart';

@riverpod
Raw<StreamController<TreeEvent>> gridDragDropController(Ref ref) {
  final controller = StreamController<TreeEvent>();
  ref.onDispose(() {
    controller.close();
  });
  return controller;
}
