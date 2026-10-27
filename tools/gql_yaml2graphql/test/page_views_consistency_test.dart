// page.md(ページの定義)と、packages/model_providers/*/gql(画面仕様)、全量スキーマの整合を検証する(要件0055の完了条件)。
//
//   1) page.mdの`[ノード名]`は、すべてviewsのトップノードに存在する。
//   2) viewsのトップノード(~Page・~PageEdit・~ReadFields・~EditFields)は、すべてpage.mdから参照されている。
//   3) サフィックス(台帳・体系・項目・明細=read、情報・登録=edit)と、参照先のkindが一致する。
//   4) 参照の無い項目は、`<!--DB要: ...-->`の付いた項目(またはその配下)に限る。
//   5) viewsからGraphQLを生成したときに、スキーマとの不整合(エラー)が無い。
//   6) 親の~Pageに、子のレコード数(v_*_count、要件0056)の列が含まれる。
//
// 本家スキーマ(.schema/schema.graphql、git対象外)が無い環境では、5)だけ省略する。

import 'dart:io';

import 'package:test/test.dart';

import 'package:gql_yaml2graphql/src/generator.dart';
import 'package:gql_yaml2graphql/src/schema_index.dart';
import 'package:gql_yaml2graphql/src/view_sources.dart';
import 'package:gql_yaml2graphql/src/root_runner.dart';

const _root = '../../packages/model_providers';

const _readSuffixes = ['台帳', '体系', '項目', '明細'];
const _editSuffixes = ['情報', '登録'];

class _Item {
  _Item(this.line, this.indent, this.name, this.refs, this.raw, this.isPage);
  /// `+`の項目(ページ)か。`1.`は小分類名(参照を持たなくてよい)。
  final bool isPage;
  final int line;
  final int indent;
  final String name;
  final List<String> refs;
  final String raw;
}

List<_Item> _parsePage(String text) {
  final items = <_Item>[];
  final lines = text.split(RegExp(r'\r?\n'));
  // 定義の節(### 箇条書きの定義まで)は、項目ではない。
  var inItems = false;
  for (var i = 0; i < lines.length; i++) {
    final l = lines[i];
    if (l.startsWith('##  共通')) inItems = true;
    if (!inItems) continue;
    final m = RegExp(r'^(\s*)(\+|\d+\.)\s+(.*)$').firstMatch(l);
    if (m == null) continue;
    final raw = m[3]!;
    final body = raw.replaceAll(RegExp(r'<!--.*?-->'), '').trim();
    final r = RegExp(r'^([^\[]*)(?:\[([^\]]*)\])?').firstMatch(body)!;
    items.add(_Item(
      i + 1,
      m[1]!.length,
      r[1]!.trim(),
      (r[2] ?? '').split(',').map((e) => e.trim()).where((e) => e.isNotEmpty).toList(),
      raw,
      m[2] == '+',
    ));
  }
  return items;
}

void main() {
  final views = combineViewSources(readRootYaml(_root)).load();
  final nodes = <String, Map<String, dynamic>>{
    for (final e in views.entries)
      if (e.value is Map<String, dynamic>) e.key: e.value as Map<String, dynamic>,
  };
  final items = _parsePage(File('doc/page.md').readAsStringSync());

  test('page.mdの参照は、すべてviewsのトップノードに存在する', () {
    final missing = [
      for (final it in items)
        for (final r in it.refs)
          if (!nodes.containsKey(r)) '${it.line}行 ${it.name} -> $r',
    ];
    expect(missing, isEmpty, reason: missing.join('\n'));
  });

  test('viewsのトップノードは、すべてpage.mdから参照されている', () {
    final referenced = {for (final it in items) ...it.refs};
    final unreferenced = [
      for (final k in nodes.keys)
        if (!referenced.contains(k)) k,
    ];
    expect(unreferenced, isEmpty, reason: unreferenced.join(', '));
  });

  test('サフィックスと、参照先のkindが一致する', () {
    final bad = <String>[];
    for (final it in items) {
      final isRead = _readSuffixes.any(it.name.endsWith);
      final isEdit = _editSuffixes.any(it.name.endsWith);
      for (final r in it.refs) {
        final kind = nodes[r]?['kind'];
        if (isRead && kind != 'read') bad.add('${it.line}行 ${it.name}(read) -> $r は kind:$kind');
        if (isEdit && kind != 'edit') bad.add('${it.line}行 ${it.name}(edit) -> $r は kind:$kind');
      }
    }
    expect(bad, isEmpty, reason: bad.join('\n'));
  });

  test('参照の無い項目は、DB要の項目(またはその配下)に限る', () {
    final orphans = <String>[];
    for (var i = 0; i < items.length; i++) {
      final it = items[i];
      final hasSuffix = [..._readSuffixes, ..._editSuffixes].any(it.name.endsWith);
      if (!it.isPage || !hasSuffix || it.refs.isNotEmpty || it.name.startsWith('取込')) continue;
      // 同じ行、または祖先の項目に`DB要`があるか。
      var ok = it.raw.contains('DB要');
      var indent = it.indent;
      for (var j = i - 1; j >= 0 && !ok; j--) {
        if (items[j].indent < indent) {
          indent = items[j].indent;
          if (items[j].raw.contains('DB要')) ok = true;
        }
      }
      if (!ok) orphans.add('${it.line}行 ${it.name}');
    }
    expect(orphans, isEmpty, reason: orphans.join('\n'));
  });

  group('スキーマとの整合', () {
    final schemaFile = File('../../.schema/schema.graphql');
    final available = schemaFile.existsSync();
    test('viewsからGraphQLを生成したときのエラーが0件(共通定義の検証を含む)', () {
      final combined = combineViewSources(readRootYaml(_root));
      final result = generateAll(viewYaml: combined.text, schemaPath: schemaFile.path);
      expect(result.log.errors, isEmpty, reason: result.log.errors.join('\n'));
      expect(result.files, isNotEmpty);
    }, skip: available ? false : '全量スキーマ(../../.schema/schema.graphql)がありません');

    test('子のレコード数(v_*_count)が、親の~Pageに含まれる(要件0056)', () {
      final schema = SchemaIndex.load(schemaFile.path);
      final views = combineViewSources(readRootYaml(_root)).load();
      // 列(columns)を再帰的にたどり、from: v_*_count のビュー名を集める。
      Set<String> countViews(dynamic node) {
        final out = <String>{};
        if (node is Map) {
          final from = node['from'];
          if (from is String && RegExp(r'^v_\w+_count$').hasMatch(from)) out.add(from);
          for (final c in (node['columns'] as List? ?? const [])) {
            if (c is Map) {
              final f = c['from'];
              if (f is String && RegExp(r'^v_\w+_count$').hasMatch(f)) out.add(f);
            }
          }
        }
        return out;
      }

      String typeOfView(String view) =>
          view.split('_').map((w) => w.isEmpty ? w : w[0].toUpperCase() + w.substring(1)).join();

      final missing = <String>[];
      var checked = 0;
      for (final e in views.entries) {
        final node = e.value;
        if (node is! Map || node['kind'] != 'read' || !e.key.endsWith('Page') || node['from'] == null) continue;
        final type = schema.typeOfTable(node['from'] as String);
        final fields = schema.objects[type] ?? const <String, FieldInfo>{};
        // 親が1行ずつ持つ集計(単数の関連)。例: InfoCompany.vCompanyDepartmentCountByInfoCompanyId
        final expected = {
          for (final f in fields.values)
            if (!f.isList && RegExp(r'^V\w+Count$').hasMatch(f.typeName)) f.typeName,
        };
        final actual = {for (final v in countViews(node)) typeOfView(v)};
        for (final t in expected) {
          checked++;
          if (!actual.contains(t)) missing.add('${e.key}: $t');
        }
      }
      expect(checked, greaterThan(0));
      expect(missing, isEmpty, reason: missing.join('\n'));
    }, skip: available ? false : '全量スキーマ(../../.schema/schema.graphql)がありません');

    test('defaultWhereの固定条件(remove以外)が、フィルタに反映される', () {
      final combined = combineViewSources(readRootYaml(_root));
      final result = generateAll(
        viewYaml: combined.text,
        schemaPath: schemaFile.path,
        only: 'CustomerPage',
      );
      final text = result.files['customer_page/customer_page_read.graphql']!;
      expect(text, contains('{ isCustomer: { equalTo: true } }'));
    }, skip: available ? false : '全量スキーマ(../../.schema/schema.graphql)がありません');
  });
}
