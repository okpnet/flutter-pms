import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quality_document/quality_document.dart';

void main() {
  testWidgets('メニューは「運用と改善」。文書・文書コンテンツはマニュアルに統合したため出さない', (tester) async {
    late List<MenuEntry> entries;
    await tester.pumpWidget(
      ProviderScope(
        child: Consumer(
          builder: (context, ref, _) {
            entries = const QualityDocumentModule().menuEntries(ref);
            return const SizedBox();
          },
        ),
      ),
    );
    final keys = [for (final e in entries) (e.destination as EntityListDestination).entityKey];
    expect(keys, isNot(contains('doctier')));
    expect(keys, isNot(contains('report')));
    expect(keys, isNot(contains('doc')));
    expect(keys, isNot(contains('doccontent')));
    expect(entries.map((e) => e.groupId).toSet().difference({operationsMenuGroupId}), isEmpty);
  });
}
