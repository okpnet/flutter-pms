// nested_map_flattener.dart
//
// PostGraphile(GraphQL)のリレーション付きレスポンス(ネストしたMap)と、
// TrinaGridに渡すフラットなMap<String, dynamic>との相互変換ユーティリティ。
//
// 1レコード(TrinaGridの1行)分の変換を担当する。複数行への適用は
// 呼び出し側で `records.map(...)` すればよい。
//
// 設計方針:
//   - キーの結合セパレータは `||`。フィールド名(camelCase等)に含まれない前提。
//   - 引数なし版: 実際にMapへ存在する値だけを対象に汎用的にフラット化/復元する。
//   - 列指定版: TrinaGridの列(field一覧、またはTrinaColumnそのもの)を渡すことで、
//     リレーションがnull/欠落しているレコードでも、常に同じ列構成のMapを返す
//     (= グリッドの列がレコードごとにブレない)。
//   - 1対1 と 1対多 の判定は「件数」ではなく「Relay Connectionの構造(nodes/edges
//     キーの有無)」で行う。PostGraphileの1対多リレーションは件数に関わらず必ず
//     `{ nodes: [...], edges: [...], pageInfo: {...}, totalCount: ... }` という
//     構造で返るため、これは件数に左右されない静的な判定になる。
//   - 1対多と判定したMapは、既定では再帰(フラット化)せず、その階層の値として
//     まるごと保持する。特定のパスについて「実質1対1として先頭の1件を展開したい」
//     場合だけ、[collapseSingleRecordPaths] に明示的にそのパスを渡す。
//
// 依存: trina_grid の TrinaColumn を直接受け取れる版のみ import が必要。
//       それ以外の関数は Dart 標準のみで完結する。

import 'package:trina_grid/trina_grid.dart';

/// フラット化キーの既定セパレータ。
const String kFlatKeySeparator = '||';

/// Relay Connection(1対多リレーション)の構造的な目印となるキー。
/// このいずれかを持つMapは、件数に関わらず「1対多」として扱う。
const Set<String> kConnectionFingerprintKeys = {'nodes', 'edges'};

// ---------------------------------------------------------------------------
// 共通ヘルパー
// ---------------------------------------------------------------------------

/// [value] が Map であれば `Map<String, dynamic>` として返す。そうでなければ null。
/// jsonDecode/GraphQLクライアントの実装差で `Map<dynamic, dynamic>` になっている
/// ケースにも対応するための防御的な変換。
Map<String, dynamic>? _asStringKeyedMap(dynamic value) {
  if (value is Map<String, dynamic>) return value;
  if (value is Map) return Map<String, dynamic>.from(value);
  return null;
}

/// [map] が Relay Connection(1対多リレーション)の構造を持つかどうか。
/// 件数(nodesの要素数)は一切見ない。`nodes`/`edges`キーの有無だけで判定するため、
/// 該当が0件・1件・複数件のいずれであっても、常に同じ判定結果になる。
bool _isConnectionShaped(Map<String, dynamic> map) =>
    map.keys.any(kConnectionFingerprintKeys.contains);

/// Connection形状のMapから、実際のレコード一覧を取り出す。
/// `nodes`があればそれを、`edges`しかなければ各要素の`node`を取り出す。
List<Map<String, dynamic>> _extractConnectionRecords(
  Map<String, dynamic> connection,
) {
  final nodes = connection['nodes'];
  if (nodes is List) {
    return nodes
        .map(_asStringKeyedMap)
        .whereType<Map<String, dynamic>>()
        .toList();
  }
  final edges = connection['edges'];
  if (edges is List) {
    return edges
        .map(_asStringKeyedMap)
        .whereType<Map<String, dynamic>>()
        .map((e) => _asStringKeyedMap(e['node']))
        .whereType<Map<String, dynamic>>()
        .toList();
  }
  return const [];
}

List<String> _splitPath(String flatKey, String separator) =>
    flatKey.split(separator);

/// [root] の中に [segments] で示されるパスを辿り、末尾に [value] を設定する。
/// 途中の階層が存在しない/Mapでない場合は新しいMapを作って上書きする。
void _setNested(
  Map<String, dynamic> root,
  List<String> segments,
  dynamic value,
) {
  Map<String, dynamic> current = root;
  for (var i = 0; i < segments.length - 1; i++) {
    final segment = segments[i];
    final existing = _asStringKeyedMap(current[segment]);
    if (existing != null) {
      current = existing;
    } else {
      final created = <String, dynamic>{};
      current[segment] = created;
      current = created;
    }
  }
  current[segments.last] = value;
}

/// デバッグ時のみ、フィールド名にセパレータが混入していないかを検査する。
/// (混入していると、フラット化・復元が本来の階層と一致しなくなるため)
/// 1対多(Connection形状)のMapの中は、フラット化の対象外なので検査しない。
void _assertNoSeparatorCollision(
  Map<String, dynamic> source,
  String separator, {
  String prefix = '',
}) {
  assert(() {
    for (final entry in source.entries) {
      assert(
        !entry.key.contains(separator),
        'フィールド名 "$prefix${entry.key}" にセパレータ "$separator" が含まれています。'
        'セパレータを変更するか、フィールド名を見直してください。',
      );
      final nested = _asStringKeyedMap(entry.value);
      if (nested != null && !_isConnectionShaped(nested)) {
        _assertNoSeparatorCollision(
          nested,
          separator,
          prefix: '$prefix${entry.key}$separator',
        );
      }
    }
    return true;
  }());
}

// ---------------------------------------------------------------------------
// 1) ネストした Map -> フラット Map
// ---------------------------------------------------------------------------

extension NestedMapFlattenX on Map<String, dynamic> {
  /// 汎用フラット化(引数なし)。
  ///
  /// 実際にこのMapに存在する値だけを対象に、再帰的にフラット化する。
  /// - 1対1のネストしたMap(Connection形状ではない): 再帰して `親||子` の形でキーを結合する
  /// - 1対多のMap(`nodes`/`edges`を持つConnection形状): 件数に関わらず再帰せず、
  ///   その階層の値としてConnectionオブジェクトそのものを保持する
  /// - それ以外(スカラー/null): そのままリーフの値として採用する
  ///
  /// 1対1のリレーションがnullなレコードでは、そのリレーション配下のキー自体が
  /// 結果に現れない点に注意(列を固定したい場合は [flattenForColumns] を使う)。
  Map<String, dynamic> flatten({String separator = kFlatKeySeparator}) {
    _assertNoSeparatorCollision(this, separator);
    final result = <String, dynamic>{};
    void walk(String prefix, Map<String, dynamic> map) {
      for (final entry in map.entries) {
        final key =
            prefix.isEmpty ? entry.key : '$prefix$separator${entry.key}';
        final nested = _asStringKeyedMap(entry.value);
        if (nested != null && !_isConnectionShaped(nested)) {
          walk(key, nested);
        } else {
          result[key] = entry.value;
        }
      }
    }

    walk('', this);
    return result;
  }

  /// 安定フラット化(列のfield名一覧を指定)。
  ///
  /// [columnFields] に渡された各フラットキー
  /// (例: `'sharedAppellationBySharedAppellationsId||name'`)について、
  /// このMapを辿って値を取得する。途中の親がnull/存在しない場合は
  /// その列をnullとして埋める。
  ///
  /// 途中でConnection形状(1対多)のMapに遭遇した場合、既定ではそこで解決を諦めて
  /// nullを返す(1対多を安全に1つのスカラー列へ潰すことはできないため)。
  /// そのパスが実質1対1(常に0〜1件)であると分かっている場合だけ、
  /// [collapseSingleRecordPaths] にそのパス(Connectionの位置までのフラットキー)を
  /// 渡すと、先頭の1件を単一レコードとして展開してから続きを解決する。
  Map<String, dynamic> flattenForColumns(
    List<String> columnFields, {
    String separator = kFlatKeySeparator,
    Set<String> collapseSingleRecordPaths = const {},
  }) {
    final result = <String, dynamic>{};
    for (final field in columnFields) {
      final segments = _splitPath(field, separator);
      dynamic current = this;
      final consumed = <String>[];
      for (final segment in segments) {
        var currentMap = _asStringKeyedMap(current);
        if (currentMap == null) {
          current = null;
          break;
        }
        final pathSoFar = consumed.join(separator);
        if (_isConnectionShaped(currentMap) &&
            collapseSingleRecordPaths.contains(pathSoFar)) {
          final records = _extractConnectionRecords(currentMap);
          currentMap = records.isNotEmpty ? records.first : null;
          if (currentMap == null) {
            current = null;
            break;
          }
        }
        if (!currentMap.containsKey(segment)) {
          current = null;
          break;
        }
        current = currentMap[segment];
        consumed.add(segment);
      }
      result[field] = current;
    }
    return result;
  }

  /// TrinaGridの列定義([TrinaColumn]のリスト)をそのまま渡せる版。
  /// 各 [TrinaColumn.field] をフラットキーとして [flattenForColumns] に委譲する。
  Map<String, dynamic> flattenForTrinaColumns(
    List<TrinaColumn> columns, {
    String separator = kFlatKeySeparator,
    Set<String> collapseSingleRecordPaths = const {},
  }) =>
      flattenForColumns(
        columns.map((c) => c.field).toList(growable: false),
        separator: separator,
        collapseSingleRecordPaths: collapseSingleRecordPaths,
      );
}

// ---------------------------------------------------------------------------
// 2) フラット Map -> ネストした Map
// ---------------------------------------------------------------------------

extension FlatMapUnflattenX on Map<String, dynamic> {
  /// 汎用復元(引数なし)。
  ///
  /// このMapの全キーを対象に、セパレータで分解しながらネスト構造を組み立てる。
  /// リーフの値(Connectionオブジェクトを含む)はそのまま復元されるので、
  /// [flatten] で作ったMapに対して常に対称(round-trip)になる。
  Map<String, dynamic> unflatten({String separator = kFlatKeySeparator}) {
    final result = <String, dynamic>{};
    for (final entry in entries) {
      _setNested(result, _splitPath(entry.key, separator), entry.value);
    }
    return result;
  }

  /// 一部のフラットキーだけを対象に復元する版。
  ///
  /// 例えば「グリッドで実際に編集されたセルだけをMutationに反映したい」
  /// といったケースで、[onlyFields] に対象のフラットキーを絞って渡す。
  Map<String, dynamic> unflattenForFields(
    List<String> onlyFields, {
    String separator = kFlatKeySeparator,
  }) {
    final result = <String, dynamic>{};
    for (final field in onlyFields) {
      if (!containsKey(field)) continue;
      _setNested(result, _splitPath(field, separator), this[field]);
    }
    return result;
  }

  /// TrinaGridの列定義([TrinaColumn]のリスト)をそのまま渡せる版。
  Map<String, dynamic> unflattenForTrinaColumns(
    List<TrinaColumn> columns, {
    String separator = kFlatKeySeparator,
  }) =>
      unflattenForFields(
        columns.map((c) => c.field).toList(growable: false),
        separator: separator,
      );
}
