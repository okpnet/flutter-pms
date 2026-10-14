// view.yaml(kind: read) -> GraphQLクエリの生成。
//
// 規則は source/27_yaml_to_graphql_conversion_rules.md と CLAUDE.md 5章に従う。
// 全量スキーマ(SchemaIndex)から、関連の向き・フィールド名・型を求める。
// 解決できない箇所はGenLogにエラーとして記録し、そのノードは生成しない(5-7節)。

import 'names.dart';
import 'schema_index.dart';

class GenLog {
  final errors = <String>[];
  final warnings = <String>[];
  void error(String path, String message) => errors.add('$path: $message');
  void warn(String path, String message) => warnings.add('$path: $message');
}

/// 1つの操作(query)を組み立てるときの変数の宣言(宣言順を保つ)。
class OperationVars {
  final _vars = <String, String>{};
  void declare(String name, String type) => _vars.putIfAbsent(name, () => type);
  bool has(String name) => _vars.containsKey(name);
  void declareFirst(String name, String type) {
    final copy = Map<String, String>.of(_vars);
    _vars
      ..clear()
      ..[name] = type
      ..addAll(copy);
  }

  /// 末尾へ移す(宣言済みの場合)。
  void moveToEnd(String name) {
    final t = _vars.remove(name);
    if (t != null) _vars[name] = t;
  }

  List<String> lines() => [for (final e in _vars.entries) '\$${e.key}: ${e.value}'];
}

/// 選択セットの組み立て方。
/// - jaen: 表示言語を$jaLanguageCodeId/$enLanguageCodeId(ja/en両方)で取得する(edit・RFE、5-5節)
/// - editShape: editのツリー(監査列を除く、言語別の値はja/enの別名、1対多はコネクション)
/// - keepAudit: ルートの監査列を含める(RFE)
class SelMode {
  const SelMode({this.jaen = false, this.editShape = false, this.keepAudit = false});
  final bool jaen;
  final bool editShape;
  final bool keepAudit;
  static const read = SelMode();
  static const readJaEn = SelMode(jaen: true);
  static const edit = SelMode(jaen: true, editShape: true);
  static const rfe = SelMode(jaen: true, editShape: true, keepAudit: true);
}

/// 備考(remarks)を取得・更新の対象にしない型(呼称・辞書・テキストは、親の備考とは別に持たない)。
const noRemarksTypes = {'SharedAppellation', 'SharedDictionary', 'SharedText'};

const auditColumns = ['update_at', 'update_user_id', 'update_user_history_id', 'remove'];

class _Rel {
  _Rel(this.field, this.isConnection);
  final FieldInfo field;
  final bool isConnection;
}

class ReadGenerator {
  ReadGenerator(this.schema, this.log);
  final SchemaIndex schema;
  final GenLog log;

  /// ノード`name`(kind: read)のクエリを返す。エラーがあれば`null`。
  String? generate(String name, Map<String, dynamic> node) {
    final path = name;
    final errorsBefore = log.errors.length;
    final dir = directoryOf(name);
    final op = '${pascal(dir)}Read';
    final from = node['from'] as String?;
    if (from == null) {
      log.error(path, '`from`がありません');
      return null;
    }
    final type = schema.typeOfTable(from);
    final root = schema.rootConnection(type);
    if (root == null) {
      log.error(path, '型$typeの一覧を返すQueryのルートがスキーマにありません(テーブル$from)');
      return null;
    }

    final vars = OperationVars()
      ..declare('first', 'Int!')
      ..declare('offset', 'Int');
    final hasFilter = node['filter'] == true;
    if (hasFilter) vars.declare('filter', '${root.filterType} = {}');
    vars.declare('orderBy', '[${root.orderByType}!] = [PRIMARY_KEY_ASC]');

    // ルートのrequiredWhere。languageCodeは表示言語(5-5節)、それ以外は必須の絞り込み。
    final rootAnd = <String>[];
    for (final rw in whereEntries(node['requiredWhere'])) {
      if (rw.column == 'languageCode') {
        vars.declare('languageCodeId', 'UUID!');
        continue;
      }
      final scalar = schema.field(type, camel(rw.column));
      if (scalar == null) {
        log.error(path, 'requiredWhereの列${rw.column}が$typeにありません');
        continue;
      }
      final v = camel(rw.alias ?? rw.column);
      vars.declare(v, scalar.typeSource.endsWith('!') ? scalar.typeSource : '${scalar.typeSource}!');
      rootAnd.add('{ ${camel(rw.column)}: { equalTo: \$$v } }');
    }

    final defaultRemove = _hasRemoveGuard(node);
    final body = _selection(node, type, vars, path, isRoot: true);
    if (defaultRemove) vars.declare('removed', 'Boolean = false');
    vars.moveToEnd('removed');

    if (log.errors.length > errorsBefore) return null;

    final filterParts = <String>[
      if (defaultRemove) '{ remove: { equalTo: \$removed } }',
      ...rootAnd,
      if (hasFilter) '\$filter',
    ];
    final filterArg = filterParts.isEmpty
        ? null
        : filterParts.length == 1 && !hasFilter
            ? 'filter: ${filterParts.single}'
            : 'filter: { and: [${filterParts.join(', ')}] }';

    final b = StringBuffer()
      ..writeln('# $dir画面 - Read(一覧取得クエリ)')
      ..writeln('#')
      ..writeln('# 画面仕様: source/view.yaml #$name')
      ..writeln('# このファイルはtool/view_graphql(build_runner)が生成した。直接編集しない。')
      ..writeln()
      ..writeln('query $op(');
    for (final v in vars.lines()) {
      b.writeln('  $v');
    }
    b
      ..writeln(') {')
      ..writeln('  ${root.field}(')
      ..writeln('    first: \$first')
      ..writeln('    offset: \$offset')
      ..writeln('    orderBy: \$orderBy');
    if (filterArg != null) b.writeln('    $filterArg');
    b
      ..writeln('  ) {')
      ..writeln('    totalCount')
      ..writeln('    pageInfo {')
      ..writeln('      hasNextPage')
      ..writeln('      endCursor')
      ..writeln('    }')
      ..writeln('    nodes {');
    for (final l in body) {
      b.writeln(l.isEmpty ? '' : '      $l');
    }
    b
      ..writeln('    }')
      ..writeln('  }')
      ..writeln('}');
    return b.toString();
  }

  // ---- 選択セット -----------------------------------------------------------

  List<String> selection(
    Map<String, dynamic> node,
    String type,
    OperationVars vars,
    String path, {
    SelMode mode = SelMode.read,
    bool isRoot = false,
    bool forcePk = false,
  }) =>
      _selection(node, type, vars, path, mode: mode, isRoot: isRoot, forcePk: forcePk);

  List<String> _selection(
    Map<String, dynamic> node,
    String type,
    OperationVars vars,
    String path, {
    SelMode mode = SelMode.read,
    bool isRoot = false,
    bool forcePk = false,
  }) {
    final cols = <dynamic>[...((node['columns'] as List?) ?? const [])];
    if (mode.keepAudit && isRoot) {
      for (final a in auditColumns) {
        if (!cols.contains(a)) cols.add(a);
      }
    }
    final pick = (node['pick'] as List?)?.cast<String>();
    final guard = _hasRemoveGuard(node);
    if (guard && cols.contains('update_at') && !cols.contains('remove')) {
      cols.insert(cols.indexOf('update_at') + 1, 'remove');
    }
    final out = <String>[];
    var lastWasRelation = false;
    for (final c in cols) {
      final outName = c is String ? c : ((c as Map)['as'] ?? c['name']) as String;
      if (pick != null && !pick.contains(outName)) continue;
      if (c is Map && c['output'] == false) continue;
      if (c is String) {
        if (mode.editShape && auditColumns.contains(c) && !(mode.keepAudit && isRoot)) continue;
        if (mode.editShape && c == 'remarks' && noRemarksTypes.contains(type)) continue;
        final f = schema.field(type, camel(c));
        if (f == null) {
          log.error('$path.$c', '列$c(${camel(c)})が型$typeにありません');
          continue;
        }
        if (lastWasRelation && out.isNotEmpty) out.add('');
        lastWasRelation = false;
        if (schema.hasObject(f.typeName)) {
          // Intervalなど、オブジェクト型の列は、構成する値をすべて選択する。
          out.addAll(schema.expandObjectColumn(camel(c), f.typeName));
        } else {
          out.add(camel(c));
        }
        continue;
      }
      final entry = (c as Map).cast<String, dynamic>();
      final p = '$path.${entry['name']}';
      if (entry['arrayType'] == null && entry['from'] == null) {
        // 別名つきのスカラー列
        final col = entry['name'] as String;
        if (schema.field(type, camel(col)) == null) {
          log.error(p, '列$col(${camel(col)})が型$typeにありません');
          continue;
        }
        out.add(outName == camel(col) ? camel(col) : '$outName: ${camel(col)}');
        continue;
      }
      final block = _relation(entry, type, vars, p, mode);
      if (block == null) continue;
      // editのツリー内で、readを参照する子(editable: false)は、親側のFK列も取得する(IDの割り当て結果を返す)。
      if (mode.editShape && (entry['editable'] == false || entry['kind'] == 'read')) {
        final usingCols = entry['using'] == null
            ? <String>[]
            : entry['using'] is List
                ? (entry['using'] as List).cast<String>()
                : [entry['using'] as String];
        for (final u in usingCols) {
          final fkField = camel(u);
          if (schema.field(type, fkField) != null && !out.contains(fkField)) {
            out.add(fkField);
          }
        }
      }
      if (out.isNotEmpty && out.last.isNotEmpty) out.add('');
      out.addAll(block);
      lastWasRelation = true;
    }
    if (forcePk) {
      final pk = schema.primaryKeyField(type);
      if (pk != null && !out.contains(pk)) out.insert(0, pk);
    }
    return out;
  }

  List<String>? _relation(
    Map<String, dynamic> e,
    String parentType,
    OperationVars vars,
    String path,
    SelMode mode,
  ) {
    final from = e['from'] as String?;
    if (from == null) {
      log.error(path, '`from`がありません(共有定義の取り込み漏れの疑い)');
      return null;
    }
    final childType = schema.typeOfTable(from);
    if (!schema.hasObject(childType)) {
      log.error(path, 'テーブル$from(型$childType)がスキーマにありません');
      return null;
    }
    final rel = _resolve(parentType, childType, e, path);
    if (rel == null) return null;

    final isMany = e['arrayType'] == 'toMany';
    final outName = (e['as'] ?? e['name']) as String;
    // 共有辞書(shared_appellations配下のshared_dictionary)の別名は付けない
    // (平坦化キー`...||sharedDictionaryBySharedDictionaryNameId||...`が安定するため。既存の生成物と同じ)。
    final noAlias = parentType == 'SharedAppellation' && childType == 'SharedDictionary';
    final fieldName = rel.field.name;
    String headOf(String? alias) => alias != null
        ? '$alias: $fieldName'
        : (noAlias || outName == fieldName) ? fieldName : '$outName: $fieldName';

    // editのツリー内で、readを参照する子(editable: false)は、readと同じ形(言語はja/en)で取得する。
    final readRef = mode.editShape && (e['editable'] == false || e['kind'] == 'read');
    final childMode = readRef ? SelMode.readJaEn : mode;
    final nodeType = rel.isConnection ? schema.connectionNodeType[rel.field.typeName]! : childType;
    final cols = (e['columns'] as List?) ?? const [];

    // 言語別の値を持つ1対多(shared_language_code_idを列に持つ)は、ja/enの2つの取得にする。
    final langCol = childMode.editShape && isMany && cols.contains('shared_language_code_id');
    final lines = <String>[];

    void block(String head, List<String> args, List<String> inner) {
      if (args.isEmpty) {
        lines.add('$head {');
      } else if (args.length == 1 && args.single.length < 40) {
        lines.add('$head(${args.single}) {');
      } else {
        lines.add('$head(');
        for (final a in args) {
          lines.add('  $a');
        }
        lines.add(') {');
      }
      if (rel.isConnection) {
        if (isMany && !langCol) {
          lines
            ..add('  totalCount')
            ..add('  pageInfo {')
            ..add('    hasNextPage')
            ..add('    endCursor')
            ..add('  }');
        }
        lines.add('  nodes {');
        for (final l in inner) {
          lines.add(l.isEmpty ? '' : '    $l');
        }
        lines.add('  }');
      } else {
        for (final l in inner) {
          lines.add(l.isEmpty ? '' : '  $l');
        }
      }
      lines.add('}');
    }

    if (langCol) {
      final fk = schema.languageForeignKey(nodeType);
      final valueCols = <String>[
        for (final c in cols)
          if (c is String &&
              c != 'shared_language_code_id' &&
              c != 'remarks' &&
              !auditColumns.contains(c) &&
              camel(c) != schema.primaryKeyField(nodeType))
            camel(c),
      ];
      if (fk == null || valueCols.isEmpty) {
        log.error(path, '言語別の値の取得を組み立てられません($nodeTypeに言語のFKまたは値の列がありません)');
        return null;
      }
      for (final lang in ['ja', 'en']) {
        vars.declare('${lang}LanguageCodeId', 'UUID!');
        block(headOf(lang), ['condition: { $fk: \$${lang}LanguageCodeId }'], valueCols);
        if (lang == 'ja') lines.add('');
      }
      return lines;
    }

    List<String> argsFor(String? lang) {
      final args = <String>[];
      if (rel.isConnection) {
        final conds = _languageConditions(e, nodeType, vars, path, lang);
        if (conds.isNotEmpty) args.add('condition: { ${conds.join(', ')} }');
        if (isMany) {
          if (e['pagination'] == true) {
            final base = camel(outName);
            args.add('first: \$${base}First');
            args.add('offset: \$${base}Offset');
            vars.declare('${base}First', 'Int${e['limit'] != null ? ' = ${e['limit']}' : ''}');
            vars.declare('${base}Offset', 'Int = ${e['offset'] ?? 0}');
          } else if (childMode.editShape) {
            // editのツリー内の1対多の件数は引数で受け取る。引数が無ければ30件(CLAUDE.md 5-6節)。
            final base = camel(outName);
            args.add('first: \$${base}First');
            vars.declare('${base}First', 'Int = ${e['limit'] ?? 30}');
          } else if (e['limit'] != null) {
            args.add('first: ${e['limit']}');
          }
          if (cols.contains('sequence') && schema.hasOrderBy(nodeType, 'SEQUENCE_ASC')) {
            args.add('orderBy: SEQUENCE_ASC');
          }
          if (_hasRemoveGuard(e)) {
            args.add('filter: { remove: { equalTo: false } }');
          }
        } else if (conds.isEmpty) {
          args.add('first: 1');
        }
      }
      return args;
    }

    final hasLang = rel.isConnection && cols.any((c) => c is Map && c['output'] == false && c['from'] != null);
    if (childMode.jaen && hasLang) {
      for (final lang in ['ja', 'en']) {
        block(headOf(lang), argsFor(lang),
            _selection(e, nodeType, vars, path, mode: childMode, forcePk: !rel.isConnection));
        if (lang == 'ja') lines.add('');
      }
    } else {
      block(headOf(null), argsFor(null),
          _selection(e, nodeType, vars, path, mode: childMode, forcePk: !rel.isConnection));
    }
    return lines;
  }

  /// 関連のフィールドを求める。`using`は、親側のFK列(外向き)か、子側のFK列(内向き)。
  _Rel? _resolve(String parentType, String childType, Map<String, dynamic> e, String path) {
    final using = e['using'] == null
        ? <String>[]
        : e['using'] is List
            ? (e['using'] as List).cast<String>()
            : [e['using'] as String];
    final singles = schema.singleFields(parentType, childType);
    final conns = schema.connectionFields(parentType, childType);
    final all = [
      for (final f in singles) _Rel(f, false),
      for (final f in conns) _Rel(f, true),
    ];
    List<_Rel> hits;
    if (using.isEmpty) {
      hits = all;
    } else {
      final joined = using.map(pascal).join('And');
      hits = all.where((r) => r.field.name.endsWith('By$joined')).toList();
      if (hits.isEmpty) {
        hits = all.where((r) => r.field.name.endsWith(joined)).toList();
        if (hits.isNotEmpty) {
          log.warn(path, 'usingの$joinedは完全一致せず、${hits.map((r) => r.field.name).join(', ')}の末尾一致で解決しました');
        }
      }
    }
    if (hits.length > 1) {
      // arrayTypeに合わせる。toManyはコネクション、toFirstOneは単数のフィールドを優先する。
      final wantConnection = e['arrayType'] == 'toMany';
      final preferred = hits.where((r) => r.isConnection == wantConnection).toList();
      if (preferred.length == 1) hits = preferred;
    }
    if (hits.length > 1) {
      final live = hits.where((r) => !r.field.deprecated).toList();
      if (live.isNotEmpty) hits = live;
    }
    if (hits.length != 1) {
      log.error(
        path,
        hits.isEmpty
            ? '$parentTypeから$childTypeへの関連が見つかりません(using: ${using.isEmpty ? '省略' : using.join(', ')})。'
                '候補: ${all.map((r) => r.field.name).join(', ')}'
            : '$parentTypeから$childTypeへの関連が複数あります(usingで一意にしてください): '
                '${hits.map((r) => r.field.name).join(', ')}',
      );
      return null;
    }
    return hits.single;
  }

  /// `output: false`の子(例: 表示言語の絞り込み)を、コネクションの`condition`に変換する(4-1節)。
  List<String> _languageConditions(
    Map<String, dynamic> e,
    String nodeType,
    OperationVars vars,
    String path,
    String? lang,
  ) {
    final out = <String>[];
    for (final c in (e['columns'] as List?) ?? const []) {
      if (c is! Map || c['output'] != false) continue;
      final from = c['from'] as String?;
      if (from == null) continue;
      final target = schema.typeOfTable(from);
      final using = c['using'] == null
          ? <String>[]
          : c['using'] is List
              ? (c['using'] as List).cast<String>()
              : [c['using'] as String];
      var singles = schema.singleFields(nodeType, target);
      if (using.isNotEmpty) {
        final joined = using.map(pascal).join('And');
        singles = singles.where((f) => f.name.endsWith('By$joined')).toList();
      }
      if (singles.length != 1) {
        log.error('$path.${c['name']}', '絞り込み用の関連($nodeType→$target)を一意にできません');
        continue;
      }
      final fk = lowerFirst(singles.single.name.split('By').last);
      for (final w in [
        ...whereEntries(c['requiredWhere']).map((x) => (x, true)),
        ...whereEntries(c['where']).map((x) => (x, false)),
      ]) {
        final base = camel(w.$1.alias ?? w.$1.column);
        final v = lang == null ? '${base}Id' : '$lang${cap(base)}Id';
        vars.declare(v, w.$2 ? 'UUID!' : 'UUID');
        out.add('$fk: \$$v');
      }
    }
    return out;
  }

  bool _hasRemoveGuard(Map<String, dynamic> node) {
    for (final d in (node['defaultWhere'] as List?) ?? const []) {
      if (d is Map && d['column'] == 'remove') return true;
    }
    return false;
  }
}

class WhereEntry {
  WhereEntry(this.column, this.alias);
  final String column;
  final String? alias;
}

List<WhereEntry> whereEntries(dynamic v) => [
      for (final x in (v as List?) ?? const [])
        if (x is String) WhereEntry(x, null) else WhereEntry((x as Map)['column'] as String, x['as'] as String?),
    ];
