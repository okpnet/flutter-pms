import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 選んだ設定のファイル(名前と中身)。
class PickedSettingsFile {
  const PickedSettingsFile({required this.name, required this.bytes});

  final String name;
  final Uint8List bytes;
}

/// 設定の JSON ファイルを選ぶ窓口。既定は OS のダイアログ([PlatformSettingsFilePicker])。テストは差し替える。取り消しは null。
///
/// パターン: Strategy(ファイルの選び方の差し替え)
abstract interface class ISettingsFilePicker {
  Future<PickedSettingsFile?> pick();
}

/// OS の「ファイルを開く」ダイアログ(`file_picker`。拡張子 json)。
class PlatformSettingsFilePicker implements ISettingsFilePicker {
  const PlatformSettingsFilePicker();

  @override
  Future<PickedSettingsFile?> pick() async {
    final file = await FilePicker.pickFile(type: FileType.custom, allowedExtensions: const ['json']);
    if (file == null) return null;
    return PickedSettingsFile(name: file.name, bytes: await file.readAsBytes());
  }
}

final documentSettingsFilePickerProvider = Provider<ISettingsFilePicker>((ref) => const PlatformSettingsFilePicker());
