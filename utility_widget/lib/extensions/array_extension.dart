extension ArrayExtension<T> on Iterable<T> {
  int sumByInt(int Function(T item) selector) =>
      fold<int>(0, (sum, item) => sum + selector(item));
}
