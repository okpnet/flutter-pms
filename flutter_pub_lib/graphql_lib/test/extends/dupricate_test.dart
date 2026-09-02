import 'package:flutter_test/flutter_test.dart';
import 'package:gqlib/gqlib.dart';

/// Equal by [key] only, so two distinct instances can be "the same item" for
/// `removeDuplicates` while still carrying different [payload]s - similar to
/// two edited copies of the same IEditModel.
class _KeyedPayload {
  final String key;
  final String payload;
  _KeyedPayload(this.key, this.payload);

  @override
  bool operator ==(Object other) => other is _KeyedPayload && other.key == key;
  @override
  int get hashCode => key.hashCode;
  @override
  String toString() => '_KeyedPayload($key, $payload)';
}

void main() {
  group('removeDuplicates', () {
    test('returns the same list untouched when there are no duplicates', () {
      final result = removeDuplicates(['a', 'b', 'c']);

      expect(result.uniqueList, ['a', 'b', 'c']);
      expect(result.logs, isEmpty);
    });

    test('keeps the first occurrence by default (preferLast: false)', () {
      final result = removeDuplicates(['a', 'b', 'a', 'c', 'b']);

      // Original order is preserved and only the first "a"/"b" survive.
      expect(result.uniqueList, ['a', 'b', 'c']);
      expect(result.logs, hasLength(2));
    });

    test('preferLast only flips which occurrence the logs call "the duplicate"', () {
      // For plain values this looks identical to preferLast: false, because
      // `uniqueList` is rebuilt from `seen.values.toList()..sort()` - i.e. always
      // in ascending original-index order - regardless of which direction found
      // the duplicates.
      final result = removeDuplicates(['a', 'b', 'a', 'c', 'b'], preferLast: true);

      expect(result.uniqueList, ['a', 'b', 'c']);
      expect(result.logs, hasLength(2));
    });

    // NOTE: this looks like the opposite of what `preferLast: true` promises
    // ("後から出てきた重複の方が優先される", see CLAUDE.md / save()'s docs). With a type
    // whose `==` is overridden (so two *different* instances can be "the same"
    // item while still carrying different data - e.g. an edited IEditModel),
    // the instance kept in `uniqueList` is always the *first* one seen, not the
    // last: `seen[item] = i` updates the map's value for the matching key on
    // every duplicate hit, including while walking backwards for preferLast, so
    // the value keeps sliding down to the smallest index instead of settling on
    // the largest one. This test documents that actual (likely unintended)
    // behavior rather than the documented intent.
    test('preferLast keeps the first-seen instance\'s data, not the last, for value-equal-but-distinct items', () {
      final first = _KeyedPayload('id-1', 'first-payload');
      final last = _KeyedPayload('id-1', 'last-payload');

      final result = removeDuplicates([first, last], preferLast: true);

      expect(result.uniqueList, hasLength(1));
      expect(result.uniqueList.single.payload, 'first-payload');
      expect(identical(result.uniqueList.single, first), isTrue);
    });

    test('logs record the item and both the original and duplicate-of index', () {
      final result = removeDuplicates(['x', 'y', 'x'], preferLast: true);

      expect(result.logs, hasLength(1));
      final log = result.logs.single;
      expect(log.item, 'x');
      expect(log.originalIndex, 0);
      expect(log.duplicateOfIndex, 2);
      expect(log.toString(), contains("Item 'x'"));
      expect(log.toString(), contains('index 0'));
      expect(log.toString(), contains('index 2'));
    });

    test('an empty list produces an empty result', () {
      final result = removeDuplicates<String>([]);

      expect(result.uniqueList, isEmpty);
      expect(result.logs, isEmpty);
    });

    test('a list with all-unique items produces no logs regardless of preferLast', () {
      final result = removeDuplicates([1, 2, 3], preferLast: true);

      expect(result.uniqueList, [1, 2, 3]);
      expect(result.logs, isEmpty);
    });
  });
}
