import 'predicate_model.dart';

///
abstract class ReaderService<R> {
  Future<R> read(IPredicateModel condition);
}

///
abstract class WriterService {
  Future<void> write<T>(List<T> writeValue);
}
