import 'dart:async';

import 'package:grid_extensions/grid_extensions_lib.dart';
import 'package:mock_up/contents/_shared/grids/grid_scope_service/grid_drag_drop_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'grid_drag_drop_event.g.dart';

@riverpod
Raw<Stream<TreeEvent>> gridDragDropListenable(Ref ref) {
  final contrller = ref.watch(gridDragDropControllerProvider);
  return contrller.stream;
}
