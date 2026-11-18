// 一回限りの取り込みスクリプト(検査 20261118_0001_order_detail_planning.sql が通ったあとに、PERO のデータと 06_cteate_test.sql へ、受注明細の計画状況のビュー 2 つと mrp_run の変更を入れる)。
// 実行: dart run test/20261118_0001_incorporate_to_pero.dart(リポジトリのルートの絶対パスを書き換えて使う)。取り込んだら、このファイルと 20261118_0001_apply.sql は削除する。
import 'dart:convert';
import 'dart:io';

String rep(String s, String from, String to, String label) {
  final n = from.allMatches(s).length;
  if (n != 1) throw StateError('$label: $n matches');
  return s.replaceFirst(from, to);
}

// ---- ビュー 1: 受注明細の資材計画(計画済みか。mrp_run の需要の判定と同じ) ----
const planSql = '''SELECT
    od.trans_order_detail_id
    , rp.trans_resource_plan_id
    , (rp.trans_resource_plan_id IS NOT NULL) AS planned
FROM tests.trans_order_detail AS od
LEFT JOIN LATERAL (
    SELECT x.trans_resource_plan_id FROM tests.trans_resource_plan AS x
    WHERE x.trans_order_detail_id = od.trans_order_detail_id
      AND x.remove IS FALSE AND x.parent_trans_operations_plan_id IS NULL
    ORDER BY x.register_at DESC, x.trans_resource_plan_id LIMIT 1
) AS rp ON TRUE''';
const planComment = '''@primaryKey trans_order_detail_id
@foreignKey (trans_order_detail_id) references trans_order_detail (trans_order_detail_id)
@foreignKey (trans_resource_plan_id) references trans_resource_plan (trans_resource_plan_id)
受注明細の資材計画(受注明細に直接つながる最新の資材計画。mrp_run の受注の需要が使う)''';
const planCols = [
  ('trans_resource_plan_id', '受注明細に直接つながる最新の資材計画(論理削除と、下位の部品の資材計画を除く。無ければ NULL)'),
  ('planned', '計画済み(資材計画が有る。MRP が計画した)'),
];

// ---- ビュー 2: 受注明細の計画状況(MRP の対象か) ----
const stateSql = '''SELECT
    ob.trans_order_detail_id
    , ob.symbol
    , ob.trans_order_id
    , ob.item_id
    , pl.trans_resource_plan_id
    , pl.planned
    , (ob.quantity - ob.cancel_quantity + ob.replacement_quantity > 0) AS has_demand
    , ob.stop AS stopped
    , (NOT pl.planned
       AND ob.quantity - ob.cancel_quantity + ob.replacement_quantity > 0
       AND ob.stop IS NOT TRUE) AS to_plan
FROM tests.v_order_detail_balance AS ob
INNER JOIN tests.trans_order AS o ON o.trans_order_id = ob.trans_order_id AND o.remove IS FALSE
INNER JOIN tests.v_order_detail_plan AS pl ON pl.trans_order_detail_id = ob.trans_order_detail_id''';
const stateComment = '''@primaryKey trans_order_detail_id
@unique symbol
@foreignKey (trans_order_detail_id) references trans_order_detail (trans_order_detail_id)
@foreignKey (trans_order_id) references trans_order (trans_order_id)
@foreignKey (item_id) references mstr_item (mstr_item_id)
@foreignKey (trans_resource_plan_id) references trans_resource_plan (trans_resource_plan_id)
受注明細の計画状況(MRP の対象になるか)''';
const stateCols = [
  ('trans_resource_plan_id', '受注明細に直接つながる最新の資材計画(無ければ NULL)'),
  ('planned', '計画済み(資材計画が有る)'),
  ('has_demand', '需要が有る(数量 − キャンセル数量 + 代品ありの返品 > 0。全部キャンセル済みは false)'),
  ('stopped', '停止中(MRP は停止中の受注明細を凍結する)'),
  ('to_plan', '次の受注 MRP が計画する(未計画・需要が有る・停止していない。mrp_run の受注の需要の判定と同じ)'),
];

String viewDdl(String name, String sql, String comment, List<(String, String)> cols, String nl) {
  final b = StringBuffer();
  b.write('CREATE VIEW tests.$name AS$nl${sql.replaceAll('\n', nl)};$nl$nl');
  b.write("COMMENT ON VIEW tests.$name IS '${comment.replaceAll('\n', nl)}';$nl$nl");
  for (final (c, t) in cols) {
    b.write("COMMENT ON COLUMN tests.$name.$c IS '$t';$nl");
  }
  return b.toString();
}

const oldLateral = '''    LEFT JOIN LATERAL (
        SELECT x.* FROM tests.trans_resource_plan AS x
        WHERE x.trans_order_detail_id = od.trans_order_detail_id
          AND x.remove IS FALSE AND x.parent_trans_operations_plan_id IS NULL
        ORDER BY x.register_at DESC LIMIT 1
    ) AS rp ON TRUE
    WHERE od.remove IS FALSE
      AND ob.quantity - ob.cancel_quantity + ob.replacement_quantity > 0''';
const newJoin = '''    LEFT JOIN tests.v_order_detail_plan AS pl
        ON pl.trans_order_detail_id = od.trans_order_detail_id
    LEFT JOIN tests.trans_resource_plan AS rp
        ON rp.trans_resource_plan_id = pl.trans_resource_plan_id
    WHERE od.remove IS FALSE
      AND ob.quantity - ob.cancel_quantity + ob.replacement_quantity > 0''';

void main() {
  // ---------------- 06 ----------------
  final p06 = r'c:\git\flutter-pms\tools\docker\postgresql\script\06_cteate_test.sql';
  var s = File(p06).readAsStringSync();
  final nl = s.contains('\r\n') ? '\r\n' : '\n';
  const anchor06 = "COMMENT ON COLUMN tests.v_mrp_suggestion.run_committed IS 'MRP 実行が確定済み';";
  s = rep(
    s,
    anchor06,
    '$anchor06$nl$nl'
        '${viewDdl('v_order_detail_plan', planSql, planComment, planCols, nl)}$nl'
        '${viewDdl('v_order_detail_planning', stateSql, stateComment, stateCols, nl)}',
    '06 views',
  );
  s = rep(s, oldLateral.replaceAll('\n', nl), newJoin.replaceAll('\n', nl), '06 mrp_run');
  File(p06).writeAsStringSync(s);

  // ---------------- PERO ----------------
  final pp = r'c:\git\flutter-pms\tools\database\ER\pms_test.pero';
  var t = File(pp).readAsStringSync();
  final doc = jsonDecode(t) as Map<String, dynamic>;
  var nextId = doc['nextId'] as int;
  String esc(String x) => jsonEncode(x); // 引用符つき
  String entity(String name, String sql, String comment, List<(String, String)> cols) {
    final id = nextId++;
    final post = cols.map((c) => "COMMENT ON COLUMN tests.$name.${c.$1} IS '${c.$2}';").join('\n');
    return '''    {
      "id": $id,
      "kind": "view",
      "logicalName": "",
      "physicalName": "$name",
      "comment": ${esc(comment)},
      "locked": false,
      "viewType": "sql",
      "join": {
        "sources": [],
        "columns": [],
        "where": ""
      },
      "function": {
        "methodId": null,
        "args": [],
        "columns": []
      },
      "sql": {
        "sql": ${esc(sql.replaceAll('\n', '\r\n'))},
        "columns": []
      },
      "preQuery": "",
      "postQuery": ${esc(post)}
    }''';
  }

  final e1 = entity('v_order_detail_plan', planSql, planComment, planCols);
  final e2 = entity('v_order_detail_planning', stateSql, stateComment, stateCols);
  // entities 配列の末尾に追加(最後の要素 v_mrp_suggestion の後)
  final key = t.indexOf('"entities": [');
  final arrStart = t.indexOf('[', key);
  final arrEnd = _matchEnd(t, arrStart);
  final before = t.substring(0, arrEnd).trimRight();
  t = '$before,\n$e1,\n$e2\n  ${t.substring(arrEnd)}';
  t = rep(t, '"nextId": ${doc['nextId']},', '"nextId": $nextId,', 'pero nextId');
  // mrp_run の本体(JSON の文字列の中)
  final pnl = t.contains(r'status = 3 WHERE status = 0;\r\n') ? r'\r\n' : r'\n';
  String lit(String x) => x.replaceAll('\n', pnl);
  t = rep(t, lit(oldLateral), lit(newJoin), 'pero mrp_run');
  jsonDecode(t);
  File(pp).writeAsStringSync(t);
  print('ok next=$nextId');
}

int _matchEnd(String s, int start) {
  final open = s[start];
  final close = open == '{' ? '}' : ']';
  var depth = 0;
  var inStr = false;
  for (var i = start; i < s.length; i++) {
    final c = s[i];
    if (inStr) {
      if (c == r'\') {
        i++;
      } else if (c == '"') {
        inStr = false;
      }
      continue;
    }
    if (c == '"') {
      inStr = true;
    } else if (c == open) {
      depth++;
    } else if (c == close) {
      depth--;
      if (depth == 0) return i;
    }
  }
  throw StateError('括弧');
}
