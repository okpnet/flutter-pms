// view.yaml(kind: edit) -> GraphQLミューテーション、および generateRfe: true の読み込み専用クエリ(RFE)の生成。
//
// 規則は source/27_yaml_to_graphql_conversion_rules.md の6-8節・7章・8章、CLAUDE.md 5-5・5-6節に従う。
//   - 監査列(update_at/update_user_id/update_user_history_id/remove)は、Editの引数・Patch・結果に含めない。
//     RFEのルートにだけ含める(0048)。
//   - 表示名・テキストはja/enの両方を必須引数(\$jaLanguageCodeId/\$enLanguageCodeId)で更新・取得する(0036・0048)。
//   - editable: false の子(readを参照)は、親側のFK列だけをPatchに含め、子の中身は書かない(0047)。
//   - editable: true の1対1の子は、入れ子のupdateByで更新する。引数名は、関係の名前(labels・addressは除く)を
//     接頭辞に連ねる(例: ceo + name + Ja -> ceoNameJa)。
//   - 言語別の値を持つ1対多(shared_language_code_idを列に持つ)は、deleteOthers + create(ja/en)で入れ替える。
//   - それ以外の1対多は、PostGraphileの標準の入れ子書き込み型(updateBy/create/deleteBy)をそのまま
//     可変長リストの変数として公開する(\$xxxUpdate/\$xxxCreate/\$xxxDelete)。
// 解釈できない構成(例: 内向きの1対1を入れ子で更新する子)は、エラーとして記録し、そのノードは生成しない。

import 'names.dart';
import 'read_generator.dart';
import 'schema_index.dart';

/// 引数名の接頭辞に含めない関係の名前(呼称のlabels、住所のaddress)。
const _transparentNames = {'labels', 'address'};

class EditResult {
  EditResult(this.edit, this.rfe);
  final String? edit;
  final String? rfe;
}

class EditGenerator {
  EditGenerator(this.schema, this.log, this.sel);
  final SchemaIndex schema;
  final GenLog log;
  final ReadGenerator sel;

  EditResult generate(String name, Map<String, dynamic> node) {
    final before = log.errors.length;
    final dir = directoryOf(name);
    final from = node['from'] as String?;
    if (from == null) {
      log.error(name, '`from`がありません');
      return EditResult(null, null);
    }
    final type = schema.typeOfTable(from);
    final keyCols = [
      for (final w in whereEntries(node['requiredWhere'])) w.column,
    ];
    if (keyCols.isEmpty) {
      log.error(name, 'requiredWhere(更新対象の主キー)がありません');
      return EditResult(null, null);
    }
    final joined = keyCols.map(pascal).join('And');
    final mutName = 'update${type}By$joined';
    final mut = schema.mutation[mutName];
    if (mut == null) {
      log.error(
        name,
        'ミューテーション$mutNameがスキーマにありません。候補: '
        '${schema.mutation.keys.where((k) => k.startsWith('update$type')).join(', ')}',
      );
      return EditResult(null, null);
    }
    final inputType = mut.args['input']!.replaceAll('!', '');
    final inputFields = schema.inputs[inputType]!;
    final patchField = '${lowerFirst(type)}Patch';
    final patchType = inputFields[patchField]?.typeName;
    if (patchType == null) {
      log.error(name, '入力型$inputTypeに$patchFieldがありません');
      return EditResult(null, null);
    }

    // ---- 引数とPatch ----
    final vars = OperationVars();
    final keyLines = <String>[];
    for (final k in keyCols) {
      final f = inputFields[camel(k)];
      if (f == null) {
        log.error(name, '主キー列$kが入力型$inputTypeにありません');
        continue;
      }
      vars.declare(camel(k), f.typeSource.endsWith('!') ? f.typeSource : '${f.typeSource}!');
      keyLines.add('${camel(k)}: \$${camel(k)}');
    }
    final ctx = _Ctx(vars, name);
    final patch = _patch(
      (node['columns'] as List?) ?? const [],
      patchType,
      const [],
      keyCols.toSet(),
      ctx,
      type,
      name,
    );

    // ---- 結果(ミューテーション) ----
    final payload = schema.objects[mut.typeName];
    final resultField = lowerFirst(type);
    if (payload == null || !payload.containsKey(resultField)) {
      log.error(name, 'ペイロード${mut.typeName}に$resultFieldがありません');
      return EditResult(null, null);
    }
    final editBody = sel.selection(node, type, vars, name, mode: SelMode.edit, isRoot: true);

    // ---- RFE ----
    String? rfe;
    if (node['generateRfe'] == true) {
      rfe = _rfe(name, dir, node, type, keyCols, joined);
    }
    if (log.errors.length > before) return EditResult(null, null);

    final b = StringBuffer()
      ..writeln('# $dir画面 - Edit(ミューテーション)')
      ..writeln('#')
      ..writeln('# 画面仕様: source/view.yaml #$name')
      ..writeln('# このファイルはtool/view_graphql(build_runner)が生成した。直接編集しない。')
      ..writeln()
      ..writeln('mutation ${pascal(dir)}Edit(');
    for (final v in vars.lines()) {
      b.writeln('  $v');
    }
    b
      ..writeln(') {')
      ..writeln('  $mutName(')
      ..writeln('    input: {');
    for (final k in keyLines) {
      b.writeln('      $k');
    }
    b.writeln('      $patchField: {');
    for (final l in patch) {
      b.writeln(l.isEmpty ? '' : '        $l');
    }
    b
      ..writeln('      }')
      ..writeln('    }')
      ..writeln('  ) {')
      ..writeln('    $resultField {');
    for (final l in editBody) {
      b.writeln(l.isEmpty ? '' : '      $l');
    }
    b
      ..writeln('    }')
      ..writeln('  }')
      ..writeln('}');
    return EditResult(b.toString(), rfe);
  }

  // ---- RFE ------------------------------------------------------------------

  String? _rfe(String name, String dir, Map<String, dynamic> node, String type, List<String> keyCols, String joined) {
    final qName = '${lowerFirst(type)}By$joined';
    final q = schema.query[qName];
    if (q == null) {
      log.error(name, 'Queryのフィールド$qNameがスキーマにありません(RFE)');
      return null;
    }
    final vars = OperationVars();
    final args = <String>[];
    for (final k in keyCols) {
      final t = q.args[camel(k)];
      if (t == null) {
        log.error(name, 'RFEのQuery$qNameに引数${camel(k)}がありません');
        continue;
      }
      vars.declare(camel(k), t.endsWith('!') ? t : '$t!');
      args.add('${camel(k)}: \$${camel(k)}');
    }
    final body = sel.selection(node, type, vars, name, mode: SelMode.rfe, isRoot: true);
    final b = StringBuffer()
      ..writeln('# $dir画面 - RFE(編集フォームへのプリロード用の読み込み専用クエリ)')
      ..writeln('#')
      ..writeln('# 画面仕様: source/view.yaml #$name(generateRfe: true)')
      ..writeln('# このファイルはtool/view_graphql(build_runner)が生成した。直接編集しない。')
      ..writeln()
      ..writeln('query ${pascal(dir)}Rfe(');
    for (final v in vars.lines()) {
      b.writeln('  $v');
    }
    b.writeln(') {');
    b.writeln('  $qName(${args.join(', ')}) {');
    for (final l in body) {
      b.writeln(l.isEmpty ? '' : '    $l');
    }
    b
      ..writeln('  }')
      ..writeln('}');
    return b.toString();
  }

  // ---- Patch ----------------------------------------------------------------

  /// 引数名: 関係の名前の連なり + 列名(例: [ceo, name] + 'ja' -> ceoNameJa)。
  String _var(List<String> segs, String col) {
    final parts = [for (final s in segs) ...s.split('_'), ...col.split('_')].where((p) => p.isNotEmpty).toList();
    return parts.first + parts.skip(1).map(cap).join();
  }

  List<String> _patch(
    List<dynamic> cols,
    String patchType,
    List<String> segs,
    Set<String> keyCols,
    _Ctx ctx,
    String objectType,
    String path,
  ) {
    final fields = schema.inputs[patchType];
    final lines = <String>[];
    if (fields == null) {
      log.error(path, 'Patch型$patchTypeがスキーマにありません');
      return lines;
    }
    var lastWasRelation = false;
    for (final c in cols) {
      if (c is String) {
        if (auditColumns.contains(c) || keyCols.contains(c)) continue;
        if (c == 'remarks' && noRemarksTypes.contains(objectType)) continue;
        final f = fields[camel(c)];
        if (f == null) {
          log.error('$path.$c', '列$c(${camel(c)})がPatch型$patchTypeにありません');
          continue;
        }
        if (lastWasRelation && lines.isNotEmpty) lines.add('');
        lastWasRelation = false;
        final v = _var(segs, c);
        ctx.vars.declare(v, f.typeSource);
        final line = '${camel(c)}: \$$v';
        if (!lines.contains(line)) lines.add(line);
        continue;
      }
      final e = (c as Map).cast<String, dynamic>();
      final p = '$path.${e['name']}';
      final block = _relationPatch(e, patchType, segs, ctx, p, objectType);
      if (block == null) continue;
      // 同じPatchのフィールドが重複する場合(列と、editable: falseの子のFK列など)は1つにする。
      if (block.length == 1 && lines.contains(block.single)) continue;
      if (lines.isNotEmpty && lines.last.isNotEmpty) lines.add('');
      lines.addAll(block);
      lastWasRelation = true;
    }
    return lines;
  }

  List<String>? _relationPatch(
    Map<String, dynamic> e,
    String patchType,
    List<String> segs,
    _Ctx ctx,
    String path,
    String parentObjectType,
  ) {
    final fields = schema.inputs[patchType]!;
    final from = e['from'] as String?;
    final using = e['using'] == null
        ? <String>[]
        : e['using'] is List
            ? (e['using'] as List).cast<String>()
            : [e['using'] as String];
    final arrayType = e['arrayType'];
    final name = e['name'] as String;

    if (from == null && arrayType == null) {
      // 別名つきのスカラー列
      final f = fields[camel(name)];
      if (f == null) {
        log.error(path, '列$name(${camel(name)})がPatch型$patchTypeにありません');
        return null;
      }
      final v = _var(segs, name);
      ctx.vars.declare(v, f.typeSource);
      return ['${camel(name)}: \$$v'];
    }
    if (from == null) {
      log.error(path, '`from`がありません(共有定義の取り込み漏れの疑い)');
      return null;
    }
    final childType = schema.typeOfTable(from);

    // 1) readを参照する子(editable: false): 親側のFK列だけを書く。
    final readRef = e['editable'] == false || e['kind'] == 'read';
    if (readRef) {
      if (using.isEmpty) {
        log.error(path, 'editable: falseの子には、親側のFK列を示すusingが必要です');
        return null;
      }
      final out = <String>[];
      for (final u in using) {
        final f = fields[camel(u)];
        if (f == null) {
          log.error(path, 'FK列$u(${camel(u)})がPatch型$patchTypeにありません');
          return null;
        }
        final v = _var(segs, u);
        ctx.vars.declare(v, f.typeSource);
        out.add('${camel(u)}: \$$v');
      }
      return out;
    }

    final cols = (e['columns'] as List?) ?? const [];
    final segs2 = _transparentNames.contains(name) ? segs : [...segs, name];

    if (arrayType == 'toFirstOne') {
      // 2) 外向きの1対1: 入れ子のupdateBy
      if (using.isEmpty) {
        log.error(path, 'usingがありません');
        return null;
      }
      final relField = '${lowerFirst(childType)}To${using.map(pascal).join('And')}';
      final rel = fields[relField];
      if (rel == null) {
        log.error(
          path,
          '$patchTypeに$relFieldがありません。内向きの1対1(子がFKを持つ)をeditable: trueで入れ子更新する構成は未対応です',
        );
        return null;
      }
      final pk = schema.primaryKeyField(childType);
      if (pk == null) {
        log.error(path, '$childTypeの主キーを特定できません');
        return null;
      }
      final updName = 'updateBy${cap(pk)}';
      final upd = schema.inputs[rel.typeName]?[updName];
      if (upd == null) {
        log.error(path, '${rel.typeName}に$updNameがありません');
        return null;
      }
      final updInput = schema.inputs[upd.typeName]!;
      final childPatchField = updInput.keys.firstWhere((k) => k.endsWith('Patch'), orElse: () => '');
      if (childPatchField.isEmpty) {
        log.error(path, '${upd.typeName}にPatchがありません');
        return null;
      }
      final pkVar = _var(segs2, snake(pk));
      ctx.vars.declare(pkVar, 'UUID!');
      final pkCols = <String>{
        for (final c in cols)
          if (c is String && camel(c) == pk) c,
        for (final w in whereEntries(e['requiredWhere'])) w.column,
      };
      final inner = _patch(cols, updInput[childPatchField]!.typeName, segs2, pkCols, ctx, childType, path);
      return [
        '$relField: {',
        '  $updName: {',
        '    $pk: \$$pkVar',
        '    $childPatchField: {',
        for (final l in inner) l.isEmpty ? '' : '      $l',
        '    }',
        '  }',
        '}',
      ];
    }

    if (arrayType == 'toMany') {
      // 3) 1対多
      final candidates = [
        for (final f in fields.values)
          if (f.name.startsWith(lowerFirst(childType)) &&
              f.typeName.endsWith('InverseInput') &&
              (using.isEmpty || f.name.endsWith('Using${using.map(pascal).join('And')}')))
            f,
      ];
      if (candidates.length != 1) {
        log.error(
          path,
          '$patchTypeから$childTypeの入れ子書き込み(…Using…)を一意にできません: '
          '${candidates.map((f) => f.name).join(', ')}',
        );
        return null;
      }
      final inv = candidates.single;
      final invFields = schema.inputs[inv.typeName]!;

      if (cols.contains('shared_language_code_id')) {
        // 言語別の値: deleteOthers + create(ja/en)
        final valueCol = [
          for (final x in cols)
            if (x is String &&
                x != 'shared_language_code_id' &&
                x != 'remarks' &&
                !auditColumns.contains(x) &&
                camel(x) != schema.primaryKeyField(childType))
              x,
        ];
        final fk = schema.languageForeignKey(childType);
        if (valueCol.isEmpty || fk == null || !invFields.containsKey('create')) {
          log.error(path, '言語別の値の書き込みを組み立てられません($childType)');
          return null;
        }
        ctx.vars
          ..declare('jaLanguageCodeId', 'UUID!')
          ..declare('enLanguageCodeId', 'UUID!');
        final vJa = _var(segs, 'ja');
        final vEn = _var(segs, 'en');
        ctx.vars
          ..declare(vJa, 'String!')
          ..declare(vEn, 'String!');
        final vc = camel(valueCol.first);
        return [
          '${inv.name}: {',
          '  deleteOthers: true',
          '  create: [',
          '    { $fk: \$jaLanguageCodeId, $vc: \$$vJa }',
          '    { $fk: \$enLanguageCodeId, $vc: \$$vEn }',
          '  ]',
          '}',
        ];
      }

      final pk = schema.primaryKeyField(childType);
      if (pk == null) {
        log.error(path, '$childTypeの主キーを特定できません');
        return null;
      }
      final upd = invFields['updateBy${cap(pk)}'];
      final del = invFields['deleteBy${cap(pk)}'];
      final cre = invFields['create'];
      if (upd == null || del == null || cre == null) {
        log.error(path, '${inv.typeName}にupdateBy${cap(pk)}/create/deleteBy${cap(pk)}がありません');
        return null;
      }
      final base = _var(segs2, '');
      ctx.vars
        ..declare('${base}Update', upd.typeSource)
        ..declare('${base}Create', cre.typeSource)
        ..declare('${base}Delete', del.typeSource);
      return [
        '${inv.name}: {',
        '  updateBy${cap(pk)}: \$${base}Update',
        '  create: \$${base}Create',
        '  deleteBy${cap(pk)}: \$${base}Delete',
        '}',
      ];
    }

    log.error(path, 'arrayTypeが不明です($arrayType)');
    return null;
  }
}

class _Ctx {
  _Ctx(this.vars, this.root);
  final OperationVars vars;
  final String root;
}
