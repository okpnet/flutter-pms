import 'dart:async';
import 'dart:convert';

import 'package:utility_widget_example/constant/results/result.dart';

abstract class AssetReader {
  List<String> get keys;
  FutureOr<String> fromCsv();
  FutureOr<Result<List<Map<String, dynamic>>>> toJsonFromCsv() async {
    try {
      final buffer = await fromCsv();
      // UTF-8 のみ許可
      final bytes = utf8.encode(buffer);
      final decoded = utf8.decode(bytes);

      final lines = LineSplitter.split(decoded).toList();
      if (lines.isEmpty) {
        throw FormatException("CSV が空です");
      }
      // 1 行目はヘッダとして無視（keys を使うため）
      final dataLines = lines.skip(1);

      final result = <Map<String, dynamic>>[];
      for (final line in dataLines) {
        final values = line.split(',');

        if (values.length != keys.length) {
          throw FormatException(
            "列数が一致しません: expected=${keys.length}, actual=${values.length}",
          );
        }

        final map = <String, dynamic>{};
        for (int i = 0; i < keys.length; i++) {
          map[keys[i]] = values[i];
        }

        result.add(map);
      }

      return Ok(result);
    } catch (e, st) {
      return Failure(error: e as Error, stackTrace: st);
    }
  }
}
