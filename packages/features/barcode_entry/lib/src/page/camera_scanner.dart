import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

/// カメラでの読み取りに対応する端末か(Android・iOS。Windows などはリーダーのキーボード入力と手入力)。
bool get cameraScanSupported =>
    !kIsWeb &&
    (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS);

/// カメラで symbol を読み取る部品(スマートフォン・タブレット用)。
///
/// 読み取った文字列を [onDetect] へ渡す。同じ文字列が続けて読まれても、[interval] のあいだは1回にまとめる。
/// カメラの権限がない・起動できないときは、[errorText] を出す(例外にはしない)。
class CameraScanner extends StatefulWidget {
  const CameraScanner({
    super.key,
    required this.onDetect,
    required this.errorText,
    this.interval = const Duration(seconds: 2),
  });

  final void Function(String symbol) onDetect;
  final String errorText;
  final Duration interval;

  @override
  State<CameraScanner> createState() => _CameraScannerState();
}

class _CameraScannerState extends State<CameraScanner> {
  final _controller = MobileScannerController(
    formats: const [BarcodeFormat.all],
    detectionSpeed: DetectionSpeed.noDuplicates,
  );
  String? _last;
  DateTime _lastAt = DateTime.fromMillisecondsSinceEpoch(0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _detected(BarcodeCapture capture) {
    final value = capture.barcodes
        .map((b) => b.rawValue)
        .whereType<String>()
        .firstOrNull;
    if (value == null || value.isEmpty) return;
    final now = DateTime.now();
    if (value == _last && now.difference(_lastAt) < widget.interval) return;
    _last = value;
    _lastAt = now;
    widget.onDetect(value);
  }

  @override
  Widget build(BuildContext context) => AspectRatio(
    aspectRatio: 4 / 3,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: MobileScanner(
        controller: _controller,
        onDetect: _detected,
        errorBuilder: (context, error) => Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              widget.errorText,
              textAlign: TextAlign.center,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ),
        ),
      ),
    ),
  );
}
