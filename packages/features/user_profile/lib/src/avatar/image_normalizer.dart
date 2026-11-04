import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 画像として読み込めないとき。
class InvalidImageException implements Exception {
  const InvalidImageException([this.reason = '']);

  final String reason;

  @override
  String toString() => 'InvalidImageException($reason)';
}

/// アップロードする前に、画像を縮小・再エンコードする。実体はテストで差し替えられる(Strategy)。
///
/// 原寸の画像には位置情報(EXIF)などが残るため、アプリ側で作り直してからアップロードする
/// (`tools/docker/pocketbase/README.md` の「9. ユーザーアバター」)。
abstract interface class IImageNormalizer {
  /// 縮小した PNG のバイト列を返す。
  ///
  /// [InvalidImageException]: 画像として読み込めない。
  Future<Uint8List> normalize(Uint8List bytes);
}

/// `dart:ui` のデコーダーで、長辺が [maxEdge] 以下になるよう縮小して PNG にする。
/// 作り直した画像に EXIF は残らない。GIF・アニメーションは最初のコマだけ。
///
/// 縮小後も [maxBytes](サーバーの上限)を超えるときは [InvalidImageException]。
class UiImageNormalizer implements IImageNormalizer {
  const UiImageNormalizer({this.maxEdge = 512, this.maxBytes = 2 * 1024 * 1024});

  final int maxEdge;
  final int maxBytes;

  @override
  Future<Uint8List> normalize(Uint8List bytes) async {
    final ui.Codec codec;
    try {
      final buffer = await ui.ImmutableBuffer.fromUint8List(bytes);
      codec = await ui.instantiateImageCodecWithSize(
        buffer,
        getTargetSize: (width, height) {
          final longest = width > height ? width : height;
          if (longest <= maxEdge) return ui.TargetImageSize();
          final scale = maxEdge / longest;
          return ui.TargetImageSize(
            width: (width * scale).round().clamp(1, maxEdge),
            height: (height * scale).round().clamp(1, maxEdge),
          );
        },
      );
    } catch (e) {
      throw InvalidImageException('decode failed: ${e.runtimeType}');
    }
    try {
      final frame = await codec.getNextFrame();
      final data = await frame.image.toByteData(format: ui.ImageByteFormat.png);
      frame.image.dispose();
      if (data == null) throw const InvalidImageException('encode failed');
      final png = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      if (png.length > maxBytes) {
        throw InvalidImageException('too large after resize: ${png.length}');
      }
      return png;
    } on InvalidImageException {
      rethrow;
    } catch (e) {
      throw InvalidImageException('decode failed: ${e.runtimeType}');
    } finally {
      codec.dispose();
    }
  }
}

final imageNormalizerProvider = Provider<IImageNormalizer>(
  (ref) => const UiImageNormalizer(),
);
