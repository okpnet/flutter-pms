import 'package:condition_pipeline/condition_pipeline.dart';

///
abstract class ReaderService<R> {
  Future<R> read(SearchCondition condition);
}

///
abstract class WriterService {
  Future<void> write<T>(List<T> writeValue);
}
