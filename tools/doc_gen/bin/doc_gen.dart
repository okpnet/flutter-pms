// 各ライブラリの doc/SRS.md(ソフトウェア要求仕様)・doc/SDD.md(ソフトウェア設計記述)を生成する。
//
// 使い方(リポジトリのルートで): dart run tools/doc_gen/bin/doc_gen.dart [--only=<パッケージ名>] [--dry]
//
// 材料は、ライブラリのソース(公開している型・ドキュメントコメント・デザインパターンの記述)、pubspec(依存)、
// 利用元(ワークスペースのほかの pubspec)、CLAUDE.md(目的・仕様の要点)、テスト(確認項目)。
// 使われていないライブラリ(利用元が無い)は、文書を作らず、一覧に出す(削除の対象。Issue に記録する)。
// 手で足す内容は `<!-- manual:begin -->` と `<!-- manual:end -->` の間に書く(再生成しても残る)。
import 'dart:io';

const manualBegin = '<!-- manual:begin -->';
const manualEnd = '<!-- manual:end -->';
const generatedNote =
    '> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。'
    '手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。';

/// パッケージ 1 件の材料。
class Pkg {
  Pkg(this.dir, this.layer);
  final Directory dir;
  final String
  layer; // core / features / foundation / infra / model_providers / ui
  late String name;
  String description = '';
  bool hasPubspec = true;
  bool flutter = false;
  List<String> deps = [];
  List<String> devDeps = [];
  List<Dependent> dependents = [];
  List<Decl> api = [];
  List<String> reexports = [];
  List<GqlNode> gql = [];
  List<Pattern> patterns = [];
  List<TestFile> tests = [];
  List<Heading> notes = [];
  String claudeSummary = '';
  List<String> srcDirs = [];
  int dartFiles = 0;
  bool hasSlang = false;
  bool hasExample = false;
  bool usesLogger = false;
  int docContents = 0;

  String get path => dir.path.replaceAll('\\', '/');
  bool get used =>
      dependents.any((d) => !d.devOnly) || dependents.any((d) => d.devOnly);
}

class Dependent {
  Dependent(this.name, this.kind, this.devOnly);
  final String name;
  final String kind; // app / package / tool / example
  final bool devOnly;
}

class Decl {
  Decl(this.name, this.kind, this.doc, this.file);
  final String name;
  final String kind;
  final String doc;
  final String file;
}

class GqlNode {
  GqlNode(this.name, this.kind, this.target, this.doc, this.file);
  final String name;
  final String kind;
  final String target;
  final String doc;
  final String file;
}

class Pattern {
  Pattern(this.text, this.owner, this.file);
  final String text;
  final String owner;
  final String file;
}

class TestFile {
  TestFile(this.file, this.names);
  final String file;
  final List<String> names;
}

class Heading {
  Heading(this.title, this.first);
  final String title;
  final String first;
}

String read(File f) => f.readAsStringSync().replaceAll('\r\n', '\n');

// ---------------------------------------------------------------- pubspec

class Pubspec {
  String name = '';
  String description = '';
  bool flutter = false;
  List<String> deps = [];
  List<String> devDeps = [];
}

Pubspec parsePubspec(File f) {
  final p = Pubspec();
  String section = '';
  for (final raw in read(f).split('\n')) {
    if (raw.trim().isEmpty || raw.trimLeft().startsWith('#')) continue;
    final top = RegExp(r'^([A-Za-z_]+):\s*(.*)$').firstMatch(raw);
    if (top != null) {
      section = top.group(1)!;
      final v = top.group(2)!.trim();
      if (section == 'name') p.name = v;
      if (section == 'description') {
        p.description =
            v.length >= 2 &&
                (v.startsWith('"') && v.endsWith('"') ||
                    v.startsWith("'") && v.endsWith("'"))
            ? v.substring(1, v.length - 1)
            : v;
      }
      if (p.description.startsWith('A new ')) p.description = '';
      continue;
    }
    final item = RegExp(r'^  ([A-Za-z0-9_]+):').firstMatch(raw);
    if (item != null) {
      final n = item.group(1)!;
      if (section == 'dependencies') {
        p.deps.add(n);
        if (n == 'flutter') p.flutter = true;
      } else if (section == 'dev_dependencies') {
        p.devDeps.add(n);
      }
    }
  }
  return p;
}

// ---------------------------------------------------------------- 公開 API

final declRe = RegExp(
  r'^(?:abstract\s+|base\s+|final\s+|sealed\s+|interface\s+|mixin\s+)*(class|mixin|enum|typedef|extension\s+type)\s+(\w+)',
);
final providerRe = RegExp(
  r'^(?:final|const)\s+(?:[\w<>?,\s]*?\s)?(\w+)\s*=\s*(?:\w+Provider|Provider|FutureProvider|StreamProvider|NotifierProvider|StateProvider)[\w<>.?, ]*\(',
);
final funcRe = RegExp(
  r'^(?:Future<[^>]*>|Future|Stream<[^>]*>|List<[^>]*>|Map<[^>]*>|[A-Za-z_][\w<>?,.]*)\s+([a-z]\w*)\s*\(',
);

String kindLabel(String line, String key) {
  if (key == 'class') {
    if (line.contains('abstract interface class') ||
        line.startsWith('interface'))
      return 'インターフェイス';
    if (line.contains('abstract class')) return '抽象クラス';
    return 'クラス';
  }
  return switch (key) {
    'mixin' => 'ミックスイン',
    'enum' => '列挙型',
    'typedef' => '型の別名',
    _ => '型',
  };
}

List<Decl> declsOf(File f, String rel, {Set<String>? only, Set<String>? hide}) {
  final lines = read(f).split('\n');
  final out = <Decl>[];
  final doc = <String>[];
  for (var i = 0; i < lines.length; i++) {
    final l = lines[i];
    if (l.startsWith('///')) {
      doc.add(l.substring(3).trim());
      continue;
    }
    if (l.startsWith('@') || l.trim().isEmpty && doc.isNotEmpty && false)
      continue;
    String? name;
    String kind = '';
    final d = declRe.firstMatch(l);
    if (d != null && !l.startsWith(' ')) {
      name = d.group(2);
      kind = kindLabel(l, d.group(1)!.replaceAll(RegExp(r'\s+'), ' '));
      if (d.group(1) == 'typedef') kind = '型の別名';
    } else if (!l.startsWith(' ')) {
      final p = providerRe.firstMatch(l);
      if (p != null) {
        name = p.group(1);
        kind = 'Riverpod プロバイダ';
      } else if (!l.startsWith('class ') &&
          !l.startsWith('import ') &&
          !l.startsWith('export ') &&
          !l.startsWith('part ')) {
        final fn = funcRe.firstMatch(l);
        if (fn != null && !l.contains('=>') || fn != null && l.contains('(')) {
          final n = fn!.group(1)!;
          if (!const {
            'main',
            'if',
            'for',
            'while',
            'switch',
            'return',
          }.contains(n)) {
            name = n;
            kind = '関数';
          }
        }
      }
    }
    if (name != null && !name.startsWith('_')) {
      final first = doc.where((s) => s.isNotEmpty).firstOrNull ?? '';
      if ((only == null || only.contains(name)) &&
          (hide == null || !hide.contains(name))) {
        out.add(Decl(name, kind, first, rel));
      }
    }
    if (!l.startsWith('@')) doc.clear();
  }
  return out;
}

/// バレル(lib 直下の .dart)の export をたどって、公開している宣言を集める。
void collectApi(Pkg p) {
  final lib = Directory('${p.path}/lib');
  if (!lib.existsSync()) return;
  final seen = <String>{};
  for (final f in lib.listSync().whereType<File>().where(
    (f) => f.path.endsWith('.dart'),
  )) {
    final base = f.uri.pathSegments.last;
    if (base.endsWith('.g.dart') || base.endsWith('.graphql.dart')) continue;
    final text = read(f);
    final exports = RegExp(
      r"export\s+'([^']+)'\s*(show|hide)?\s*([^;]*);",
      dotAll: true,
    ).allMatches(text).toList();
    // バレルでなく、自身が宣言を持つファイル(例: access_control_client.dart)も拾う
    for (final d in declsOf(f, 'lib/$base')) {
      if (seen.add('${d.file}:${d.name}')) p.api.add(d);
    }
    for (final m in exports) {
      final target = m.group(1)!;
      if (target.startsWith('package:') || target.startsWith('dart:')) {
        p.reexports.add(target.replaceFirst('package:', '').split('/').first);
        continue;
      }
      final file = File('${lib.path}/$target');
      if (!file.existsSync()) continue;
      if (target.endsWith('.g.dart') || target.endsWith('.graphql.dart'))
        continue;
      final names = m
          .group(3)!
          .split(',')
          .map((s) => s.trim())
          .where((s) => s.isNotEmpty)
          .toSet();
      final mode = m.group(2);
      final decls = declsOf(
        file,
        'lib/$target',
        only: mode == 'show' ? names : null,
        hide: mode == 'hide' ? names : null,
      );
      for (final d in decls) {
        if (seen.add('${d.file}:${d.name}')) p.api.add(d);
      }
      if (mode == 'show') {
        for (final n in names) {
          if (!decls.any((d) => d.name == n) && seen.add('${target}:$n')) {
            p.api.add(Decl(n, '定数・その他', '', 'lib/$target'));
          }
        }
      }
    }
  }
  p.reexports = p.reexports.toSet().toList()..sort();
}

// ---------------------------------------------------------------- gql

void collectGql(Pkg p) {
  final dir = Directory('${p.path}/gql');
  if (!dir.existsSync()) return;
  final files =
      dir
          .listSync()
          .whereType<File>()
          .where((f) => f.path.endsWith('.yaml'))
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path));
  for (final f in files) {
    final lines = read(f).split('\n');
    final comment = <String>[];
    for (var i = 0; i < lines.length; i++) {
      final l = lines[i];
      if (l.startsWith('#')) {
        final t = l.replaceFirst(RegExp(r'^#+\s*'), '').trim();
        if (!t.startsWith('yaml-language-server')) comment.add(t);
        continue;
      }
      final m = RegExp(r'^([A-Z]\w*):\s*$').firstMatch(l);
      if (m != null) {
        var kind = 'read';
        var target = '';
        for (var j = i + 1; j < lines.length && j < i + 60; j++) {
          final x = lines[j];
          if (x.isNotEmpty && !x.startsWith(' ') && !x.startsWith('#')) break;
          final k = RegExp(r'^  kind:\s*(\w+)').firstMatch(x);
          if (k != null) kind = k.group(1)!;
          final fr = RegExp(r'^  (?:from|mutation):\s*(\S+)').firstMatch(x);
          if (fr != null && target.isEmpty) target = fr.group(1)!;
        }
        final doc = comment.isEmpty ? '' : comment.last;
        p.gql.add(
          GqlNode(m.group(1)!, kind, target, doc, f.uri.pathSegments.last),
        );
        comment.clear();
      } else if (l.trim().isNotEmpty) {
        comment.clear();
      }
    }
  }
}

// ---------------------------------------------------------------- パターン・テスト

void collectPatterns(Pkg p) {
  final lib = Directory('${p.path}/lib');
  if (!lib.existsSync()) return;
  for (final f
      in lib
          .listSync(recursive: true)
          .whereType<File>()
          .where((f) => f.path.endsWith('.dart'))) {
    final path = f.path.replaceAll('\\', '/');
    if (path.endsWith('.g.dart') || path.endsWith('.graphql.dart')) continue;
    final lines = read(f).split('\n');
    for (var i = 0; i < lines.length; i++) {
      final m = RegExp(r'(?:GoF)?パターン[:：]\s*(.+)$').firstMatch(lines[i]);
      if (m != null && lines[i].trimLeft().startsWith('//')) {
        var owner = '';
        for (var j = i + 1; j < lines.length && j < i + 12; j++) {
          final d = declRe.firstMatch(lines[j]);
          if (d != null) {
            owner = d.group(2)!;
            break;
          }
        }
        final rel = path.substring(path.indexOf('/lib/') + 1);
        p.patterns.add(Pattern(m.group(1)!.trim(), owner, rel));
      }
    }
  }
  final seen = <String>{};
  p.patterns.retainWhere((x) => seen.add('${x.owner}|${x.text}'));
}

void collectTests(Pkg p) {
  final dir = Directory('${p.path}/test');
  if (!dir.existsSync()) return;
  final files =
      dir
          .listSync(recursive: true)
          .whereType<File>()
          .where((f) => f.path.endsWith('_test.dart'))
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path));
  for (final f in files) {
    final names = <String>[];
    for (final m in RegExp(
      r'''\b(?:test|testWidgets|serverTest|testGoldens)\(\s*(?:'((?:[^'\\]|\\.)*)'|"((?:[^"\\]|\\.)*)")''',
    ).allMatches(read(f))) {
      names.add(
        (m.group(1) ?? m.group(2) ?? '')
            .replaceAll(r"\'", "'")
            .replaceAll(r'\$', r'$'),
      );
    }
    final rel = f.path.replaceAll('\\', '/');
    p.tests.add(TestFile(rel.substring(rel.indexOf('/test/') + 1), names));
  }
}

// ---------------------------------------------------------------- CLAUDE.md

void collectClaude(Pkg p) {
  final f = File('${p.path}/CLAUDE.md');
  if (!f.existsSync()) return;
  final lines = read(f).split('\n');
  // 概要: 最初の見出しのあとの、最初の段落(空行まで)
  final sum = <String>[];
  var started = false;
  for (final l in lines) {
    if (!started) {
      if (l.startsWith('# ')) started = true;
      continue;
    }
    if (l.trim().isEmpty) {
      if (sum.isNotEmpty) break;
      continue;
    }
    if (l.startsWith('#')) {
      if (sum.isEmpty) continue;
      break;
    }
    if (l.startsWith('```') || l.startsWith('|')) break;
    sum.add(l.trim());
  }
  p.claudeSummary = sum.join(' ');
  const skip = {'規則/仕様', '規則', '規則: プロジェクト間をまたぐ指示', 'テスト'};
  String? title;
  for (var i = 0; i < lines.length; i++) {
    final h = RegExp(r'^##\s+(.+)$').firstMatch(lines[i]);
    if (h == null) continue;
    title = h.group(1)!.trim();
    if (skip.contains(title) || title.startsWith('規則')) continue;
    var first = '';
    for (var j = i + 1; j < lines.length && j < i + 40; j++) {
      final t = lines[j].trim();
      if (t.isEmpty ||
          t.startsWith('|--') ||
          t.startsWith('```') ||
          t.startsWith('<!--'))
        continue;
      if (t.startsWith('#')) break;
      first = t.replaceFirst(RegExp(r'^(?:\d+\.|[-+*])\s*'), '');
      break;
    }
    p.notes.add(Heading(title, truncate(first, 180)));
  }
}

String truncate(String s, int n) => s.length <= n ? s : '${s.substring(0, n)}…';

// ---------------------------------------------------------------- 構成

void collectStructure(Pkg p) {
  // 説明が無いときは、バレルの先頭のライブラリのコメントを使う
  if (p.description.isEmpty && p.claudeSummary.isEmpty) {
    final barrel = File('${p.path}/lib/${p.name}.dart');
    if (barrel.existsSync()) {
      final doc = <String>[];
      for (final l in read(barrel).split('\n')) {
        if (!l.startsWith('///')) break;
        final t = l.substring(3).trim();
        if (t.isNotEmpty) doc.add(t);
      }
      p.claudeSummary = doc.take(2).join(' ');
    }
  }
  final src = Directory('${p.path}/lib/src');
  final lib = Directory('${p.path}/lib');
  if (lib.existsSync()) {
    for (final f in lib.listSync(recursive: true).whereType<File>()) {
      final s = f.path.replaceAll('\\', '/');
      if (s.endsWith('.dart') &&
          !s.endsWith('.g.dart') &&
          !s.endsWith('.graphql.dart'))
        p.dartFiles++;
      if (s.endsWith('.dart') &&
          !s.contains('/i18n/') &&
          read(f).contains('loggerProvider'))
        p.usesLogger = true;
    }
  }
  if (src.existsSync()) {
    for (final d in src.listSync().whereType<Directory>()) {
      final name = d.uri.pathSegments.where((s) => s.isNotEmpty).last;
      final n = d
          .listSync(recursive: true)
          .whereType<File>()
          .where(
            (f) =>
                f.path.endsWith('.dart') &&
                !f.path.endsWith('.g.dart') &&
                !f.path.endsWith('.graphql.dart'),
          )
          .length;
      p.srcDirs.add('$name($n)');
    }
    p.srcDirs.sort();
  }
  p.hasSlang = File('${p.path}/slang.yaml').existsSync();
  p.hasExample = Directory('${p.path}/example').existsSync();
  final dc = Directory('${p.path}/doc/contents');
  if (dc.existsSync()) p.docContents = dc.listSync().length;
}

// ---------------------------------------------------------------- 文書

String esc(String s) => s.replaceAll('|', r'\|').replaceAll('\n', ' ');

String listOrNone(Iterable<String> xs, {String none = 'なし'}) =>
    xs.isEmpty ? none : xs.map((x) => '`$x`').join('、');

String manualOf(File f) {
  if (!f.existsSync()) return '';
  final t = read(f);
  final a = t.indexOf(manualBegin);
  final b = t.indexOf(manualEnd);
  if (a < 0 || b < a) return '';
  return t.substring(a + manualBegin.length, b).trim();
}

String manualBlock(File f) {
  final m = manualOf(f);
  return '## 補足(手書き)\n\n$manualBegin\n${m.isEmpty ? '' : '$m\n'}$manualEnd\n';
}

String layerLabel(String l) => switch (l) {
  'core' => 'core(機能とアプリの仲介・コマンドバス・設定の保存など)',
  'features' => 'features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)',
  'foundation' => 'foundation(画面を持たない汎用部品)',
  'infra' => 'infra(通信・認証・ログ・テストの道具)',
  'model_providers' => 'model_providers(機能ごとの GraphQL モデル)',
  'ui' => 'ui(UI 基盤)',
  _ => l,
};

String dependentLine(Dependent d) {
  final kind = switch (d.kind) {
    'app' => 'アプリ',
    'tool' => 'ツール',
    'example' => 'example',
    _ => 'パッケージ',
  };
  return '`${d.name}`($kind${d.devOnly ? '・テスト用' : ''})';
}

String srs(Pkg p, Map<String, Pkg> all, File out) {
  final b = StringBuffer();
  final desc = p.description.isNotEmpty ? p.description : p.claudeSummary;
  b.writeln('# ${p.name} ソフトウェア要求仕様(SRS)');
  b.writeln();
  b.writeln(generatedNote);
  b.writeln();
  b.writeln('## 1. はじめに');
  b.writeln();
  b.writeln('### 1.1 目的');
  b.writeln();
  b.writeln('${p.name}: ${desc.isEmpty ? '(説明なし)' : desc}');
  if (p.claudeSummary.isNotEmpty && p.claudeSummary != desc) {
    b.writeln();
    b.writeln(truncate(p.claudeSummary, 400));
  }
  b.writeln();
  b.writeln('### 1.2 範囲');
  b.writeln();
  b.writeln('- 場所: `${p.path}`(${layerLabel(p.layer)})');
  b.writeln('- 種類: ${p.flutter ? 'Flutter パッケージ' : '純 Dart パッケージ'}');
  b.writeln(
    '- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)${File('${p.path}/CLAUDE.md').existsSync() ? '、`CLAUDE.md`(規則・仕様)' : ''}。',
  );
  b.writeln();
  b.writeln('## 2. 全体説明');
  b.writeln();
  b.writeln('### 2.1 利用元(このライブラリを使うもの)');
  b.writeln();
  if (p.dependents.isEmpty) {
    b.writeln('なし。');
  } else {
    b.writeln(p.dependents.map(dependentLine).join('、'));
  }
  b.writeln();
  b.writeln('### 2.2 依存先(ワークスペース内)');
  b.writeln();
  final inWs = p.deps.where(all.containsKey).toList();
  b.writeln(listOrNone(inWs));
  final devWs = p.devDeps.where(all.containsKey).toList();
  if (devWs.isNotEmpty) b.writeln('\nテスト用: ${listOrNone(devWs)}');
  b.writeln();
  b.writeln(
    '依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。',
  );
  b.writeln();
  b.writeln('### 2.3 制約');
  b.writeln();
  b.writeln(
    '- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。',
  );
  b.writeln('- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。');
  b.writeln(
    '- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。',
  );
  b.writeln();
  b.writeln('## 3. 機能要件');
  b.writeln();
  if (p.gql.isNotEmpty) {
    b.writeln(
      'このライブラリは、画面ごとの GraphQL の読み込み・登録・更新・関数の呼び出しを、次のとおり提供する(`gql/*.yaml` が定義。型は生成する)。',
    );
    b.writeln();
    b.writeln('| ID | 名前 | 種類 | 対象 | 要求 |');
    b.writeln('|---|---|---|---|---|');
    var i = 1;
    for (final g in p.gql) {
      b.writeln(
        '| FR-${(i++).toString().padLeft(2, '0')} | `${g.name}` | ${gqlKind(g.kind)} | ${g.target.isEmpty ? '' : '`${g.target}`'} | ${esc(g.doc)} |',
      );
    }
    b.writeln();
  }
  if (p.api.isNotEmpty) {
    b.writeln(
      p.gql.isNotEmpty ? '手書きの公開面は次のとおり。' : 'このライブラリは、次の公開面(型・関数)を提供する。',
    );
    b.writeln();
    b.writeln('| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |');
    b.writeln('|---|---|---|---|');
    var i = 1;
    for (final d in p.api) {
      b.writeln(
        '| ${p.gql.isEmpty ? 'FR' : 'FA'}-${(i++).toString().padLeft(2, '0')} | `${d.name}` | ${d.kind} | ${esc(d.doc)} |',
      );
    }
    b.writeln();
  }
  if (p.gql.isEmpty && p.api.isEmpty) {
    b.writeln('公開している型・関数は無い(生成物・アプリへの組み込みだけ)。');
    b.writeln();
  }
  if (p.reexports.isNotEmpty) {
    b.writeln('ほかのパッケージの公開面を再公開する: ${listOrNone(p.reexports)}。');
    b.writeln();
  }
  if (p.notes.isNotEmpty) {
    b.writeln('### 3.1 仕様の要点(`CLAUDE.md` より)');
    b.writeln();
    for (final n in p.notes) {
      b.writeln('- **${n.title}**${n.first.isEmpty ? '' : ': ${n.first}'}');
    }
    b.writeln();
  }
  b.writeln('## 4. 非機能要件');
  b.writeln();
  b.writeln('| ID | 要求 | このライブラリでの状態 |');
  b.writeln('|---|---|---|');
  b.writeln(
    '| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | ${p.usesLogger ? '`loggerProvider` を使う' : '該当の処理が無い、または呼び出し側が受け持つ'} |',
  );
  b.writeln(
    '| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | ${p.hasSlang ? '`slang.yaml` あり(`lib/src/i18n`)' : '画面の文字列を持たない、または対象外'} |',
  );
  b.writeln(
    '| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | ${p.api.isNotEmpty || p.gql.isNotEmpty ? '`lib/${p.name}.dart` ほか' : '対象外'} |',
  );
  b.writeln(
    '| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |',
  );
  b.writeln(
    '| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | ${p.tests.isEmpty ? 'テストなし(生成物・組み込みだけのため)' : '${p.tests.fold<int>(0, (a, t) => a + t.names.length)} 件(5 節)'} |',
  );
  b.writeln('| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |');
  b.writeln(
    '| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |',
  );
  b.writeln();
  b.writeln('## 5. 検証(テストが確かめている要求)');
  b.writeln();
  if (p.tests.isEmpty) {
    b.writeln('テストなし。');
  } else {
    final total = p.tests.fold<int>(0, (a, t) => a + t.names.length);
    b.writeln('テストファイル ${p.tests.length} 件、テストケース $total 件。');
    b.writeln();
    var shown = 0;
    for (final t in p.tests) {
      if (t.names.isEmpty) continue;
      b.writeln('- `${t.file}`');
      for (final n in t.names) {
        if (shown >= 80) break;
        b.writeln('  - ${esc(truncate(n, 120))}');
        shown++;
      }
    }
    if (total > shown) b.writeln('\n(ほか ${total - shown} 件は、各テストファイルを参照)');
  }
  b.writeln();
  b.write(manualBlock(out));
  return b.toString();
}

String gqlKind(String k) => switch (k) {
  'read' => '読み込み',
  'edit' => '更新',
  'create' => '登録',
  'function' => 'DB 関数の呼び出し',
  _ => k,
};

String sdd(Pkg p, Map<String, Pkg> all, File out) {
  final b = StringBuffer();
  b.writeln('# ${p.name} ソフトウェア設計記述(SDD)');
  b.writeln();
  b.writeln(generatedNote);
  b.writeln();
  b.writeln('## 1. 概要');
  b.writeln();
  final desc = p.description.isNotEmpty ? p.description : p.claudeSummary;
  b.writeln('${p.name}: ${desc.isEmpty ? '(説明なし)' : desc}');
  b.writeln();
  b.writeln('- 層: ${layerLabel(p.layer)}');
  b.writeln('- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。');
  b.writeln();
  b.writeln('## 2. 構成');
  b.writeln();
  b.writeln('| 項目 | 内容 |');
  b.writeln('|---|---|');
  b.writeln('| 場所 | `${p.path}` |');
  b.writeln('| Dart ファイル(生成物を除く) | ${p.dartFiles} |');
  b.writeln(
    '| `lib/src` の分け方 | ${p.srcDirs.isEmpty ? '(分けていない、または `lib/src` が無い)' : p.srcDirs.map((s) => '`$s`').join('、')} |',
  );
  b.writeln('| 多言語(slang) | ${p.hasSlang ? 'あり' : 'なし'} |');
  b.writeln('| example(単体で画面を確認するアプリ) | ${p.hasExample ? 'あり' : 'なし'} |');
  b.writeln(
    '| 使い方・画面イメージ(`doc/contents`) | ${p.docContents > 0 ? '${p.docContents} 件' : 'なし'} |',
  );
  b.writeln();
  b.writeln('## 3. 公開面と主要な型');
  b.writeln();
  if (p.gql.isEmpty && p.api.isEmpty) {
    b.writeln('公開している型・関数は無い。');
  }
  if (p.gql.isNotEmpty) {
    b.writeln('### 3.1 モデル(`gql/*.yaml` が入口。型は graphql_codegen が生成する)');
    b.writeln();
    b.writeln('| 名前 | 種類 | 対象(テーブル・ビュー・関数) | 定義 |');
    b.writeln('|---|---|---|---|');
    for (final g in p.gql) {
      b.writeln(
        '| `${g.name}` | ${gqlKind(g.kind)} | ${g.target.isEmpty ? '' : '`${g.target}`'} | `gql/${g.file}` |',
      );
    }
    b.writeln();
    b.writeln(
      '生成の流れ: `gql/*.yaml` → `.graphql`(`tools/gql_yaml2graphql`)→ 画面用 `schema.graphql`(`tools/gql_schema_pruner`)→ `*.graphql.dart`(build_runner)。生成物の型は、対応する機能の外へ出さない。',
    );
    b.writeln();
  }
  if (p.api.isNotEmpty) {
    b.writeln('### ${p.gql.isNotEmpty ? '3.2' : '3.1'} 手書きの公開面');
    b.writeln();
    b.writeln('| 名前 | 種類 | 責務 | 定義 |');
    b.writeln('|---|---|---|---|');
    for (final d in p.api) {
      b.writeln('| `${d.name}` | ${d.kind} | ${esc(d.doc)} | `${d.file}` |');
    }
    b.writeln();
  }
  b.writeln('## 4. デザインパターン');
  b.writeln();
  if (p.patterns.isEmpty) {
    b.writeln('ソースのコメントに明記したパターンは無い。');
  } else {
    b.writeln('| 型 | パターン(コメントの記述) | 定義 |');
    b.writeln('|---|---|---|');
    for (final x in p.patterns) {
      b.writeln(
        '| ${x.owner.isEmpty ? '' : '`${x.owner}`'} | ${esc(x.text)} | `${x.file}` |',
      );
    }
  }
  b.writeln();
  b.writeln('## 5. 依存関係');
  b.writeln();
  b.writeln('- 依存先(ワークスペース内): ${listOrNone(p.deps.where(all.containsKey))}');
  final devWs = p.devDeps.where(all.containsKey).toList();
  if (devWs.isNotEmpty) b.writeln('- テスト用: ${listOrNone(devWs)}');
  b.writeln(
    '- 利用元: ${p.dependents.isEmpty ? 'なし' : p.dependents.map(dependentLine).join('、')}',
  );
  b.writeln(
    '- 外部パッケージ: ${listOrNone(p.deps.where((d) => !all.containsKey(d) && d != 'flutter'))}',
  );
  b.writeln();
  b.writeln('## 6. 設計上の決定(`CLAUDE.md` より)');
  b.writeln();
  if (p.notes.isEmpty) {
    b.writeln('パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。');
  } else {
    for (final n in p.notes) {
      b.writeln('- **${n.title}**${n.first.isEmpty ? '' : ': ${n.first}'}');
    }
  }
  b.writeln();
  b.writeln('## 7. エラー処理・ログ');
  b.writeln();
  b.writeln(
    p.usesLogger
        ? '- ログは `loggerProvider`(Riverpod)から受け、このライブラリが発生元のエラーだけを残す。'
        : '- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。',
  );
  b.writeln('- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。');
  b.writeln();
  b.writeln('## 8. テスト方針');
  b.writeln();
  if (p.tests.isEmpty) {
    b.writeln('テストなし。');
  } else {
    b.writeln(
      'テストファイル: ${p.tests.map((t) => '`${t.file}`(${t.names.length})').join('、')}',
    );
    b.writeln();
    b.writeln(
      'データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。',
    );
  }
  b.writeln();
  b.write(manualBlock(out));
  return b.toString();
}

// ---------------------------------------------------------------- 索引(ルートの doc に差し込む)

String indexTable(List<Pkg> used, List<Pkg> unused, Map<String, Pkg> all) {
  final b = StringBuffer();
  b.writeln('<!-- doc_gen:index:begin -->');
  b.writeln();
  b.writeln(
    'ライブラリ ${used.length} 件(使われていないライブラリ ${unused.length} 件は、文書を作らず、`issue/20261128_0001.md` に削除の対象として記録した)。',
  );
  b.writeln();
  for (final layer in const [
    'core',
    'ui',
    'infra',
    'foundation',
    'model_providers',
    'features',
  ]) {
    final xs = used.where((p) => p.layer == layer).toList()
      ..sort((a, b) => a.name.compareTo(b.name));
    if (xs.isEmpty) continue;
    b.writeln('### $layer');
    b.writeln();
    b.writeln('| ライブラリ | 説明 | 利用元 | SRS | SDD |');
    b.writeln('|---|---|---|---|---|');
    for (final p in xs) {
      final d = p.description.isNotEmpty ? p.description : p.claudeSummary;
      final rel = p.path;
      b.writeln(
        '| `${p.name}` | ${esc(truncate(d, 90))} | ${p.dependents.length} | [SRS](../$rel/doc/SRS.md) | [SDD](../$rel/doc/SDD.md) |',
      );
    }
    b.writeln();
  }
  b.writeln('<!-- doc_gen:index:end -->');
  return b.toString();
}

void replaceBlock(File f, String begin, String end, String text) {
  if (!f.existsSync()) return;
  final t = read(f);
  final a = t.indexOf(begin);
  final b = t.indexOf(end);
  if (a < 0 || b < a) return;
  f.writeAsStringSync(
    t.substring(0, a) + text.trimRight() + t.substring(b + end.length),
  );
}

// ---------------------------------------------------------------- 本体

void main(List<String> args) {
  final only = args
      .where((a) => a.startsWith('--only='))
      .map((a) => a.substring(7))
      .firstOrNull;
  final dry = args.contains('--dry');
  final root = Directory.current;
  if (!File('${root.path}/pubspec.yaml').existsSync() ||
      !Directory('${root.path}/packages').existsSync()) {
    stderr.writeln('リポジトリのルートで実行する。');
    exit(2);
  }

  // 1. パッケージの一覧
  final pkgs = <Pkg>[];
  for (final layerDir in Directory(
    'packages',
  ).listSync().whereType<Directory>()) {
    final layer = layerDir.uri.pathSegments.where((s) => s.isNotEmpty).last;
    for (final d in layerDir.listSync().whereType<Directory>()) {
      final n = d.uri.pathSegments.where((s) => s.isNotEmpty).last;
      if (n == 'doc' || n == 'issue' || n.startsWith('.')) continue;
      pkgs.add(Pkg(d, layer));
    }
  }
  final nonPackages = <Pkg>[];
  final libs = <Pkg>[];
  for (final p in pkgs) {
    final ps = File('${p.dir.path}/pubspec.yaml');
    if (ps.existsSync()) {
      final s = parsePubspec(ps);
      p.name = s.name;
      p.description = s.description;
      p.flutter = s.flutter;
      p.deps = s.deps;
      p.devDeps = s.devDeps;
      libs.add(p);
    } else {
      p.hasPubspec = false;
      p.name = p.dir.uri.pathSegments.where((s) => s.isNotEmpty).last;
      nonPackages.add(p);
    }
  }
  final all = {for (final p in libs) p.name: p};

  // 2. 利用元
  final users =
      <
        (String, String, Pubspec, String)
      >[]; // name, kind, pubspec, ownerPackageName
  void addUsers(Directory base, String kind) {
    if (!base.existsSync()) return;
    for (final d in base.listSync().whereType<Directory>()) {
      final ps = File('${d.path}/pubspec.yaml');
      if (ps.existsSync())
        users.add((parsePubspec(ps).name, kind, parsePubspec(ps), ''));
    }
  }

  addUsers(Directory('apps'), 'app');
  addUsers(Directory('tools'), 'tool');
  for (final p in libs) {
    users.add((
      p.name,
      'package',
      Pubspec()
        ..name = p.name
        ..deps = p.deps
        ..devDeps = p.devDeps,
      p.name,
    ));
    final ex = File('${p.dir.path}/example/pubspec.yaml');
    if (ex.existsSync()) {
      final s = parsePubspec(ex);
      users.add(('${p.name}/example', 'example', s, p.name));
    }
  }
  for (final p in libs) {
    for (final u in users) {
      if (u.$1 == p.name || u.$4 == p.name) continue; // 自分自身・自分の example
      final inDeps = u.$3.deps.contains(p.name);
      final inDev = u.$3.devDeps.contains(p.name);
      if (inDeps || inDev) p.dependents.add(Dependent(u.$1, u.$2, !inDeps));
    }
  }
  // gql_shared のような YAML の部品(pubspec が無い)は、YAML からの参照で使われているかを見る
  for (final np in nonPackages) {
    var refs = 0;
    for (final f
        in Directory('packages')
            .listSync(recursive: true)
            .whereType<File>()
            .where(
              (f) =>
                  f.path.endsWith('.yaml') &&
                  f.path.replaceAll('\\', '/').contains('/gql/'),
            )) {
      if (read(f).contains(np.name)) refs++;
    }
    np.docContents = refs;
  }

  // 3. 材料の収集と生成
  final used = <Pkg>[];
  final unused = <Pkg>[];
  for (final p in libs) {
    // テスト専用のパッケージ(例: jwt_verification_test)は、使われるためでなく、実行するために置く
    final testOnly = p.description.startsWith('テスト専用');
    (p.dependents.where((d) => d.kind != 'example').isEmpty && !testOnly
            ? unused
            : used)
        .add(p);
  }
  var written = 0;
  for (final p in used) {
    if (only != null && p.name != only) continue;
    collectApi(p);
    collectGql(p);
    collectPatterns(p);
    collectTests(p);
    collectClaude(p);
    collectStructure(p);
    final docDir = Directory('${p.path}/doc');
    final srsFile = File('${docDir.path}/SRS.md');
    final sddFile = File('${docDir.path}/SDD.md');
    final srsText = srs(p, all, srsFile);
    final sddText = sdd(p, all, sddFile);
    if (!dry) {
      docDir.createSync(recursive: true);
      srsFile.writeAsStringSync(srsText);
      sddFile.writeAsStringSync(sddText);
    }
    written += 2;
  }

  // 4. ルートの文書の索引
  if (only == null && !dry) {
    final idx = indexTable(used, unused, all);
    replaceBlock(
      File('doc/SRS.md'),
      '<!-- doc_gen:index:begin -->',
      '<!-- doc_gen:index:end -->',
      idx,
    );
    replaceBlock(
      File('doc/SDD.md'),
      '<!-- doc_gen:index:begin -->',
      '<!-- doc_gen:index:end -->',
      idx,
    );
  }

  stdout.writeln(
    'ライブラリ: ${libs.length} 件(文書を作った: ${used.length}、使われていない: ${unused.length})。文書 $written 件を${dry ? '作る予定' : '書いた'}。',
  );
  stdout.writeln('--- 使われていないライブラリ');
  for (final p in unused) {
    stdout.writeln('${p.path}\t${p.name}\t${p.description}');
  }
  stdout.writeln('--- ライブラリではない(pubspec が無い)フォルダ');
  for (final p in nonPackages) {
    stdout.writeln('${p.path}\t(YAML の参照 ${p.docContents} 件)');
  }
}
