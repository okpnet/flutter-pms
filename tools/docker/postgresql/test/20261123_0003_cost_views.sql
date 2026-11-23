-- 20261123_0003 原価計算のビュー(v_item_unit_cost・v_visiter_valuation・v_item_valuation)の検査 K1〜K5
-- 実行: node runtest.js <.env> NONE 20261123_0003_cost_views_ddl.sql 20261123_0003_cost_views.sql
--   ビューが DB に適用済みなら、このファイルだけでよい。最後に ROLLBACK するのでデータは変わらない。
-- 検証用 DB のダミーデータで、ビューの値の関係(不変条件)を確かめる。
DO $$
DECLARE n1 int; n2 int; bad int; s1 numeric; s2 numeric;
BEGIN
    -- K1: 品目ごとに 1 行
    SELECT count(*) INTO n1 FROM tests.v_item_unit_cost;
    SELECT count(*) INTO n2 FROM tests.mstr_item WHERE remove IS FALSE;
    IF n1 <> n2 THEN RAISE EXCEPTION 'K1 NG: 原価の行 % ≠ 品目 %', n1, n2; END IF;
    RAISE NOTICE 'K1 OK (% 品目)', n1;

    -- K2: 部品表に下位が無い品目は、標準原価 = 購入品 + 生産コスト
    SELECT count(*) INTO bad FROM tests.v_item_unit_cost
     WHERE NOT has_components AND unit_cost <> purchase_cost + production_cost;
    IF bad > 0 THEN RAISE EXCEPTION 'K2 NG: % 件', bad; END IF;
    RAISE NOTICE 'K2 OK';

    -- K3: 部品表に下位がある品目は、標準原価 = 自分の原価 + 下位の部品の原価
    SELECT count(*) INTO bad FROM tests.v_item_unit_cost
     WHERE has_components AND unit_cost <> purchase_cost + production_cost + component_cost;
    IF bad > 0 THEN RAISE EXCEPTION 'K3 NG: % 件', bad; END IF;
    RAISE NOTICE 'K3 OK';

    -- K4: 社外の所有物は評価しない(単価 NULL・評価額 0)。譲渡で自社の物になった材料は 0 円
    SELECT count(*) INTO bad FROM tests.v_visiter_valuation
     WHERE (external_owned AND (unit_value IS NOT NULL OR amount <> 0 OR evaluated))
        OR (transferred AND (unit_value <> 0 OR amount <> 0));
    IF bad > 0 THEN RAISE EXCEPTION 'K4 NG: % 件', bad; END IF;
    RAISE NOTICE 'K4 OK';

    -- K5: 品目別の評価額の合計 = ロット別の評価額の合計
    SELECT COALESCE(sum(amount), 0) INTO s1 FROM tests.v_item_valuation;
    SELECT COALESCE(sum(amount), 0) INTO s2 FROM tests.v_visiter_valuation;
    IF s1 <> s2 THEN RAISE EXCEPTION 'K5 NG: % ≠ %', s1, s2; END IF;
    RAISE NOTICE 'K5 OK';
END $$;
