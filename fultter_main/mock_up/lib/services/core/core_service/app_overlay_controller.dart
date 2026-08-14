import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_overlay_controller.g.dart';

@riverpod
class AppOverlayController extends _$AppOverlayController {
  @override
  bool build() => false;
  void show() => state = true;
  void hide() => state = false;
}
