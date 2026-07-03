import 'package:data_strategist/src/pridicate_model.dart';

abstract interface class IDataRepository {
  List<T> find<T>(PridicateModel model);
}
