abstract interface class IGridReaderServiceArg<T> {
  int get skip;
  T get comparable;
}

abstract class GridReaderServiceArg<T> implements IGridReaderServiceArg<T> {
  @override
  final int skip;
  @override
  final T comparable;

  const GridReaderServiceArg({required this.skip, required this.comparable});
}
