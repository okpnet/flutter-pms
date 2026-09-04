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
//   - to-many(Listで返るリレーション)はグリッドの1セルに収まらないため、
//     フラット化の対象にはせず、その階層の値としてそのまま保持する。
//
// 依存: trina_grid の TrinaColumn を直接受け取れる版のみ import が必要。
//       それ以外の関数は Dart 標準のみで完結する。

import 'package:trina_grid/trina_grid.dart';

/// フラット化キーの既定セパレータ。
const String kFlatKeySeparator = '||';

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
      if (nested != null) {
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
  /// - Map値: 再帰して `親||子` の形でキーを結合する
  /// - List値(to-manyのリレーション等): フラット化せず、その階層の値としてそのまま保持する
  /// - それ以外(スカラー/null): そのままリーフの値として採用する
  ///
  /// リレーションがnullなレコードでは、そのリレーション配下のキー自体が
  /// 結果に現れない点に注意(列を固定したい場合は [flattenForColumns] を使う)。
  Map<String, dynamic> flatten({String separator = kFlatKeySeparator}) {
    _assertNoSeparatorCollision(this, separator);
    final result = <String, dynamic>{};
    void walk(String prefix, Map<String, dynamic> map) {
      for (final entry in map.entries) {
        final key = prefix.isEmpty ? entry.key : '$prefix$separator${entry.key}';
        final nested = _asStringKeyedMap(entry.value);
        if (nested != null) {
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
  /// これにより、リレーションのnull/欠落があるレコードでも、
  /// 常に [columnFields] と同じキー構成のMapが返る
  /// (= TrinaGridの列がレコードごとにブレない)。
  Map<String, dynamic> flattenForColumns(
    List<String> columnFields, {
    String separator = kFlatKeySeparator,
  }) {
    final result = <String, dynamic>{};
    for (final field in columnFields) {
      final segments = _splitPath(field, separator);
      dynamic current = this;
      for (final segment in segments) {
        final currentMap = _asStringKeyedMap(current);
        if (currentMap != null && currentMap.containsKey(segment)) {
          current = currentMap[segment];
        } else {
          current = null;
          break;
        }
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
  }) =>
      flattenForColumns(
        columns.map((c) => c.field).toList(growable: false),
        separator: separator,
      );
}

// ---------------------------------------------------------------------------
// 2) フラット Map -> ネストした Map
// ---------------------------------------------------------------------------

extension FlatMapUnflattenX on Map<String, dynamic> {
  /// 汎用復元(引数なし)。
  ///
  /// このMapの全キーを対象に、セパレータで分解しながらネスト構造を組み立てる。
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
