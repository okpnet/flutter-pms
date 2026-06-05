///
abstract class ReaderService<T> {
  Future<List<Map<String, dynamic>>> read(T? condition);
}

///
abstract class WriterService {
  Future<void> write<T>(List<T> writeValue);
}
