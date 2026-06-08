///比較
abstract class ICompare<T> {
  ///条件に一致=True
  bool of(T? value1, T? value2);
}

class JsonMapComapre implements ICompare<Map<String, dynamic>> {
  final Function(Map<String, dynamic>?, Map<String, dynamic>?) equals;
  JsonMapComapre({required this.equals});
  @override
  bool of(Map<String, dynamic>? value1, Map<String, dynamic>? value2) =>
      equals(value1, value2);
}
