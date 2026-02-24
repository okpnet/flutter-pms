part of '../storage.dart';

abstract interface class IStorageReader {
  Map<String, StorageItemConverter> get converters;
  dynamic operator [](String key);
  Future<Result<T>> read<T>(String key);
}

//読み書きインターフェイス
abstract interface class IStorageReaderWriter extends IStorageReader {
  void operator []=(String key, dynamic value);
  Future<void> write<T>(String key, T value);
  Future<void> delete(String key);
  Future<void> clear();
}
