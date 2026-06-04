import 'package:trina_grid/trina_grid.dart';

abstract class PmsModelConverter<T, R> {
  R to(T? value);
  T from(R? value);
}

abstract class PmsRowConverter
    extends PmsModelConverter<Map<String, dynamic>, TrinaRow> {}
