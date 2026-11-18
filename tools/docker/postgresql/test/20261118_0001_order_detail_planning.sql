-- 受注明細の計画状況のビュー(v_order_detail_plan・v_order_detail_planning)と、mrp_run の変更の検査。
-- 依頼: tools/docker/postgresql/issue/20261118_0002.md。変更は、すべて ROLLBACK で取り消す(DB は変わらない)。
--
-- 実行(psql。検証用 DB。変更前の mrp_run が入った状態から始める):
--   psql -v ON_ERROR_STOP=1 -d test_avocado -f 20261118_0001_order_detail_planning.sql
-- 手順の中の「★適用」の行で、06_cteate_test.sql の次の 3 つの定義を、このトランザクションの中で流す(\i で、抜き出したファイルを読む):
--   ① CREATE VIEW tests.v_order_detail_plan(とその COMMENT)
--   ② CREATE VIEW tests.v_order_detail_planning(とその COMMENT)
--   ③ CREATE OR REPLACE FUNCTION tests.mrp_run(...)(受注の需要の LEFT JOIN LATERAL を、v_order_detail_plan への結合に替えたもの)
-- 例: psql -v ON_ERROR_STOP=1 -v apply_file=20261118_0001_apply.sql -d test_avocado -f 20261118_0001_order_detail_planning.sql(①②③を、この順に並べたファイル。同じフォルダ)。変数 apply_file が無いときは、適用の段階をスキップする
-- (すでに適用済みの DB で、ビューの検査 T1〜T4 だけを行うとき)。
--
-- 検査の内容:
--   T0 変更前: 旧い mrp_run を、受注MRP・再MRP(全体・範囲指定)で実行し、提案の結果を残す
--   ★適用
--   T1 ビューの行が、旧い mrp_run の需要の探し方(最新の資材計画)と一致する(両方向)
--   T2 planned と trans_resource_plan_id の整合、to_plan の定義(未計画・需要が有る・停止していない)
--   T3 新しい mrp_run の結果が、T0 の結果と一致する(提案の種類・品目・数量・日付・判断・遅れ。件数も)
--   T4 受注MRP が計画する受注明細(mrp_run の需要で、資材計画が無いもの)が、to_plan と一致する
--   T5 実行計画(EXPLAIN)の確認: 旧い探し方と、新しい結合の実行時間を比べる(目安)

\set ON_ERROR_STOP on
\timing on
SET search_path TO tests, public;

BEGIN;

-- 実行者(担当者の履歴が有る担当者 1 人)
SELECT h.info_staff_id AS staff_id INTO TEMP _t_staff
FROM tests.history_info_staff AS h ORDER BY h.history_id LIMIT 1;
SELECT staff_id AS staff FROM _t_staff \gset

-- 範囲指定の再MRP に使う受注明細(資材計画が有るもの 2 件)
SELECT array_agg(x.trans_order_detail_id) AS ids INTO TEMP _t_scope
FROM (SELECT pl.trans_order_detail_id
        FROM tests.trans_resource_plan AS pl
       WHERE pl.remove IS FALSE AND pl.parent_trans_operations_plan_id IS NULL AND pl.trans_order_detail_id IS NOT NULL
       ORDER BY pl.trans_order_detail_id LIMIT 2) AS x;

-- 提案の結果を比べる形にして残す関数(実行の ID を渡す)
CREATE TEMP TABLE _t_sig (label text, kind text, item_id uuid, quantity numeric, need_at timestamp,
                          release_at timestamp, due_at timestamp, decision smallint, late boolean, need_user boolean, n bigint);
CREATE OR REPLACE FUNCTION pg_temp.keep_signature(p_label text, p_run uuid) RETURNS void AS $$
    INSERT INTO _t_sig
    SELECT p_label, s.kind, s.item_id, s.quantity, s.need_at, s.release_at, s.due_at, s.decision, s.late, s.need_user, COUNT(*)
    FROM tests.trans_mrp_suggestion AS s
    WHERE s.trans_mrp_run_id = p_run AND s.remove IS FALSE
    GROUP BY s.kind, s.item_id, s.quantity, s.need_at, s.release_at, s.due_at, s.decision, s.late, s.need_user;
$$ LANGUAGE sql;

-- ---------------------------------------------------------------- T0 変更前
SELECT pg_temp.keep_signature('old_order', (tests.mrp_run(1::smallint, :'staff'::uuid)).trans_mrp_run_id);
SELECT pg_temp.keep_signature('old_redo_all', (tests.mrp_run(2::smallint, :'staff'::uuid)).trans_mrp_run_id);
SELECT pg_temp.keep_signature('old_redo_scoped',
       (tests.mrp_run(2::smallint, :'staff'::uuid, (SELECT ids FROM _t_scope))).trans_mrp_run_id);
-- 旧い探し方での、受注MRP が「計画する」受注明細(T4 の比較元。mrp_run の需要の条件を、そのまま書く)
CREATE TEMP TABLE _t_old_to_plan AS
SELECT od.trans_order_detail_id
FROM tests.trans_order_detail AS od
INNER JOIN tests.trans_order AS o ON o.trans_order_id = od.trans_order_id AND o.remove IS FALSE
INNER JOIN tests.v_order_detail_balance AS ob ON ob.trans_order_detail_id = od.trans_order_detail_id
LEFT JOIN LATERAL (
    SELECT x.trans_resource_plan_id FROM tests.trans_resource_plan AS x
    WHERE x.trans_order_detail_id = od.trans_order_detail_id
      AND x.remove IS FALSE AND x.parent_trans_operations_plan_id IS NULL
    ORDER BY x.register_at DESC LIMIT 1
) AS rp ON TRUE
WHERE od.remove IS FALSE
  AND ob.quantity - ob.cancel_quantity + ob.replacement_quantity > 0
  AND NOT (od.stop IS TRUE)
  AND rp.trans_resource_plan_id IS NULL;
-- 旧い探し方での、受注明細ごとの最新の資材計画(T1 の比較元)
CREATE TEMP TABLE _t_old_plan AS
SELECT od.trans_order_detail_id, rp.trans_resource_plan_id
FROM tests.trans_order_detail AS od
LEFT JOIN LATERAL (
    SELECT x.trans_resource_plan_id FROM tests.trans_resource_plan AS x
    WHERE x.trans_order_detail_id = od.trans_order_detail_id
      AND x.remove IS FALSE AND x.parent_trans_operations_plan_id IS NULL
    ORDER BY x.register_at DESC LIMIT 1
) AS rp ON TRUE;

-- ---------------------------------------------------------------- ★適用
\if :{?apply_file}
  \i :apply_file
\else
  \echo '★適用: apply_file が無いので、スキップ(すでに適用済みの DB として検査する)'
\endif

-- ---------------------------------------------------------------- T1 ビューの行 = 旧い探し方
DO $$
DECLARE a bigint; b bigint; c bigint;
BEGIN
    SELECT COUNT(*) INTO a FROM tests.trans_order_detail;
    SELECT COUNT(*) INTO b FROM tests.v_order_detail_plan;
    IF a <> b THEN RAISE EXCEPTION 'T1: v_order_detail_plan の行数(%)が、受注明細の行数(%)と違う', b, a; END IF;
    SELECT COUNT(*) INTO c FROM (
        (SELECT trans_order_detail_id, trans_resource_plan_id FROM tests.v_order_detail_plan
         EXCEPT SELECT trans_order_detail_id, trans_resource_plan_id FROM _t_old_plan)
        UNION ALL
        (SELECT trans_order_detail_id, trans_resource_plan_id FROM _t_old_plan
         EXCEPT SELECT trans_order_detail_id, trans_resource_plan_id FROM tests.v_order_detail_plan)) AS d;
    -- 同じ register_at の資材計画が複数ある受注明細は、旧い探し方の結果が不定(新しい探し方は、ID で決める)。差が出たときは、その受注明細を確認する
    IF c <> 0 THEN RAISE EXCEPTION 'T1: v_order_detail_plan が、旧い探し方と % 行違う(同じ register_at の資材計画が複数ないか確認)', c; END IF;
    RAISE NOTICE 'T1 OK: v_order_detail_plan % 行が、旧い探し方と一致', b;
END $$;

-- ---------------------------------------------------------------- T2 列の整合
DO $$
DECLARE n bigint;
BEGIN
    SELECT COUNT(*) INTO n FROM tests.v_order_detail_plan WHERE planned IS DISTINCT FROM (trans_resource_plan_id IS NOT NULL);
    IF n <> 0 THEN RAISE EXCEPTION 'T2: planned と trans_resource_plan_id が合わない行が % 件', n; END IF;
    -- to_plan = 未計画・需要が有る・停止していない
    SELECT COUNT(*) INTO n FROM tests.v_order_detail_planning
     WHERE to_plan IS DISTINCT FROM (NOT planned AND has_demand AND stopped IS NOT TRUE);
    IF n <> 0 THEN RAISE EXCEPTION 'T2: to_plan の定義に合わない行が % 件', n; END IF;
    -- 論理削除した資材計画・下位の部品の資材計画だけの受注明細は、未計画
    SELECT COUNT(*) INTO n FROM tests.v_order_detail_planning AS v
     WHERE v.planned AND NOT EXISTS (SELECT 1 FROM tests.trans_resource_plan AS x
                                      WHERE x.trans_order_detail_id = v.trans_order_detail_id
                                        AND x.remove IS FALSE AND x.parent_trans_operations_plan_id IS NULL);
    IF n <> 0 THEN RAISE EXCEPTION 'T2: 資材計画が無いのに planned の行が % 件', n; END IF;
    -- 全部キャンセル済み・停止中は、to_plan にならない
    SELECT COUNT(*) INTO n FROM tests.v_order_detail_planning AS v
      JOIN tests.v_order_detail_balance AS b USING (trans_order_detail_id)
     WHERE v.to_plan AND (b.cancel_closed OR b.stop);
    IF n <> 0 THEN RAISE EXCEPTION 'T2: 全部キャンセル済み・停止中の受注明細が to_plan の行が % 件', n; END IF;
    -- ビューの行は、論理削除した受注の受注明細を含まない
    SELECT COUNT(*) INTO n FROM tests.v_order_detail_planning AS v
      JOIN tests.trans_order AS o ON o.trans_order_id = v.trans_order_id WHERE o.remove IS TRUE;
    IF n <> 0 THEN RAISE EXCEPTION 'T2: 論理削除した受注の受注明細が % 件', n; END IF;
    RAISE NOTICE 'T2 OK';
END $$;

-- ---------------------------------------------------------------- T4 to_plan = 受注MRP が計画する受注明細(旧い定義)
DO $$
DECLARE a bigint; b bigint;
BEGIN
    SELECT COUNT(*) INTO a FROM (
        (SELECT trans_order_detail_id FROM tests.v_order_detail_planning WHERE to_plan
         EXCEPT SELECT trans_order_detail_id FROM _t_old_to_plan)
        UNION ALL
        (SELECT trans_order_detail_id FROM _t_old_to_plan
         EXCEPT SELECT trans_order_detail_id FROM tests.v_order_detail_planning WHERE to_plan)) AS d;
    IF a <> 0 THEN RAISE EXCEPTION 'T4: to_plan が、mrp_run の需要の条件(旧い定義)と % 行違う', a; END IF;
    SELECT COUNT(*) INTO b FROM tests.v_order_detail_planning WHERE to_plan;
    RAISE NOTICE 'T4 OK: to_plan % 件が、mrp_run の需要の条件と一致', b;
END $$;

-- ---------------------------------------------------------------- T3 新しい mrp_run の結果 = 旧い結果
SELECT pg_temp.keep_signature('new_order', (tests.mrp_run(1::smallint, :'staff'::uuid)).trans_mrp_run_id);
SELECT pg_temp.keep_signature('new_redo_all', (tests.mrp_run(2::smallint, :'staff'::uuid)).trans_mrp_run_id);
SELECT pg_temp.keep_signature('new_redo_scoped',
       (tests.mrp_run(2::smallint, :'staff'::uuid, (SELECT ids FROM _t_scope))).trans_mrp_run_id);

DO $$
DECLARE pair text; a text; b text; c bigint; total bigint;
BEGIN
    FOREACH pair IN ARRAY ARRAY['order', 'redo_all', 'redo_scoped'] LOOP
        a := 'old_' || pair; b := 'new_' || pair;
        SELECT COUNT(*) INTO c FROM (
            (SELECT kind, item_id, quantity, need_at, release_at, due_at, decision, late, need_user, n FROM _t_sig WHERE label = a
             EXCEPT SELECT kind, item_id, quantity, need_at, release_at, due_at, decision, late, need_user, n FROM _t_sig WHERE label = b)
            UNION ALL
            (SELECT kind, item_id, quantity, need_at, release_at, due_at, decision, late, need_user, n FROM _t_sig WHERE label = b
             EXCEPT SELECT kind, item_id, quantity, need_at, release_at, due_at, decision, late, need_user, n FROM _t_sig WHERE label = a)) AS d;
        SELECT COALESCE(SUM(n), 0) INTO total FROM _t_sig WHERE label = a;
        IF c <> 0 THEN RAISE EXCEPTION 'T3: % の提案が、変更前と % 種類違う(変更前の提案の件数 %)', pair, c, total; END IF;
        RAISE NOTICE 'T3 OK: % の提案(% 件)が、変更前と一致', pair, total;
    END LOOP;
END $$;

-- ---------------------------------------------------------------- T5 実行時間の目安
-- 旧い探し方(mrp_run の受注の需要の部分だけ)と、新しい結合を、同じ条件で比べる。差が大きい(2 倍以上)ときは、実行計画を確認する
\echo '--- T5(旧い探し方)'
EXPLAIN (ANALYZE, BUFFERS, TIMING OFF)
SELECT COUNT(*) FROM tests.trans_order_detail AS od
INNER JOIN tests.trans_order AS o ON o.trans_order_id = od.trans_order_id AND o.remove IS FALSE
INNER JOIN tests.v_order_detail_balance AS ob ON ob.trans_order_detail_id = od.trans_order_detail_id
LEFT JOIN LATERAL (
    SELECT x.* FROM tests.trans_resource_plan AS x
    WHERE x.trans_order_detail_id = od.trans_order_detail_id
      AND x.remove IS FALSE AND x.parent_trans_operations_plan_id IS NULL
    ORDER BY x.register_at DESC LIMIT 1
) AS rp ON TRUE
WHERE od.remove IS FALSE AND ob.quantity - ob.cancel_quantity + ob.replacement_quantity > 0;
\echo '--- T5(新しい結合)'
EXPLAIN (ANALYZE, BUFFERS, TIMING OFF)
SELECT COUNT(*) FROM tests.trans_order_detail AS od
INNER JOIN tests.trans_order AS o ON o.trans_order_id = od.trans_order_id AND o.remove IS FALSE
INNER JOIN tests.v_order_detail_balance AS ob ON ob.trans_order_detail_id = od.trans_order_detail_id
LEFT JOIN tests.v_order_detail_plan AS pl ON pl.trans_order_detail_id = od.trans_order_detail_id
LEFT JOIN tests.trans_resource_plan AS rp ON rp.trans_resource_plan_id = pl.trans_resource_plan_id
WHERE od.remove IS FALSE AND ob.quantity - ob.cancel_quantity + ob.replacement_quantity > 0;

\echo '全部の検査が通りました(ROLLBACK で、DB を元に戻します)'
ROLLBACK;
