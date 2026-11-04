import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 既定のイメージ(画面案 `tools/open-design/avatar.svg` を、そのまま描き起こしたもの)。
///
/// 画像が登録されていないとき・取得できないときに使う。SVG の描画ライブラリを足さず、
/// `viewBox="0 0 120 120"` の図形(背景・肩・首・顔・髪・襟)を `dart:ui` で描いて PNG にする。
abstract final class DefaultAvatar {
  /// 画面案の `viewBox`。
  static const _viewBox = 120.0;

  /// 一辺 [size] ピクセルの PNG を作る。
  static Future<Uint8List> renderPng({int size = 256}) async {
    final recorder = ui.PictureRecorder();
    final canvas = ui.Canvas(recorder);
    canvas.scale(size / _viewBox);
    ui.Paint fill(int argb) => ui.Paint()..color = ui.Color(argb);

    // 背景
    canvas.drawRect(const ui.Rect.fromLTWH(0, 0, 120, 120), fill(0xFFCFE3E4));
    // 肩: M18 120c2-24 20-36 42-36s40 12 42 36z
    canvas.drawPath(
      ui.Path()
        ..moveTo(18, 120)
        ..cubicTo(20, 96, 38, 84, 60, 84)
        ..cubicTo(82, 84, 100, 96, 102, 120)
        ..close(),
      fill(0xFF2F4A58),
    );
    // 首: M48 80h24v14c0 5-5 9-12 9s-12-4-12-9z
    canvas.drawPath(
      ui.Path()
        ..moveTo(48, 80)
        ..lineTo(72, 80)
        ..lineTo(72, 94)
        ..cubicTo(72, 99, 67, 103, 60, 103)
        ..cubicTo(53, 103, 48, 99, 48, 94)
        ..close(),
      fill(0xFFE0B99A),
    );
    // 顔: ellipse cx60 cy52 rx20 ry24
    canvas.drawOval(
      const ui.Rect.fromLTRB(40, 28, 80, 76),
      fill(0xFFEFC9AA),
    );
    // 髪: M39 50c-2-18 9-28 22-28 14 0 22 10 20 28-4-8-9-12-14-13-8 3-19 4-28 13z
    canvas.drawPath(
      ui.Path()
        ..moveTo(39, 50)
        ..cubicTo(37, 32, 48, 22, 61, 22)
        ..cubicTo(75, 22, 83, 32, 81, 50)
        ..cubicTo(77, 42, 72, 38, 67, 37)
        ..cubicTo(59, 40, 48, 41, 39, 50)
        ..close(),
      fill(0xFF1D2A31),
    );
    // 襟: M52 94l8 14 8-14z
    canvas.drawPath(
      ui.Path()
        ..moveTo(52, 94)
        ..lineTo(60, 108)
        ..lineTo(68, 94)
        ..close(),
      fill(0xFFFFFFFF),
    );

    final picture = recorder.endRecording();
    final image = await picture.toImage(size, size);
    final data = await image.toByteData(format: ui.ImageByteFormat.png);
    image.dispose();
    picture.dispose();
    return data!.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  }
}

/// 既定のイメージ。描くのは1回だけ(アプリの間は使い回す)。テストでは差し替える。
final defaultAvatarImageProvider = FutureProvider<ImageProvider>(
  (ref) async => MemoryImage(await DefaultAvatar.renderPng()),
);
