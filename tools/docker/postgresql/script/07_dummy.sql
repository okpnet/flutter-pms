-- =====================================================================
-- 07_dummy.sql  ダミーデータ(検証用 DB の初期データ)
--
-- 旧 10_mrp_dummy.sql・11_barcode_dummy.sql・14_app_admin_dummy.sql・15_user_dummy.sql と、
-- キャンセル・返品・精算・支給のマスタ(doc/query の案)を、順に 1 つにまとめた。
-- DB は毎回 1 から(ダミーを含めて)再構築する。ER のデータ(PERO)から出力した 06_cteate_test.sql の関数・トリガー・
-- チェック制約・索引は 06 に入っている(旧 12_cancel_supply_constraints.sql・13_visiter_owner.sql は 06 に統合した)。
--
-- ■ 実行順   05 → 06_cteate_test.sql → 本ファイル → 09_grant_test.sql
--   ・各節の先頭で \c test_avocado により接続し直す(節ごとに独立したセッション。一時関数・一時表は節の中だけ)
--   ・管理者の担当者のコードは、psql の変数 admin_code(既定 ADMIN)で変えられる
--       psql -d test_avocado -v admin_code=ADMINISTRATOR -f 07_dummy.sql
--   ・最後の節で、棚ビジターの所有者(trans_visiter_owner)をそろえる(visiter_owner_rebuild)
-- ■ 節
--   1. MRP のダミー(マスタ・受注・非計上・在庫・発注残)   旧 10_mrp_dummy.sql
--   2. バーコード実績登録のダミー(点検・保留・異常)        旧 11_barcode_dummy.sql
--   3. 管理者の担当者(コードを変えるとき)                  旧 14_app_admin_dummy.sql
--   4. 一般の利用者の担当者(TANAKA・SUZUKI・SATO)         旧 15_user_dummy.sql
--   5. キャンセル・返品・精算・支給のマスタ                 doc/query/20261116_0005
--   6. 棚ビジターの所有者をそろえる
--   7. 標準の承認パターン(承認不要)と、文書の承認パターンの設定
--   8. 標準の文書(文書階層・品質マニュアル・品質手順書とそのページ)
--   9. 作業実績・支給のダミー(実績の原価・社外の所有物の確認用)
--  10. 監査のダミー(監査標準・項目・監査の計画。ログイン時の通知づくりの確認用)
-- =====================================================================

-- 管理者の担当者のコード(14 の節で使う)。-v admin_code=... で渡さなければ ADMIN
\if :{?admin_code}
\else
  \set admin_code ADMIN
\endif

-- #####################################################################
-- 1. MRP のダミー(旧 10_mrp_dummy.sql)
-- #####################################################################
-- =====================================================================
-- 10_mrp_dummy.sql
-- MRPを実行する直前までのダミーデータ (マスタ・受注・非計上・在庫・発注残)
--
-- ■ 実行順   05 → 06_cteate_test.sql(MRP・棚ビジターの関数を含む) → 09_grant_test.sql → 本ファイル
--   ・言語 ja / en・会社・担当者 (info_staff.code = 'ADMIN') は、既にあればそれを使い、無ければ作る
--   ・アプリ (info_app.name = 'Product Manufacturing System') も、既にあればそれを使い、無ければ作る
--   ・日付はすべて実行日 (current_date) からの相対値。いつ流しても同じ関係になる
--   ・IDは trg_01 が採番するので、すべて RETURNING で受け取る
--   ・空のDBに1回だけ流す想定 (2回流すとコード重複のデータができる)
--
-- ■ 題材: 制御ボックス (板金筐体 + ブラケット + 制御基板 + ねじ)
--
--   P-100 制御ボックス A型  [内製]  組立 → 検査
--     ├ CS-110 筐体          ×1 [内製]  レーザー切断 → 曲げ → 溶接(内部/外部) → 塗装(外部) → 検査
--     │   └ MT-SPCC 鋼板     ×1 [購買]
--     ├ BR-120 ブラケット    ×2 [内製/購買]  レーザー切断 → 曲げ → めっき(外部)  ／ 板金工房から購入も可
--     │   └ MT-SPCC 鋼板     ×0.2
--     ├ PCB-130 制御基板     ×1 [購買・言い値]
--     └ SC-M4 ねじ M4        ×8 [購買]
--   P-200 制御ボックス B型  [内製]  組立 → 検査
--     ├ CS-110 ×1 / BR-120 ×4 / PCB-130 ×2 / SC-M4 ×12
--
-- ■ MRPで確認できること
--   ・多段の部品表、共通部品 (CS-110 / BR-120 / MT-SPCC は複数の親を持つ)
--   ・内製と購買の選択 (BR-120: catalog_item = true かつ工程あり)
--   ・外部のみの工程 (塗装・めっき)、内部優先で外部も可の工程 (溶接)
--   ・設備が2台ある工程 (曲げ: PB01 優先1 / PB02 優先2)
--   ・仕入先の優先順位・最小発注数・ロット・検品時間・言い値
--   ・安全在庫 (鋼板・ねじ)、現在庫 (鋼板・ねじの受入済み)、発注残 (制御基板)
--   ・納期が厳しい受注 (O-0004: 10日後) → 遅れ・要判断
--   ・同じ納期の受注が3件 (O-0001/0005/0006: 21日後) → 設備の過負荷 → 外部に出せる工程は外注の検討(要判断)
--   ・稼働カレンダー (会社標準 + レーザー加工機の保全日)
-- =====================================================================

-- 06_cteate_test.sql と同じDBに接続する (Dockerの初期化スクリプトは POSTGRES_DB で実行されるため)
\c test_avocado

-- ---------------------------------------------------------------------
-- 補助関数 (このセッションだけの一時関数。DBには残らない)
-- ---------------------------------------------------------------------
-- 呼称を作る (辞書 → 辞書の値(ja/en) → 呼称)
CREATE OR REPLACE FUNCTION pg_temp.nm(p_ja varchar, p_en varchar DEFAULT NULL) RETURNS uuid AS $$
DECLARE d uuid; a uuid;
BEGIN
    INSERT INTO tests.shared_dictionary (remarks) VALUES (NULL) RETURNING shared_dictionary_id INTO d;
    INSERT INTO tests.shared_dictionary_value (shared_dictionary_id, shared_language_code_id, dictionary_value)
    SELECT d, l.shared_language_code_id, v.val
    FROM (VALUES ('ja', p_ja), ('en', p_en)) AS v(code, val)
    INNER JOIN tests.shared_language_code AS l ON l.code = v.code AND l.remove IS FALSE
    WHERE v.val IS NOT NULL;
    INSERT INTO tests.shared_appellations (shared_dictionary_name_id) VALUES (d) RETURNING shared_appellations_id INTO a;
    RETURN a;
END $$ LANGUAGE plpgsql;

-- 最新の履歴ID
CREATE OR REPLACE FUNCTION pg_temp.hist(p_table text, p_id uuid) RETURNS uuid AS $$
DECLARE v uuid;
BEGIN
    EXECUTE format('SELECT history_id FROM tests.%I WHERE %I = $1 ORDER BY revision DESC LIMIT 1',
                   'history_' || p_table, p_table || '_id') USING p_id INTO v;
    RETURN v;
END $$ LANGUAGE plpgsql;

-- 作ったIDを名前で引けるようにしておく
CREATE TEMP TABLE _id (k text PRIMARY KEY, v uuid NOT NULL);
CREATE OR REPLACE FUNCTION pg_temp.id(p_k text) RETURNS uuid AS $$
DECLARE v uuid;
BEGIN
    SELECT _id.v INTO v FROM _id WHERE _id.k = p_k;
    IF v IS NULL THEN RAISE EXCEPTION 'ダミーデータ: % が見つかりません', p_k; END IF;
    RETURN v;
END $$ LANGUAGE plpgsql;

BEGIN;

-- ---------------------------------------------------------------------
-- 0. 前提 (言語・会社・担当者)
--    既にあればそれを使い、無ければここで作る
-- ---------------------------------------------------------------------
DO $$
DECLARE c uuid;
BEGIN
    IF EXISTS (SELECT 1 FROM tests.mstr_item WHERE code = 'P-100') THEN
        RAISE EXCEPTION 'ダミーデータは登録済みです (品目 P-100 があります)';
    END IF;

    IF NOT EXISTS (SELECT 1 FROM tests.shared_language_code WHERE code = 'ja') THEN
        INSERT INTO tests.shared_language_code (code, label, priority, is_default) VALUES ('ja', '日本語', 1, true);
        RAISE NOTICE '言語コード ja を作りました';
    END IF;
    IF NOT EXISTS (SELECT 1 FROM tests.shared_language_code WHERE code = 'en') THEN
        INSERT INTO tests.shared_language_code (code, label, priority, is_default) VALUES ('en', 'English', 2, false);
        RAISE NOTICE '言語コード en を作りました';
    END IF;

    IF NOT EXISTS (SELECT 1 FROM tests.info_staff WHERE code = 'ADMIN' AND remove IS FALSE) THEN
        SELECT info_company_id INTO c FROM tests.info_company WHERE remove IS FALSE ORDER BY update_at LIMIT 1;
        IF c IS NULL THEN
            INSERT INTO tests.info_company (names) VALUES (pg_temp.nm('株式会社サンプル', 'Sample Co., Ltd.'))
            RETURNING info_company_id INTO c;
            RAISE NOTICE '会社 (株式会社サンプル) を作りました';
        END IF;
        INSERT INTO tests.info_staff (info_company_id, code, names) VALUES (c, 'ADMIN', pg_temp.nm('管理者', 'Administrator'));
        RAISE NOTICE '担当者 ADMIN を作りました (サインは作っていません)';
    END IF;
END $$;

-- アプリ (システムのアプリID)。会社は ADMIN の会社に紐付ける
INSERT INTO tests.info_app (info_company_id, name)
SELECT s.info_company_id, 'Product Manufacturing System'
FROM tests.info_staff AS s
WHERE s.code = 'ADMIN' AND s.remove IS FALSE
  AND NOT EXISTS (SELECT 1 FROM tests.info_app AS a WHERE a.name = 'Product Manufacturing System')
ORDER BY s.update_at
LIMIT 1;

-- ---------------------------------------------------------------------
-- 1. 単位・品目種別・ロット
-- ---------------------------------------------------------------------
DO $$
DECLARE v uuid;
BEGIN
    INSERT INTO tests.shared_unit (names) VALUES (pg_temp.nm('個', 'pcs')) RETURNING shared_unit_id INTO v;   INSERT INTO _id VALUES ('U_PCS', v);
    INSERT INTO tests.shared_unit (names) VALUES (pg_temp.nm('枚', 'sheet')) RETURNING shared_unit_id INTO v; INSERT INTO _id VALUES ('U_SHEET', v);
    INSERT INTO tests.shared_unit (names) VALUES (pg_temp.nm('台', 'unit')) RETURNING shared_unit_id INTO v;  INSERT INTO _id VALUES ('U_UNIT', v);

    INSERT INTO tests.mstr_item_kind (code, names) VALUES ('PRD', pg_temp.nm('製品', 'Product')) RETURNING mstr_item_kind_id INTO v;        INSERT INTO _id VALUES ('K_PRD', v);
    INSERT INTO tests.mstr_item_kind (code, names) VALUES ('SEMI', pg_temp.nm('半製品', 'Semi-finished')) RETURNING mstr_item_kind_id INTO v; INSERT INTO _id VALUES ('K_SEMI', v);
    INSERT INTO tests.mstr_item_kind (code, names) VALUES ('MAT', pg_temp.nm('購買品', 'Purchased')) RETURNING mstr_item_kind_id INTO v;     INSERT INTO _id VALUES ('K_MAT', v);
    INSERT INTO tests.mstr_item_kind (code, names) VALUES ('EQ', pg_temp.nm('設備', 'Equipment')) RETURNING mstr_item_kind_id INTO v;       INSERT INTO _id VALUES ('K_EQ', v);

    -- ロット (安全在庫・ロットサイズ)
    INSERT INTO tests.mstr_item_lot (safety_inventory, lot_size, shared_unit_id, remarks)
    VALUES (0, 0, pg_temp.id('U_PCS'), '標準(ロットなし)') RETURNING mstr_item_lot_id INTO v;     INSERT INTO _id VALUES ('L_STD', v);
    INSERT INTO tests.mstr_item_lot (safety_inventory, lot_size, shared_unit_id, remarks)
    VALUES (0, 10, pg_temp.id('U_PCS'), '筐体 10個単位') RETURNING mstr_item_lot_id INTO v;        INSERT INTO _id VALUES ('L_CASE', v);
    INSERT INTO tests.mstr_item_lot (safety_inventory, lot_size, shared_unit_id, remarks)
    VALUES (0, 50, pg_temp.id('U_PCS'), 'ブラケット 50個単位') RETURNING mstr_item_lot_id INTO v;  INSERT INTO _id VALUES ('L_BRACKET', v);
    INSERT INTO tests.mstr_item_lot (safety_inventory, lot_size, shared_unit_id, remarks)
    VALUES (20, 10, pg_temp.id('U_SHEET'), '鋼板 安全在庫20枚 10枚単位') RETURNING mstr_item_lot_id INTO v; INSERT INTO _id VALUES ('L_SPCC', v);
    INSERT INTO tests.mstr_item_lot (safety_inventory, lot_size, shared_unit_id, remarks)
    VALUES (500, 1000, pg_temp.id('U_PCS'), 'ねじ 安全在庫500 1000本単位') RETURNING mstr_item_lot_id INTO v; INSERT INTO _id VALUES ('L_SCREW', v);
END $$;

-- ---------------------------------------------------------------------
-- 2. 品目
-- ---------------------------------------------------------------------
DO $$
DECLARE r record; v uuid;
BEGIN
    FOR r IN SELECT * FROM (VALUES
        -- key        code       名称(ja)                 名称(en)                 種別      単位       ロット       購買品フラグ
        ('P100',  'P-100',   '制御ボックス A型',      'Control box A',        'K_PRD',  'U_UNIT',  'L_STD',     false),
        ('P200',  'P-200',   '制御ボックス B型',      'Control box B',        'K_PRD',  'U_UNIT',  'L_STD',     false),
        ('CS110', 'CS-110',  '筐体',                  'Case',                 'K_SEMI', 'U_PCS',   'L_CASE',    false),
        ('BR120', 'BR-120',  'ブラケット',            'Bracket',              'K_SEMI', 'U_PCS',   'L_BRACKET', true),   -- 内製/購買の選択
        ('PCB130','PCB-130', '制御基板',              'Control PCB',          'K_MAT',  'U_PCS',   'L_STD',     true),
        ('SPCC',  'MT-SPCC', '鋼板 SPCC t1.6 4×8',   'Steel sheet SPCC t1.6','K_MAT',  'U_SHEET', 'L_SPCC',    true),
        ('SCM4',  'SC-M4',   'ねじ M4×8',             'Screw M4x8',           'K_MAT',  'U_PCS',   'L_SCREW',   true),
        -- 設備 (mstr_equipment が品目を参照する)
        ('EQ_LS01','EQ-LS01','ファイバーレーザー加工機','Fiber laser',         'K_EQ',   'U_UNIT',  NULL,        false),
        ('EQ_PB01','EQ-PB01','プレスブレーキ 1号機',  'Press brake #1',       'K_EQ',   'U_UNIT',  NULL,        false),
        ('EQ_PB02','EQ-PB02','プレスブレーキ 2号機',  'Press brake #2',       'K_EQ',   'U_UNIT',  NULL,        false),
        ('EQ_WD01','EQ-WD01','溶接ロボット',          'Welding robot',        'K_EQ',   'U_UNIT',  NULL,        false),
        ('EQ_AS01','EQ-AS01','組立ライン',            'Assembly line',        'K_EQ',   'U_UNIT',  NULL,        false),
        ('EQ_IN01','EQ-IN01','検査台',                'Inspection bench',     'K_EQ',   'U_UNIT',  NULL,        false)
    ) AS t(k, code, ja, en, kind, unit, lot, catalog) LOOP
        INSERT INTO tests.mstr_item (mstr_item_kind_id, code, names, shared_unit_id, mstr_item_lot_id, catalog_item)
        VALUES (pg_temp.id(r.kind), r.code, pg_temp.nm(r.ja, r.en), pg_temp.id(r.unit),
                CASE WHEN r.lot IS NULL THEN NULL ELSE pg_temp.id(r.lot) END, r.catalog)
        RETURNING mstr_item_id INTO v;
        INSERT INTO _id VALUES (r.k, v);
    END LOOP;
END $$;

-- 品目体系 (部品表)
DO $$
DECLARE r record;
BEGIN
    FOR r IN SELECT * FROM (VALUES
        ('P100', 'CS110', 1::numeric), ('P100', 'BR120', 2), ('P100', 'PCB130', 1), ('P100', 'SCM4', 8),
        ('P200', 'CS110', 1),          ('P200', 'BR120', 4), ('P200', 'PCB130', 2), ('P200', 'SCM4', 12),
        ('CS110', 'SPCC', 1),
        ('BR120', 'SPCC', 0.2)
    ) AS t(parent, child, qty) LOOP
        INSERT INTO tests.mstr_item_tree (parent_mstr_item_id, mstr_item_id, names, quantity)
        VALUES (pg_temp.id(r.parent), pg_temp.id(r.child),
                pg_temp.nm((SELECT code FROM tests.mstr_item WHERE mstr_item_id = pg_temp.id(r.parent)) || ' ← ' ||
                           (SELECT code FROM tests.mstr_item WHERE mstr_item_id = pg_temp.id(r.child))),
                r.qty);
    END LOOP;
END $$;

-- ---------------------------------------------------------------------
-- 3. 利害関係者 (得意先・仕入先・外注先)
-- ---------------------------------------------------------------------
DO $$
DECLARE r record; v uuid;
BEGIN
    FOR r IN SELECT * FROM (VALUES
        -- key        code     名称                  得意先  仕入先
        ('C_TOWA',  'C001', '東和機械株式会社',     true,  false),
        ('C_KITA',  'C002', '北関東電機株式会社',   true,  false),
        ('S_STEEL1','S001', '鉄鋼商事株式会社',     false, true),
        ('S_STEEL2','S002', '関東鋼材株式会社',     false, true),
        ('S_ELEC',  'S003', '日昇電子工業株式会社', false, true),
        ('S_SCREW', 'S004', 'ねじ商会',             false, true),
        ('S_SHEET', 'S005', '板金工房ミヤタ',       false, true),
        ('V_PAINT', 'V001', '塗装工業株式会社',     false, true),
        ('V_PLATE', 'V002', 'めっき工業株式会社',   false, true),
        ('V_WELD',  'V003', '溶接協力会',           false, true)
    ) AS t(k, code, ja, cust, sup) LOOP
        INSERT INTO tests.mstr_stakeholder (code, names, is_customer, is_supplier)
        VALUES (r.code, pg_temp.nm(r.ja), r.cust, r.sup)
        RETURNING mstr_stakeholder_id INTO v;
        INSERT INTO _id VALUES (r.k, v);
    END LOOP;
END $$;

-- ---------------------------------------------------------------------
-- 4. 設備
-- ---------------------------------------------------------------------
DO $$
DECLARE r record; v uuid;
BEGIN
    FOR r IN SELECT * FROM (VALUES
        ('E_LS01', 'EQ_LS01', 'LS01'), ('E_PB01', 'EQ_PB01', 'PB01'), ('E_PB02', 'EQ_PB02', 'PB02'),
        ('E_WD01', 'EQ_WD01', 'WD01'), ('E_AS01', 'EQ_AS01', 'AS01'), ('E_IN01', 'EQ_IN01', 'IN01')
    ) AS t(k, item, code) LOOP
        INSERT INTO tests.mstr_equipment (mstr_item_id, code) VALUES (pg_temp.id(r.item), r.code)
        RETURNING mstr_equipment_id INTO v;
        INSERT INTO _id VALUES (r.k, v);
    END LOOP;
END $$;

-- ---------------------------------------------------------------------
-- 5. 工程・工程場所 (内部=利用可能設備 / 外部=利用可能外部)
-- ---------------------------------------------------------------------
DO $$
DECLARE r record; v uuid; tl uuid;
BEGIN
    FOR r IN SELECT * FROM (VALUES
        ('T_LASER', 'LASER', 'レーザー切断', 'Laser cutting'),
        ('T_BEND',  'BEND',  '曲げ',         'Bending'),
        ('T_WELD',  'WELD',  '溶接',         'Welding'),
        ('T_PAINT', 'PAINT', '塗装',         'Painting'),
        ('T_PLATE', 'PLATE', 'めっき',       'Plating'),
        ('T_ASSY',  'ASSY',  '組立',         'Assembly'),
        ('T_INSP',  'INSP',  '検査',         'Inspection')
    ) AS t(k, code, ja, en) LOOP
        INSERT INTO tests.mstr_task (code, names) VALUES (r.code, pg_temp.nm(r.ja, r.en)) RETURNING mstr_task_id INTO v;
        INSERT INTO _id VALUES (r.k, v);
    END LOOP;

    -- 内部: 工程場所 + 利用可能設備 (delivery_interval = 次工程への引き渡し時間・暦時間)
    FOR r IN SELECT * FROM (VALUES
        ('TL_LASER',  'T_LASER', 1, 'E_LS01', '02:00:00'::interval),
        ('TL_BEND1',  'T_BEND',  1, 'E_PB01', '01:00:00'),
        ('TL_BEND2',  'T_BEND',  2, 'E_PB02', '01:00:00'),
        ('TL_WELD_IN','T_WELD',  1, 'E_WD01', '02:00:00'),
        ('TL_ASSY',   'T_ASSY',  1, 'E_AS01', '00:00:00'),
        ('TL_INSP',   'T_INSP',  1, 'E_IN01', '00:00:00')
    ) AS t(k, task, prio, eq, dlv) LOOP
        INSERT INTO tests.mstr_task_location (mstr_task_id, priority) VALUES (pg_temp.id(r.task), r.prio)
        RETURNING mstr_task_location_id INTO tl;
        INSERT INTO _id VALUES (r.k, tl);
        INSERT INTO tests.mstr_equipment_available (mstr_task_location_id, mstr_equipment_id, delivery_interval)
        VALUES (tl, pg_temp.id(r.eq), r.dlv) RETURNING mstr_equipment_available_id INTO v;
        INSERT INTO _id VALUES ('EA_' || substr(r.k, 4), v);
    END LOOP;

    -- 外部: 工程場所 + 利用可能外部 (材料支給あり・無償)
    FOR r IN SELECT * FROM (VALUES
        ('TL_WELD_OUT', 'T_WELD',  2, 'V_WELD',  '48:00:00'::interval),
        ('TL_PAINT',    'T_PAINT', 1, 'V_PAINT', '72:00:00'),
        ('TL_PLATE',    'T_PLATE', 1, 'V_PLATE', '72:00:00')
    ) AS t(k, task, prio, vendor, dlv) LOOP
        INSERT INTO tests.mstr_task_location (mstr_task_id, priority) VALUES (pg_temp.id(r.task), r.prio)
        RETURNING mstr_task_location_id INTO tl;
        INSERT INTO _id VALUES (r.k, tl);
        INSERT INTO tests.mstr_outsource_available (mstr_task_location_id, mstr_stakeholder_id, delivery_interval, material_supply, paid_supply)
        VALUES (tl, pg_temp.id(r.vendor), r.dlv, true, false) RETURNING mstr_outsource_available_id INTO v;
        INSERT INTO _id VALUES ('OA_' || substr(r.k, 4), v);
    END LOOP;
END $$;

-- ---------------------------------------------------------------------
-- 6. 工程運用 (ルーティング) と品目工程運用 (標準時間 = 1ロットあたり)
-- ---------------------------------------------------------------------
DO $$
DECLARE r record; v uuid; ot uuid;
BEGIN
    FOR r IN SELECT * FROM (VALUES
        ('OP_CASE',    '筐体 加工'),
        ('OP_BRACKET', 'ブラケット 加工'),
        ('OP_BOX',     '制御ボックス 組立')
    ) AS t(k, ja) LOOP
        INSERT INTO tests.mstr_operation (names) VALUES (pg_temp.nm(r.ja)) RETURNING mstr_operation_id INTO v;
        INSERT INTO _id VALUES (r.k, v);
    END LOOP;

    FOR r IN SELECT * FROM (VALUES
        -- 工程運用      工程       順  品目      標準時間
        ('OP_CASE',    'T_LASER', 1, 'CS110', '03:00:00'::interval),
        ('OP_CASE',    'T_BEND',  2, 'CS110', '04:00:00'),
        ('OP_CASE',    'T_WELD',  3, 'CS110', '08:00:00'),
        ('OP_CASE',    'T_PAINT', 4, 'CS110', '24:00:00'),
        ('OP_CASE',    'T_INSP',  5, 'CS110', '02:00:00'),
        ('OP_BRACKET', 'T_LASER', 1, 'BR120', '01:30:00'),
        ('OP_BRACKET', 'T_BEND',  2, 'BR120', '02:00:00'),
        ('OP_BRACKET', 'T_PLATE', 3, 'BR120', '24:00:00'),
        ('OP_BOX',     'T_ASSY',  1, 'P100',  '06:00:00'),
        ('OP_BOX',     'T_INSP',  2, 'P100',  '02:00:00'),
        ('OP_BOX',     'T_ASSY',  1, 'P200',  '08:00:00'),
        ('OP_BOX',     'T_INSP',  2, 'P200',  '03:00:00')
    ) AS t(op, task, seq, item, iv) LOOP
        SELECT o.mstr_operation_task_id INTO ot FROM tests.mstr_operation_task AS o
        WHERE o.mstr_operation_id = pg_temp.id(r.op) AND o.mstr_task_id = pg_temp.id(r.task) AND o.sequence = r.seq;
        IF ot IS NULL THEN
            INSERT INTO tests.mstr_operation_task (mstr_operation_id, mstr_task_id, sequence, names)
            VALUES (pg_temp.id(r.op), pg_temp.id(r.task), r.seq,
                    pg_temp.nm((SELECT code FROM tests.mstr_task WHERE mstr_task_id = pg_temp.id(r.task))))
            RETURNING mstr_operation_task_id INTO ot;
        END IF;
        INSERT INTO tests.mstr_item_operation_task (mstr_operation_task_id, mstr_item_id, sequence, default_interval)
        VALUES (ot, pg_temp.id(r.item), r.seq, r.iv);
    END LOOP;
END $$;

-- 外注単価 (品目 × 工程場所)
INSERT INTO tests.mstr_item_task_cost (mstr_item_id, mstr_task_location_id, cost) VALUES
    (pg_temp.id('CS110'), pg_temp.id('TL_WELD_OUT'), 1500),
    (pg_temp.id('CS110'), pg_temp.id('TL_PAINT'),    1200),
    (pg_temp.id('BR120'), pg_temp.id('TL_PLATE'),     150);

-- ---------------------------------------------------------------------
-- 7. 品目仕入先
-- ---------------------------------------------------------------------
INSERT INTO tests.mstr_item_supplier
    (mstr_item_id, mstr_stakeholder_id, priority, supplier_item_code, delivery_time, quality_inspection_time, minimum_lot_size, cost, asking_price, remarks)
VALUES
    -- 鋼板: 鉄鋼商事が優先1、関東鋼材は優先2 (納期は短いが高い)
    (pg_temp.id('SPCC'),   pg_temp.id('S_STEEL1'), 1, 'SPCC16-48', '120:00:00', '02:00:00', 10,   3500, false, NULL),
    (pg_temp.id('SPCC'),   pg_temp.id('S_STEEL2'), 2, 'K-SPCC1.6', '48:00:00',  '02:00:00', 5,    4200, false, NULL),
    -- 制御基板: 言い値 (単価未定)・検品4h
    (pg_temp.id('PCB130'), pg_temp.id('S_ELEC'),   1, 'NS-CB130',  '336:00:00', '04:00:00', 5,    0,    true,  '単価は都度見積'),
    -- ねじ: 最小1000本
    (pg_temp.id('SCM4'),   pg_temp.id('S_SCREW'),  1, 'M4-8-SUS',  '48:00:00',  '00:00:00', 1000, 3,    false, NULL),
    -- ブラケット: 購入も可 (内製と比較される)
    (pg_temp.id('BR120'),  pg_temp.id('S_SHEET'),  1, 'MY-BR120',  '168:00:00', '01:00:00', 50,   480,  false, NULL);

-- ---------------------------------------------------------------------
-- 8. 稼働カレンダー (今日から90日。会社標準 + レーザー加工機の保全日)
-- ---------------------------------------------------------------------
INSERT INTO tests.mstr_work_calendar (work_date, mstr_equipment_id, start_time, work_interval, holiday, remarks)
SELECT g::date, NULL, '08:00', CASE WHEN EXTRACT(ISODOW FROM g) >= 6 THEN '00:00'::interval ELSE '08:00'::interval END,
       EXTRACT(ISODOW FROM g) >= 6, NULL
FROM generate_series(current_date, current_date + 89, INTERVAL '1 day') AS g;

-- レーザー加工機: 7日後以降の最初の平日は保全で停止
INSERT INTO tests.mstr_work_calendar (work_date, mstr_equipment_id, start_time, work_interval, holiday, remarks)
SELECT d, pg_temp.id('E_LS01'), '08:00', '00:00', true, '定期保全'
FROM (SELECT MIN(g::date) AS d FROM generate_series(current_date + 7, current_date + 13, INTERVAL '1 day') AS g
      WHERE EXTRACT(ISODOW FROM g) < 6) AS x;

-- 溶接ロボット: 平日は2時間残業 (10h)
INSERT INTO tests.mstr_work_calendar (work_date, mstr_equipment_id, start_time, work_interval, holiday, remarks)
SELECT g::date, pg_temp.id('E_WD01'), '08:00', '10:00', false, '残業2h'
FROM generate_series(current_date, current_date + 89, INTERVAL '1 day') AS g
WHERE EXTRACT(ISODOW FROM g) < 6;

-- ---------------------------------------------------------------------
-- 9. 受注 (受注1件 = 受注明細1件)
-- ---------------------------------------------------------------------
DO $$
DECLARE r record; o uuid; v uuid;
BEGIN
    FOR r IN SELECT * FROM (VALUES
        -- key    受注番号   得意先     客先注番    品目    数量  単価     納期(日後)
        ('OD1', 'O-0001', 'C_TOWA', 'TW-25-118', 'P100', 20, 48000, 21),
        ('OD2', 'O-0002', 'C_TOWA', 'TW-25-121', 'P200', 10, 72000, 28),
        ('OD3', 'O-0003', 'C_KITA', 'KK-7781',   'P100', 30, 47000, 35),
        ('OD4', 'O-0004', 'C_KITA', 'KK-7790',   'P200', 15, 71000, 10),  -- 納期が厳しい
        ('OD5', 'O-0005', 'C_KITA', 'KK-7795',   'P100', 20, 47000, 21),  -- O-0001 と同じ納期 → 設備が重なる
        ('OD6', 'O-0006', 'C_TOWA', 'TW-25-130', 'P100', 20, 48000, 21)
    ) AS t(k, no, cust, cno, item, qty, price, days) LOOP
        INSERT INTO tests.trans_order (order_number, customer_order_number, stakeholder_history_id, stakeholder_id,
                                       order_processing_date, delivery_date, deadline)
        VALUES (r.no, r.cno, pg_temp.hist('mstr_stakeholder', pg_temp.id(r.cust)), pg_temp.id(r.cust),
                current_date, current_date + r.days, current_date + r.days)
        RETURNING trans_order_id INTO o;
        INSERT INTO tests.trans_order_detail (trans_order_id, item_history_id, item_id, quantity, unit_price, delivery_date, deadline)
        VALUES (o, pg_temp.hist('mstr_item', pg_temp.id(r.item)), pg_temp.id(r.item), r.qty, r.price,
                current_date + r.days, current_date + r.days)
        RETURNING trans_order_detail_id INTO v;
        INSERT INTO _id VALUES (r.k, v);
    END LOOP;
END $$;

-- ---------------------------------------------------------------------
-- 10. 非計上 (見込み生産: A型を10台、45日後)
-- ---------------------------------------------------------------------
DO $$
DECLARE u uuid;
BEGIN
    INSERT INTO tests.trans_unrecognized (control_code_1, decision_date, deadline, remarks)
    VALUES ('FC-001', current_date, current_date + 45, '見込み生産') RETURNING trans_unrecognized_id INTO u;
    INSERT INTO tests.trans_unrecognized_detail (trans_unrecognized_id, quantity, unit_price, deadline, item_history_id, item_id)
    VALUES (u, 10, 0, current_date + 45, pg_temp.hist('mstr_item', pg_temp.id('P100')), pg_temp.id('P100'));
END $$;

-- ---------------------------------------------------------------------
-- 11. 現在庫 (受入済みの発注) と 発注残
--     在庫は 発注 → 発注明細 → 受入実績 → 受入実績ビジター(中間テーブル) → 棚ビジター(コンテナ) から求められる
--     数量は棚ビジターだけが持つ (+入庫)。受入実績ビジターには数量を持たせない (2026-11-01 claude/117_*)
-- ---------------------------------------------------------------------
DO $$
DECLARE r record; po uuid; pd uuid; rc uuid; ct uuid; vs uuid; lb uuid;
BEGIN
    -- 保管コンテナ (資材棚)
    INSERT INTO tests.trans_label DEFAULT VALUES RETURNING trans_label_id INTO lb;
    INSERT INTO tests.trans_container (code, names, remarks) VALUES ('RACK-A01', lb, '資材棚 A-01')
    RETURNING trans_container_id INTO ct;

    FOR r IN SELECT * FROM (VALUES
        -- 仕入先      品目      数量    単価  発注(日前) 受入数(NULL=未受入)  納期(日後)
        ('S_STEEL1', 'SPCC',   30::numeric, 3500, 14, 30::numeric, -7),
        ('S_SCREW',  'SCM4',   2000,           3, 10, 2000,        -5),
        ('S_ELEC',   'PCB130', 10,          8800,  7, NULL,         7)    -- 発注残
    ) AS t(sup, item, qty, price, ago, rec, due) LOOP
        INSERT INTO tests.trans_purchase (stakeholder_history_id, stakeholder_id, register_at, purchase_order_date, deadline)
        VALUES (pg_temp.hist('mstr_stakeholder', pg_temp.id(r.sup)), pg_temp.id(r.sup),
                current_date - r.ago, current_date - r.ago, current_date + r.due)
        RETURNING trans_purchase_id INTO po;
        INSERT INTO tests.trans_purchase_detail (trans_purchase_id, quantity, unit_price, period, item_history_id, item_id)
        VALUES (po, r.qty, r.price, current_date + r.due, pg_temp.hist('mstr_item', pg_temp.id(r.item)), pg_temp.id(r.item))
        RETURNING trans_purchase_detail_id INTO pd;

        IF r.rec IS NOT NULL THEN
            INSERT INTO tests.trans_purchase_rec (trans_purchase_detail_id, receive_at, quantity)
            VALUES (pd, current_date + r.due, r.rec) RETURNING trans_purchase_rec_id INTO rc;
            -- 入庫の行 (+)。親なし = 在庫(ロット)の始まり
            INSERT INTO tests.trans_visiter (trans_container_id, quantity) VALUES (ct, r.rec)
            RETURNING trans_visiter_id INTO vs;
            INSERT INTO tests.trans_purchase_rec_visiter (trans_purchase_rec_id, trans_visiter_id)
            VALUES (rc, vs);
        END IF;
    END LOOP;
END $$;

COMMIT;

-- ---------------------------------------------------------------------
-- 登録結果
-- ---------------------------------------------------------------------
SELECT 'アプリID (info_app_id)' AS item, info_app_id::text AS value FROM tests.info_app WHERE name = 'Product Manufacturing System'
UNION ALL SELECT 'MRP実行担当者 (info_staff_id)', info_staff_id::text FROM tests.info_staff WHERE code = 'ADMIN'
UNION ALL SELECT '品目',           COUNT(*)::text FROM tests.mstr_item
UNION ALL SELECT '受注明細',       COUNT(*)::text FROM tests.trans_order_detail
UNION ALL SELECT '非計上明細',     COUNT(*)::text FROM tests.trans_unrecognized_detail
UNION ALL SELECT '現在庫の品目',   COUNT(*)::text FROM tests.v_item_on_hand
UNION ALL SELECT 'マスタ不備(重大度別)', COALESCE(string_agg(severity || ':' || n, ' '), 'なし')
          FROM (SELECT severity, COUNT(*) AS n FROM tests.mrp_check_items(NULL) GROUP BY severity ORDER BY severity) AS x;

-- #####################################################################
-- 2. バーコード実績登録のダミー(旧 11_barcode_dummy.sql)
-- #####################################################################
-- =====================================================================
-- 11_barcode_dummy.sql
-- バーコード実績登録(barcode_entry)の通信テスト・実機確認用のダミーデータ
--   A. 設備点検  : 設備 LS01 / PB01 に点検項目・点検予定・点検予定の明細(実施済み1件・未実施2件)
--   B. 作業指示  : 筐体 CS-110 の作業指示(レーザー切断 → 曲げ)。symbol 付き
--   C. 異常      : 鋼板の在庫を隔離棚に分けて保留(release = false)にし、1件に未解除の異常を付ける
--                  (数量は棚ビジターだけが持つ: 元の在庫に - の行、隔離棚に + の行。claude/117_*)
--
-- ■ 実行順   05 → 06_cteate_test.sql(MRP・棚ビジターの関数を含む) → 09_grant_test.sql → 10_mrp_dummy.sql → 本ファイル
--   ・10_mrp_dummy.sql が作った品目・設備・工程・棚(RACK-A01)を使う。無ければ中止する
--   ・日付は実行日(current_date)からの相対値
--   ・点検の式(mstr_inspection_formula)の arg_class は仮の形式({"operator":"<=","value":n})。
--     画面で式を定義する案(=,<>,>,<,>=,<=,IN,NOT IN)が確定したら合わせる
--   ・空のDBに1回だけ流す想定
-- =====================================================================

\c test_avocado

CREATE OR REPLACE FUNCTION pg_temp.nm(p_ja varchar, p_en varchar DEFAULT NULL) RETURNS uuid AS $$
DECLARE d uuid; a uuid;
BEGIN
    INSERT INTO tests.shared_dictionary (remarks) VALUES (NULL) RETURNING shared_dictionary_id INTO d;
    INSERT INTO tests.shared_dictionary_value (shared_dictionary_id, shared_language_code_id, dictionary_value)
    SELECT d, l.shared_language_code_id, v.val
    FROM (VALUES ('ja', p_ja), ('en', p_en)) AS v(code, val)
    INNER JOIN tests.shared_language_code AS l ON l.code = v.code AND l.remove IS FALSE
    WHERE v.val IS NOT NULL;
    INSERT INTO tests.shared_appellations (shared_dictionary_name_id) VALUES (d) RETURNING shared_appellations_id INTO a;
    RETURN a;
END $$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION pg_temp.hist(p_table text, p_id uuid) RETURNS uuid AS $$
DECLARE v uuid;
BEGIN
    EXECUTE format('SELECT history_id FROM tests.%I WHERE %I = $1 ORDER BY revision DESC LIMIT 1',
                   'history_' || p_table, p_table || '_id') USING p_id INTO v;
    RETURN v;
END $$ LANGUAGE plpgsql;

-- 呼称(trans_label)。trans_complaint / trans_inspect_sch の表題で使う
CREATE OR REPLACE FUNCTION pg_temp.lb(p_ja varchar) RETURNS uuid AS $$
DECLARE l uuid;
BEGIN
    INSERT INTO tests.trans_label DEFAULT VALUES RETURNING trans_label_id INTO l;
    INSERT INTO tests.trans_label_value (trans_label_id, shared_language_code_id, label_value)
    SELECT l, c.shared_language_code_id, p_ja FROM tests.shared_language_code AS c
    WHERE c.code = 'ja' AND c.remove IS FALSE;
    RETURN l;
END $$ LANGUAGE plpgsql;

-- 詳細テキスト(trans_text)
CREATE OR REPLACE FUNCTION pg_temp.tx(p_ja varchar) RETURNS uuid AS $$
DECLARE t uuid;
BEGIN
    INSERT INTO tests.trans_text DEFAULT VALUES RETURNING trans_text_id INTO t;
    INSERT INTO tests.trans_text_value (trans_text_id, shared_language_code_id, char_count, lead_text, text_value)
    SELECT t, c.shared_language_code_id, char_length(p_ja), p_ja, p_ja FROM tests.shared_language_code AS c
    WHERE c.code = 'ja' AND c.remove IS FALSE;
    RETURN t;
END $$ LANGUAGE plpgsql;

BEGIN;

DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM tests.mstr_item WHERE code = 'CS-110') THEN
        RAISE EXCEPTION '10_mrp_dummy.sql を先に実行してください';
    END IF;
END $$;

-- ---------------------------------------------------------------------
-- A. 設備点検
-- ---------------------------------------------------------------------
DO $$
DECLARE
    kd uuid; fm uuid; ins uuid; op uuid; tk uuid; sch uuid; eq record; q uuid;
BEGIN
    INSERT INTO tests.mstr_inspection_kind (code, names) VALUES ('DAILY', pg_temp.nm('日常点検', 'Daily'))
    RETURNING mstr_inspection_kind_id INTO kd;
    INSERT INTO tests.mstr_inspection_formula (formula_class, arg_class, type_class, format_class)
    VALUES (1, '{"operator":"<=","value":0.5}'::jsonb, 1, '0.00') RETURNING mstr_inspection_formula_id INTO fm;

    FOR eq IN SELECT e.mstr_equipment_id, e.mstr_item_id, e.code FROM tests.mstr_equipment AS e
              WHERE e.code IN ('LS01', 'PB01') AND e.remove IS FALSE LOOP
        INSERT INTO tests.mstr_inspection (code, names, inspection_kind, base_date, time_interval,
                                           inspection_formula_id, mstr_item_id)
        VALUES ('INS-' || eq.code, pg_temp.nm(eq.code || ' 振動測定', 'Vibration'), kd,
                current_date - 30, interval '7 days', fm, eq.mstr_item_id)
        RETURNING mstr_inspection_id INTO ins;
        INSERT INTO tests.mstr_inspection_operation (names, code, mstr_equipment_id)
        VALUES (pg_temp.nm(eq.code || ' 点検'), 'IOP-' || eq.code, eq.mstr_equipment_id)
        RETURNING mstr_inspection_operation_id INTO op;
        INSERT INTO tests.mstr_inspection_operation_task (mstr_inspection_operation_id, mstr_inspection_id, sequence,
                                                         commencement_date, time_interval)
        VALUES (op, ins, 1, current_date - 30, interval '7 days')
        RETURNING mstr_inspection_operation_task_id INTO tk;

        INSERT INTO tests.trans_inspect_sch (code, titles, equipment_history_id, equipment_id,
                                             inspection_operation_history_id, inspection_operation_id)
        VALUES ('SCH-' || eq.code, pg_temp.lb(eq.code || ' 週次点検'),
                pg_temp.hist('mstr_equipment', eq.mstr_equipment_id), eq.mstr_equipment_id,
                pg_temp.hist('mstr_inspection_operation', op), op)
        RETURNING trans_inspect_sch_id INTO sch;

        -- 14日前(実施済み)・7日前(未実施。取り込み対象)・7日後(未来。対象外)
        INSERT INTO tests.trans_inspect_sch_detail (trans_inspect_sch_id, scheduled_start_date, scheduled_end_date,
            inspection_history_id, inspection_id, inspection_formula_history_id, inspection_formula_id,
            inspection_kind_history_id, inspection_kind_id,
            inspection_operation_task_history_id, inspection_operation_task_id)
        SELECT sch, current_date + d, current_date + d + 1,
               pg_temp.hist('mstr_inspection', ins), ins,
               pg_temp.hist('mstr_inspection_formula', fm), fm,
               pg_temp.hist('mstr_inspection_kind', kd), kd,
               pg_temp.hist('mstr_inspection_operation_task', tk), tk
        FROM (VALUES (-14), (-7), (7)) AS t(d);

        -- 14日前の明細には点検結果を付ける
        SELECT d.trans_inspect_sch_detail_id INTO q FROM tests.trans_inspect_sch_detail AS d
        WHERE d.trans_inspect_sch_id = sch ORDER BY d.scheduled_start_date LIMIT 1;
        INSERT INTO tests.trans_inspect_record (trans_inspect_sch_detail_id, implement_start_date, implement_stop_date,
                                                result_value, result, result_state)
        VALUES (q, current_date - 14, current_date - 14, '{"value":0.3}'::jsonb, TRUE, 'ok');
    END LOOP;
END $$;

-- ---------------------------------------------------------------------
-- B. 作業指示(筐体 CS-110 を5個。レーザー切断 → 曲げ)
-- ---------------------------------------------------------------------
DO $$
DECLARE it uuid; rp uuid; op uuid; t record;
BEGIN
    SELECT mstr_item_id INTO it FROM tests.mstr_item WHERE code = 'CS-110';
    INSERT INTO tests.trans_resource_plan (quantity, deadline, item_history_id, item_id)
    VALUES (5, current_date + 14, pg_temp.hist('mstr_item', it), it) RETURNING trans_resource_plan_id INTO rp;
    INSERT INTO tests.trans_operations_plan (trans_resource_plan_id, deadline, quantity)
    VALUES (rp, current_date + 14, 5) RETURNING trans_operations_plan_id INTO op;
    FOR t IN SELECT * FROM (VALUES ('LASER', 1), ('BEND', 2)) AS x(k, seq) LOOP
        INSERT INTO tests.trans_work_plan (trans_operations_plan_id, mstr_task_id, sequence, start_at, completion_at)
        SELECT op, m.mstr_task_id, t.seq, current_date + t.seq, current_date + t.seq + 1
        FROM tests.mstr_task AS m WHERE m.remove IS FALSE
          AND upper(m.code) LIKE '%' || t.k || '%' ORDER BY m.code LIMIT 1;
    END LOOP;
END $$;

-- ---------------------------------------------------------------------
-- C. 異常(保留の棚ビジター + 解除されていない異常)
--    10_mrp_dummy.sql で受け入れた鋼板(SPCC 30枚, RACK-A01)から、隔離棚 RACK-Q01 へ分けて移す
--      ・5枚: 錆の発生。保留(release = false) + 未解除の異常を付ける  → 取り出し不可(complaint より先に hold)
--      ・3枚: 保留にしただけで異常が無い (マスタ点検 VISITER_HOLD_NO_COMPLAINT の対象)
--    分け方: 元の在庫に - の行(親 = 元の在庫、棚 = RACK-A01)、隔離棚に + の行(親 = 元の在庫)
--    結果  : 鋼板の現在庫 30 = 使える 22 (RACK-A01) + 保留 8 (RACK-Q01)
-- ---------------------------------------------------------------------
DO $$
DECLARE ct uuid; cq uuid; src uuid; v1 uuid; v2 uuid; cp uuid; st uuid; sth uuid; lb uuid;
BEGIN
    SELECT trans_container_id INTO ct FROM tests.trans_container WHERE code = 'RACK-A01';
    SELECT info_staff_id INTO st FROM tests.info_staff WHERE code = 'ADMIN';
    sth := pg_temp.hist('info_staff', st);

    -- 鋼板の在庫(ロット) = 受入実績につながった + の行
    SELECT v.trans_visiter_id INTO src
    FROM tests.trans_visiter AS v
    INNER JOIN tests.trans_purchase_rec_visiter AS prv ON prv.trans_visiter_id = v.trans_visiter_id AND prv.remove IS FALSE
    INNER JOIN tests.trans_purchase_rec AS r ON r.trans_purchase_rec_id = prv.trans_purchase_rec_id
    INNER JOIN tests.trans_purchase_detail AS pd ON pd.trans_purchase_detail_id = r.trans_purchase_detail_id
    INNER JOIN tests.mstr_item AS i ON i.mstr_item_id = pd.item_id AND i.code = 'MT-SPCC'
    WHERE v.remove IS FALSE AND v.quantity > 0 AND v.parent_trans_visiter_id IS NULL
    LIMIT 1;
    IF src IS NULL THEN
        RAISE EXCEPTION '鋼板(MT-SPCC)の在庫がありません。10_mrp_dummy.sql を確認してください';
    END IF;

    -- 隔離棚
    INSERT INTO tests.trans_label DEFAULT VALUES RETURNING trans_label_id INTO lb;
    INSERT INTO tests.trans_container (code, names, remarks) VALUES ('RACK-Q01', lb, '隔離棚 Q-01(異常品・保留品)')
    RETURNING trans_container_id INTO cq;

    -- 5枚: 元の在庫から出庫(-) → 隔離棚に入庫(+, 保留)
    INSERT INTO tests.trans_visiter (parent_trans_visiter_id, trans_container_id, quantity)
    VALUES (src, ct, -5);
    INSERT INTO tests.trans_visiter (parent_trans_visiter_id, trans_container_id, release, quantity)
    VALUES (src, cq, FALSE, 5) RETURNING trans_visiter_id INTO v1;

    -- 3枚: 同じく隔離棚へ。保留にしただけで異常は登録しない
    INSERT INTO tests.trans_visiter (parent_trans_visiter_id, trans_container_id, quantity)
    VALUES (src, ct, -3);
    INSERT INTO tests.trans_visiter (parent_trans_visiter_id, trans_container_id, release, quantity)
    VALUES (src, cq, FALSE, 3) RETURNING trans_visiter_id INTO v2;      -- 異常の登録が無い保留

    INSERT INTO tests.trans_complaint (occurent_at, titles, details, reporter_staff_history_id, reporter_staff_id)
    VALUES (now(), pg_temp.lb('異常報告'),
            pg_temp.tx('錆の発生'),
            sth, st)
    RETURNING trans_complaint_id INTO cp;
    INSERT INTO tests.trans_complaint_visiter (trans_complaint_id, trans_visiter_id, quantity)
    VALUES (cp, v1, 5);
END $$;

COMMIT;

SELECT '点検予定の明細' AS item, COUNT(*)::text AS value FROM tests.trans_inspect_sch_detail
UNION ALL SELECT '点検結果', COUNT(*)::text FROM tests.trans_inspect_record
UNION ALL SELECT '作業指示', COUNT(*)::text FROM tests.trans_work_plan
UNION ALL SELECT '異常入出庫ビジター', COUNT(*)::text FROM tests.trans_complaint_visiter
UNION ALL SELECT '取り出せない在庫(' || block_reason || ')', COUNT(*)::text FROM tests.v_visiter_issuable
          WHERE NOT issuable GROUP BY block_reason
UNION ALL SELECT '鋼板 現在庫 / 保留 / 使える', on_hand_quantity || ' / ' || held_quantity || ' / ' || available_quantity
          FROM tests.v_item_on_hand AS oh INNER JOIN tests.mstr_item AS i ON i.mstr_item_id = oh.item_id AND i.code = 'MT-SPCC'
UNION ALL SELECT '異常の登録が無い保留', COUNT(*)::text FROM tests.v_visiter_hold_without_complaint;

-- #####################################################################
-- 3. 管理者の担当者(旧 14_app_admin_dummy.sql)
-- #####################################################################
-- =====================================================================
-- 14_app_admin_dummy.sql
-- App の管理者ユーザーに対応する担当者(info_staff)のダミーデータ
--
-- PocketBase の管理者ユーザー(role=admin)の app_user_id は、この担当者のID(info_staff_id、UUID)。
-- tools/init/test_admin_init.bat が、担当者のコードを PocketBase のユーザーIDと同じ(大文字小文字を区別しない)
-- ものから探して、PocketBase の app_user_id に設定する(無ければコード ADMIN)。
--
-- ■ 実行順   05 → 06 → 09 → 10 → 11 → 12 → 13 → 本ファイル
--   ・10_mrp_dummy.sql は、担当者 ADMIN を作る。PocketBase の管理者のユーザーIDが admin なら、本ファイルは不要
--   ・PocketBase の管理者のユーザーIDが admin 以外(例: administrator)のとき、同じコードの担当者を作る:
--       psql -d test_avocado -v admin_code=ADMINISTRATOR -f 14_app_admin_dummy.sql
--   ・既にあるコードの担当者は作らない(何度流しても同じ)。言語・会社は、無ければ作る
--   ・担当者のIDは trg_01 が採番する。実行後に、コードとIDを表示する
-- =====================================================================


\c test_avocado

-- 呼称を作る(辞書 → 辞書の値(ja/en) → 呼称)。このセッションだけの一時関数
CREATE OR REPLACE FUNCTION pg_temp.nm(p_ja varchar, p_en varchar DEFAULT NULL) RETURNS uuid AS $$
DECLARE d uuid; a uuid;
BEGIN
    INSERT INTO tests.shared_dictionary (remarks) VALUES (NULL) RETURNING shared_dictionary_id INTO d;
    INSERT INTO tests.shared_dictionary_value (shared_dictionary_id, shared_language_code_id, dictionary_value)
    SELECT d, l.shared_language_code_id, v.val
    FROM (VALUES ('ja', p_ja), ('en', p_en)) AS v(code, val)
    INNER JOIN tests.shared_language_code AS l ON l.code = v.code AND l.remove IS FALSE
    WHERE v.val IS NOT NULL;
    INSERT INTO tests.shared_appellations (shared_dictionary_name_id) VALUES (d) RETURNING shared_appellations_id INTO a;
    RETURN a;
END $$ LANGUAGE plpgsql;

-- DO ブロック($$ 内)では psql 変数が展開されないため、セッション設定経由で渡す (09 と同じ)  claude/134
SELECT set_config('init.admin_code', :'admin_code', false) \gset

DO $$
DECLARE
    code_ text := current_setting('init.admin_code');
    c uuid;
BEGIN
    IF NOT EXISTS (SELECT 1 FROM tests.shared_language_code WHERE code = 'ja') THEN
        INSERT INTO tests.shared_language_code (code, label, priority, is_default) VALUES ('ja', '日本語', 1, true);
        RAISE NOTICE '言語コード ja を作りました';
    END IF;
    IF NOT EXISTS (SELECT 1 FROM tests.shared_language_code WHERE code = 'en') THEN
        INSERT INTO tests.shared_language_code (code, label, priority, is_default) VALUES ('en', 'English', 2, false);
        RAISE NOTICE '言語コード en を作りました';
    END IF;

    IF EXISTS (SELECT 1 FROM tests.info_staff WHERE upper(code) = upper(code_) AND remove IS FALSE) THEN
        RAISE NOTICE '担当者 % は作成済みです', code_;
        RETURN;
    END IF;

    SELECT info_company_id INTO c FROM tests.info_company WHERE remove IS FALSE ORDER BY update_at LIMIT 1;
    IF c IS NULL THEN
        INSERT INTO tests.info_company (names) VALUES (pg_temp.nm('株式会社サンプル', 'Sample Co., Ltd.'))
        RETURNING info_company_id INTO c;
        RAISE NOTICE '会社 (株式会社サンプル) を作りました';
    END IF;
    INSERT INTO tests.info_staff (info_company_id, code, names)
    VALUES (c, upper(code_), pg_temp.nm('管理者', 'Administrator'));
    RAISE NOTICE '担当者 % を作りました', upper(code_);
END $$;

SELECT code AS "担当者のコード", info_staff_id AS "担当者のID(PocketBase の app_user_id)"
FROM tests.info_staff
WHERE upper(code) = upper(:'admin_code') AND remove IS FALSE;

-- #####################################################################
-- 4. 一般の利用者の担当者(旧 15_user_dummy.sql)
-- #####################################################################
-- =====================================================================
-- 15_user_dummy.sql
-- App の一般の利用者に対応する担当者(info_staff)のダミーデータ
--
-- tools/init/test_user_init.bat が、管理者以外の担当者を PocketBase のユーザーに追加し、
-- 担当者のID(info_staff_id、UUID)を app_user_id に入れる。username は担当者のコード(小文字)。
--
-- ■ 実行順   05 → 06 → 09 → 10 → 11 → 12 → 13 → 14_app_admin_dummy.sql → 本ファイル
--   ・TANAKA(田中 太郎)・SUZUKI(鈴木 一郎)・SATO(佐藤 花子)を作る
--   ・既にあるコードの担当者は作らない(何度流しても同じ)。言語・会社は、無ければ作る
--       psql -d test_avocado -f 15_user_dummy.sql
-- =====================================================================

\c test_avocado

-- 呼称を作る(辞書 → 辞書の値(ja/en) → 呼称)。このセッションだけの一時関数
CREATE OR REPLACE FUNCTION pg_temp.nm(p_ja varchar, p_en varchar DEFAULT NULL) RETURNS uuid AS $$
DECLARE d uuid; a uuid;
BEGIN
    INSERT INTO tests.shared_dictionary (remarks) VALUES (NULL) RETURNING shared_dictionary_id INTO d;
    INSERT INTO tests.shared_dictionary_value (shared_dictionary_id, shared_language_code_id, dictionary_value)
    SELECT d, l.shared_language_code_id, v.val
    FROM (VALUES ('ja', p_ja), ('en', p_en)) AS v(code, val)
    INNER JOIN tests.shared_language_code AS l ON l.code = v.code AND l.remove IS FALSE
    WHERE v.val IS NOT NULL;
    INSERT INTO tests.shared_appellations (shared_dictionary_name_id) VALUES (d) RETURNING shared_appellations_id INTO a;
    RETURN a;
END $$ LANGUAGE plpgsql;

DO $$
DECLARE
    c uuid;
    r record;
BEGIN
    IF NOT EXISTS (SELECT 1 FROM tests.shared_language_code WHERE code = 'ja') THEN
        INSERT INTO tests.shared_language_code (code, label, priority, is_default) VALUES ('ja', '日本語', 1, true);
        RAISE NOTICE '言語コード ja を作りました';
    END IF;
    IF NOT EXISTS (SELECT 1 FROM tests.shared_language_code WHERE code = 'en') THEN
        INSERT INTO tests.shared_language_code (code, label, priority, is_default) VALUES ('en', 'English', 2, false);
        RAISE NOTICE '言語コード en を作りました';
    END IF;

    SELECT info_company_id INTO c FROM tests.info_company WHERE remove IS FALSE ORDER BY update_at LIMIT 1;
    IF c IS NULL THEN
        INSERT INTO tests.info_company (names) VALUES (pg_temp.nm('株式会社サンプル', 'Sample Co., Ltd.'))
        RETURNING info_company_id INTO c;
        RAISE NOTICE '会社 (株式会社サンプル) を作りました';
    END IF;

    FOR r IN
        SELECT * FROM (VALUES
            ('TANAKA', '田中 太郎', 'Taro Tanaka'),
            ('SUZUKI', '鈴木 一郎', 'Ichiro Suzuki'),
            ('SATO',   '佐藤 花子', 'Hanako Sato')
        ) AS v(code, ja, en)
    LOOP
        IF EXISTS (SELECT 1 FROM tests.info_staff WHERE upper(code) = r.code AND remove IS FALSE) THEN
            RAISE NOTICE '担当者 % は作成済みです', r.code;
        ELSE
            INSERT INTO tests.info_staff (info_company_id, code, names)
            VALUES (c, r.code, pg_temp.nm(r.ja, r.en));
            RAISE NOTICE '担当者 % を作りました', r.code;
        END IF;
    END LOOP;
END $$;

SELECT code AS "担当者のコード", info_staff_id AS "担当者のID(PocketBase の app_user_id)"
FROM tests.info_staff
WHERE upper(code) IN ('TANAKA', 'SUZUKI', 'SATO') AND remove IS FALSE
ORDER BY code;

-- #####################################################################
-- 4-2. 役職(組長・係長・課長・部長)・部署・担当者・割り当て(承認パターン・監査のテスト用)
-- #####################################################################
-- 役職は順位(priority)の小さい順に 組長 → 係長 → 課長 → 部長。部署「製造部」に、役職ごとの担当者を 1 人ずつ割り当てる。
-- 担当者のコードは KUMICHO・KAKARICHO・KACHO・BUCHO(PocketBase のユーザーは、tools\init\test_user_init.bat が、このコードの小文字で作る)。
-- 承認パターンの書き込みの通信テスト(organization/test/approval_pattern_server_test.dart)が、役職 2 件以上・部署 1 件以上を要る。
-- 何度流しても同じ(既にあるものは作らない)。
\c test_avocado

CREATE OR REPLACE FUNCTION pg_temp.nm2(p_ja varchar, p_en varchar DEFAULT NULL) RETURNS uuid AS $$
DECLARE d uuid; a uuid;
BEGIN
    INSERT INTO tests.shared_dictionary (remarks) VALUES (NULL) RETURNING shared_dictionary_id INTO d;
    INSERT INTO tests.shared_dictionary_value (shared_dictionary_id, shared_language_code_id, dictionary_value)
    SELECT d, l.shared_language_code_id, v.val
    FROM (VALUES ('ja', p_ja), ('en', p_en)) AS v(code, val)
    INNER JOIN tests.shared_language_code AS l ON l.code = v.code AND l.remove IS FALSE
    WHERE v.val IS NOT NULL;
    INSERT INTO tests.shared_appellations (shared_dictionary_name_id) VALUES (d) RETURNING shared_appellations_id INTO a;
    RETURN a;
END $$ LANGUAGE plpgsql;

DO $$
DECLARE
    c uuid; dep uuid; pos uuid; st uuid; r record;
BEGIN
    SELECT info_company_id INTO c FROM tests.info_company WHERE remove IS FALSE ORDER BY update_at LIMIT 1;

    SELECT info_department_id INTO dep FROM tests.info_department WHERE code = 'MFG' AND remove IS FALSE;
    IF dep IS NULL THEN
        INSERT INTO tests.info_department (info_company_id, code, names)
        VALUES (c, 'MFG', pg_temp.nm2('製造部', 'Manufacturing')) RETURNING info_department_id INTO dep;
        RAISE NOTICE '部署 製造部 を作りました';
    END IF;

    FOR r IN
        SELECT * FROM (VALUES
            (1, '組長', 'Team Leader',        'KUMICHO',  '高橋 健', 'Ken Takahashi'),
            (2, '係長', 'Section Chief',      'KAKARICHO','渡辺 誠', 'Makoto Watanabe'),
            (3, '課長', 'Manager',            'KACHO',    '中村 優', 'Yu Nakamura'),
            (4, '部長', 'General Manager',    'BUCHO',    '小林 学', 'Manabu Kobayashi')
        ) AS v(pri, pos_ja, pos_en, code, ja, en)
    LOOP
        SELECT p.info_position_id INTO pos
        FROM tests.info_position AS p
        INNER JOIN tests.shared_appellations AS a ON a.shared_appellations_id = p.names
        INNER JOIN tests.shared_dictionary_value AS dv ON dv.shared_dictionary_id = a.shared_dictionary_name_id
        WHERE dv.dictionary_value = r.pos_ja AND p.remove IS FALSE LIMIT 1;
        IF pos IS NULL THEN
            INSERT INTO tests.info_position (priority, names) VALUES (r.pri, pg_temp.nm2(r.pos_ja, r.pos_en)) RETURNING info_position_id INTO pos;
            RAISE NOTICE '役職 % を作りました', r.pos_ja;
        END IF;

        SELECT info_staff_id INTO st FROM tests.info_staff WHERE upper(code) = r.code AND remove IS FALSE;
        IF st IS NULL THEN
            INSERT INTO tests.info_staff (info_company_id, code, names) VALUES (c, r.code, pg_temp.nm2(r.ja, r.en)) RETURNING info_staff_id INTO st;
            RAISE NOTICE '担当者 % を作りました', r.code;
        END IF;

        IF NOT EXISTS (SELECT 1 FROM tests.info_assign WHERE info_staff_id = st AND info_position_id = pos AND info_department_id = dep AND remove IS FALSE) THEN
            INSERT INTO tests.info_assign (info_staff_id, info_position_id, info_department_id) VALUES (st, pos, dep);
            RAISE NOTICE '% を 製造部の % に割り当てました', r.code, r.pos_ja;
        END IF;
    END LOOP;
END $$;

SELECT s.code AS "担当者のコード", s.info_staff_id AS "担当者のID(PocketBase の app_user_id)"
FROM tests.info_staff AS s
WHERE upper(s.code) IN ('KUMICHO', 'KAKARICHO', 'KACHO', 'BUCHO') AND s.remove IS FALSE
ORDER BY s.code;

-- #####################################################################
-- 5. キャンセル・返品・精算・支給のマスタ
-- #####################################################################
\c test_avocado

-- キャンセル・返品・精算・支給の操作に要るマスタのダミーデータ(案)。対象のスキーマ: tests。DB には入れていない(doc/query/README.md)。
--
-- 検証用 DB は、毎回 1 から(ダミーを含めて)再構築する。そのため、操作の関数・画面の成功経路の確認に要るマスタ(変更理由・返品区分・
-- 精算区分・場所)も、初期化スクリプトのダミーとして持つ。採用するときは、`tools/docker/postgresql/script/16_cancel_master_dummy.sql`
-- として、15 のあとに流す(06 → 09 → 10 → 11 → 12 → 13 → 14 → 15 → 16)。
--
-- 内容:
--   ・変更理由(mstr_change_reason): 判定は boolean(customer_cause・supplier_cause・quality_cause)。コードで分岐しない。
--   ・返品区分(mstr_return_kind): receive = true が顧客からの返品、false が仕入先・外注先への返品。
--   ・精算区分(mstr_settlement_kind): delivery = true の区分は、品物の引き渡しも登録する。
--   ・場所(mstr_location)と、既存のコンテナ(10・11 のダミー)への場所の割り当て(visiter_move は、棚に場所が無いと VIS05)。
--   ・押さえる(hold)・保管用のコンテナ(RACK-H01)。
-- 何度流しても同じ(コードがあるものは作らない)。ダミーの呼称は ja・en。
-- トランザクション制御(BEGIN・COMMIT)は含めない(試験では、ROLLBACK するトランザクションの中で流す)。

-- 呼称を作る(辞書 → 辞書の値(ja/en) → 呼称)。このセッションだけの一時関数
CREATE OR REPLACE FUNCTION pg_temp.nm(p_ja varchar, p_en varchar DEFAULT NULL) RETURNS uuid AS $$
DECLARE d uuid; a uuid;
BEGIN
    INSERT INTO tests.shared_dictionary (remarks) VALUES (NULL) RETURNING shared_dictionary_id INTO d;
    INSERT INTO tests.shared_dictionary_value (shared_dictionary_id, shared_language_code_id, dictionary_value)
    SELECT d, l.shared_language_code_id, v.val
    FROM (VALUES ('ja', p_ja), ('en', p_en)) AS v(code, val)
    INNER JOIN tests.shared_language_code AS l ON l.code = v.code AND l.remove IS FALSE
    WHERE v.val IS NOT NULL;
    INSERT INTO tests.shared_appellations (shared_dictionary_name_id) VALUES (d) RETURNING shared_appellations_id INTO a;
    RETURN a;
END $$ LANGUAGE plpgsql;

-- ラベル(trans の名称)を作る(ja・en)
CREATE OR REPLACE FUNCTION pg_temp.lb(p_ja varchar, p_en varchar DEFAULT NULL) RETURNS uuid AS $$
DECLARE l uuid;
BEGIN
    INSERT INTO tests.trans_label DEFAULT VALUES RETURNING trans_label_id INTO l;
    INSERT INTO tests.trans_label_value (trans_label_id, shared_language_code_id, label_value)
    SELECT l, c.shared_language_code_id, v.val
    FROM (VALUES ('ja', p_ja), ('en', p_en)) AS v(code, val)
    INNER JOIN tests.shared_language_code AS c ON c.code = v.code AND c.remove IS FALSE
    WHERE v.val IS NOT NULL;
    RETURN l;
END $$ LANGUAGE plpgsql;

DO $$
BEGIN
    -- 変更理由
    INSERT INTO tests.mstr_change_reason (code, names, customer_cause, supplier_cause, quality_cause)
    SELECT v.code, pg_temp.nm(v.ja, v.en), v.customer_cause, v.supplier_cause, v.quality_cause
    FROM (VALUES
        ('CR-CUSTOMER', '顧客の都合', 'Customer request',  TRUE,  FALSE, FALSE),
        ('CR-SUPPLIER', '仕入先・外注先の都合', 'Supplier cause', FALSE, TRUE,  FALSE),
        ('CR-QUALITY',  '品質の原因', 'Quality cause',       FALSE, FALSE, TRUE),
        ('CR-INTERNAL', '社内の都合', 'Internal reason',     FALSE, FALSE, FALSE)
    ) AS v(code, ja, en, customer_cause, supplier_cause, quality_cause)
    WHERE NOT EXISTS (SELECT 1 FROM tests.mstr_change_reason AS m WHERE m.code = v.code AND m.remove IS FALSE);

    -- 返品区分(receive = true: 顧客からの返品 / false: 仕入先・外注先への返品)
    INSERT INTO tests.mstr_return_kind (code, names, receive)
    SELECT v.code, pg_temp.nm(v.ja, v.en), v.receive
    FROM (VALUES
        ('RK-CUSTOMER', '顧客からの返品', 'Return from customer', TRUE),
        ('RK-SUPPLIER', '仕入先・外注先への返品', 'Return to supplier', FALSE)
    ) AS v(code, ja, en, receive)
    WHERE NOT EXISTS (SELECT 1 FROM tests.mstr_return_kind AS m WHERE m.code = v.code AND m.remove IS FALSE);

    -- 精算区分(delivery = true: 品物の引き渡しも登録する)
    INSERT INTO tests.mstr_settlement_kind (code, names, delivery)
    SELECT v.code, pg_temp.nm(v.ja, v.en), v.delivery
    FROM (VALUES
        ('SK-PARTIAL',  '途中の請求', 'Partial billing', FALSE),
        ('SK-DELIVERY', '仕掛品の引き渡しの請求', 'Billing for delivered WIP', TRUE)
    ) AS v(code, ja, en, delivery)
    WHERE NOT EXISTS (SELECT 1 FROM tests.mstr_settlement_kind AS m WHERE m.code = v.code AND m.remove IS FALSE);

    -- 場所
    INSERT INTO tests.mstr_location (code, names)
    SELECT 'LOC-MAIN', pg_temp.nm('本社工場', 'Main plant')
    WHERE NOT EXISTS (SELECT 1 FROM tests.mstr_location AS m WHERE m.code = 'LOC-MAIN' AND m.remove IS FALSE);

    -- 押さえる(hold)・保管用のコンテナ
    INSERT INTO tests.trans_container (code, names, remarks)
    SELECT 'RACK-H01', pg_temp.lb('保留棚 H-01', 'Hold rack H-01'), '押さえた品・保管用(キャンセル後の品物)'
    WHERE NOT EXISTS (SELECT 1 FROM tests.trans_container AS c WHERE c.code = 'RACK-H01' AND c.remove IS FALSE);

    -- コンテナに場所を割り当てる(場所が無い棚は、visiter_move が VIS05)
    UPDATE tests.trans_container AS c
    SET mstr_location_id = (SELECT m.mstr_location_id FROM tests.mstr_location AS m WHERE m.code = 'LOC-MAIN' AND m.remove IS FALSE)
    WHERE c.remove IS FALSE AND c.mstr_location_id IS NULL;
END $$;

-- #####################################################################
-- 6. 棚ビジターの所有者をそろえる(旧 13_visiter_owner.sql の末尾)
-- #####################################################################
\c test_avocado
-- 既にある棚ビジター(1・2 のダミーデータ)の所有者を決め直す
SELECT tests.visiter_owner_rebuild() AS lots_checked;


-- #####################################################################
-- 7. 標準の承認パターン(段が 0 件 = 承認不要)と、文書の承認パターンの設定
-- #####################################################################
\c test_avocado
-- 文書(mstr_document)は承認パターン(trans_approval_pattern_id。NOT NULL)が要る。登録が申請のトリガー(trg_05_approval_request)は、
-- info_app の対象ごとの承認パターンの列(document_approval_pattern_id など)に承認パターンがあるときだけ、承認の実行を作って入れる。
-- 設定が無いと、文書(マニュアルのルートなど)を登録できないため、標準として「段が 0 件の承認パターン(= 承認不要)」を作り、
-- 文書の承認パターン(info_app.document_approval_pattern_id)に設定する。ほかの対象(受注・発注など)は、設定しない(NULL = 承認不要)。
-- 設定の変更は、アプリの会社情報の「承認」(標準の承認パターン)で行う。
-- 何度流しても同じ(備考で標準の承認パターンを見つけ、あれば作らない。文書の承認パターンが設定済みなら、上書きしない)。
DO $$
DECLARE
    v_pattern uuid;
    d uuid;
    a uuid;
BEGIN
    SELECT p.mstr_approval_pattern_id INTO v_pattern
    FROM tests.mstr_approval_pattern AS p
    WHERE p.remarks = 'STANDARD-NO-APPROVAL' AND p.remove IS FALSE
    ORDER BY p.update_at LIMIT 1;
    IF v_pattern IS NULL THEN
        INSERT INTO tests.shared_dictionary (remarks) VALUES (NULL) RETURNING shared_dictionary_id INTO d;
        INSERT INTO tests.shared_dictionary_value (shared_dictionary_id, shared_language_code_id, dictionary_value)
        SELECT d, l.shared_language_code_id, v.val
        FROM (VALUES ('ja', '標準(承認不要)'), ('en', 'Standard (no approval)')) AS v(code, val)
        INNER JOIN tests.shared_language_code AS l ON l.code = v.code AND l.remove IS FALSE;
        INSERT INTO tests.shared_appellations (shared_dictionary_name_id) VALUES (d) RETURNING shared_appellations_id INTO a;
        INSERT INTO tests.mstr_approval_pattern (names, remarks) VALUES (a, 'STANDARD-NO-APPROVAL')
        RETURNING mstr_approval_pattern_id INTO v_pattern;
    END IF;
    UPDATE tests.info_app AS app
    SET document_approval_pattern_id = v_pattern
    WHERE app.remove IS FALSE AND app.document_approval_pattern_id IS NULL;
END $$;

-- #####################################################################
-- 8. 標準の文書(文書階層・品質マニュアル・品質手順書とそのページ)
-- #####################################################################
\c test_avocado
-- 「品質マニュアル」「品質手順書」は文書の名称の例(専用の画面・コードは持たない。ルートの CLAUDE.md「文書の名称(サンプル)」)。
-- ルート = 文書(mstr_document。文書ツリーの親は NULL)、ページ = 文書コンテンツ(mstr_document_content。本文は Markdown の共有テキスト)。
-- 文書の承認パターンは、7 の標準(承認不要)が、登録が申請のトリガーで入る。何度流しても同じ(コードがあるものは作らない)。
SELECT set_config('init.admin_code', :'admin_code', false) \gset

-- 呼称(名称・ja/en)を作って ID を返す。このセッションだけの一時関数
CREATE OR REPLACE FUNCTION pg_temp.ap(p_ja varchar, p_en varchar, p_staff uuid) RETURNS uuid AS $$
    SELECT a.shared_appellations_id
    FROM tests.shared_appellation_save(NULL, jsonb_build_object('ja', p_ja, 'en', p_en), NULL, NULL, p_staff) AS a
$$ LANGUAGE sql;

-- 文章(本文・Markdown。ja)を作って ID を返す
CREATE OR REPLACE FUNCTION pg_temp.tx(p_md text, p_staff uuid) RETURNS uuid AS $$
    SELECT t.shared_text_id FROM tests.shared_text_save(NULL, jsonb_build_object('ja', p_md), p_staff) AS t
$$ LANGUAGE sql;

DO $$
DECLARE
    adm uuid;
    v_tier uuid;
    r record;
    d_id uuid;
    c_id uuid;
    p_id uuid;
BEGIN
    SELECT s.info_staff_id INTO adm FROM tests.info_staff AS s
     WHERE s.remove IS FALSE
     ORDER BY CASE WHEN upper(s.code) = upper(current_setting('init.admin_code')) THEN 0 ELSE 1 END, s.code LIMIT 1;

    -- 文書階層(階層番号が最小のものが、ルートの文書の階層)
    FOR r IN SELECT * FROM (VALUES
        ('DT-1', 'マニュアル', 'Manual',   'マニュアル', 'M', 1),
        ('DT-2', '手順書',     'Procedure', '手順書',     'P', 2),
        ('DT-3', '様式',       'Form',      '様式',       'F', 3)
    ) AS v(code, ja, en, noun, ident, tier_number) LOOP
        IF NOT EXISTS (SELECT 1 FROM tests.mstr_document_tier AS m WHERE m.code = r.code AND m.remove IS FALSE) THEN
            INSERT INTO tests.mstr_document_tier (code, names, attributive_noun, identifier, tier_number)
            VALUES (r.code, pg_temp.ap(r.ja, r.en, adm), r.noun, r.ident, r.tier_number);
        END IF;
    END LOOP;

    -- ルートの文書(品質マニュアル・品質手順書)と、そのページ
    FOR r IN SELECT * FROM (VALUES
        ('DOC-QM', '品質マニュアル', 'Quality manual', 'QM-001', 'DT-1', '1.0',
         '品質管理の考え方と、現場での手順をまとめた文書です。管理者が書き足します。'),
        ('DOC-QP', '品質手順書', 'Quality procedures', 'QP-001', 'DT-2', '1.0',
         '日々の作業の手順をまとめた文書です。')
    ) AS v(code, ja, en, control_number, tier_code, version_code, body) LOOP
        IF EXISTS (SELECT 1 FROM tests.mstr_document AS m WHERE m.code = r.code AND m.remove IS FALSE) THEN CONTINUE; END IF;
        SELECT t.mstr_document_tier_id INTO v_tier FROM tests.mstr_document_tier AS t WHERE t.code = r.tier_code AND t.remove IS FALSE;
        INSERT INTO tests.mstr_document (code, titles, control_number, mstr_document_tier_id, version_code)
        VALUES (r.code, pg_temp.ap(r.ja, r.en, adm), r.control_number, v_tier, r.version_code)
        RETURNING mstr_document_id INTO d_id;
        INSERT INTO tests.mstr_document_tree (mstr_document_id, parent_mstr_document_id) VALUES (d_id, NULL);
    END LOOP;

    -- ページ(親のページのコードは NULL = ルートの文書の直下)
    FOR r IN SELECT * FROM (VALUES
        ('DOC-QM', 'QM-01',  NULL,    1, 'はじめに', 'Introduction',
         E'## 目的\n\n製品の品質を安定して保ち、不適合を早く見つけて、同じことを繰り返さないための共通のルールを定めます。\n\n## 適用の範囲\n\n受入から出荷までのすべての工程に適用します。'),
        ('DOC-QM', 'QM-02',  NULL,    2, '品質方針と目標', 'Quality policy and objectives',
         E'## 品質方針\n\n- お客様の要求事項を満たす\n- 不適合の再発を防ぐ\n- 品質マネジメントシステムを継続して改善する'),
        ('DOC-QM', 'QM-03',  NULL,    3, '工程管理', 'Process control',
         E'## 工程の管理\n\n作業指示に従って作業し、作業実績を登録します。'),
        ('DOC-QM', 'QM-031', 'QM-03', 1, '作業の開始と終了', 'Starting and finishing work',
         E'## 登録する内容\n\n- 数量\n- 不適合の理由(寸法不良・外観不良・材料不良・設備不具合・その他)'),
        ('DOC-QM', 'QM-04',  NULL,    4, '不適合の管理', 'Control of nonconformity',
         E'## 異常の登録\n\n不適合を見つけたら、異常を登録し、処置と再発防止を決めます。'),
        ('DOC-QP', 'QP-01',  NULL,    1, '受入検査の手順', 'Incoming inspection',
         E'## 手順\n\n1. 受入実績を登録する\n2. 検品する\n3. 合格したら仮止めを解除する'),
        ('DOC-QP', 'QP-02',  NULL,    2, '出荷検査の手順', 'Shipping inspection',
         E'## 手順\n\n1. 出荷オーダーを確認する\n2. 製品を検査する\n3. 出荷実績を登録する')
    ) AS v(doc_code, code, parent_code, seq, ja, en, md) LOOP
        SELECT d.mstr_document_id INTO d_id FROM tests.mstr_document AS d WHERE d.code = r.doc_code AND d.remove IS FALSE;
        IF d_id IS NULL OR EXISTS (SELECT 1 FROM tests.mstr_document_content AS c WHERE c.code = r.code AND c.remove IS FALSE) THEN CONTINUE; END IF;
        p_id := NULL;
        IF r.parent_code IS NOT NULL THEN
            SELECT c.mstr_document_content_id INTO p_id FROM tests.mstr_document_content AS c WHERE c.code = r.parent_code AND c.remove IS FALSE;
        END IF;
        INSERT INTO tests.mstr_document_content (mstr_document_id, code, titles, contents, sequence)
        VALUES (d_id, r.code, pg_temp.ap(r.ja, r.en, adm), pg_temp.tx(r.md, adm), r.seq)
        RETURNING mstr_document_content_id INTO c_id;
        INSERT INTO tests.mstr_document_content_tree (mstr_document_content_id, parent_mstr_document_content_id) VALUES (c_id, p_id);
    END LOOP;
END $$;


-- #####################################################################
-- 9. 作業実績・支給のダミー(実績の原価・社外の所有物の確認用)
-- #####################################################################
\c test_avocado
-- 作業実績 WR-1(10 を作る)→ WR-2(WR-1 のロットから 4 を投入して 3 を作る)→ 顧客支給の材料 5 を受け入れ(顧客の所有)→
-- WR-3(支給の材料から 2 を投入して 2 を作る。実績の原価では、材料は 0 円で「支給品を投入」になる)。
-- 作業実績・支給の登録は、DB の関数(visiter_receive・visiter_issue・supply_register)で行う(1 回ごとに 1 トランザクション)。
-- 何度流しても同じ(作業実績がすでにあれば作らない)。作業指示・コンテナ・受注明細は、1・2 のダミーを使う(無ければ何もしない)。
SELECT set_config('init.admin_code', :'admin_code', false) \gset

DO $$
DECLARE
    adm uuid;
    wp record;
    cont uuid;
    od record;
    wr1 uuid; wr2 uuid; wr3 uuid;
    lot1 tests.trans_visiter; lot_s tests.trans_visiter;
    junk tests.trans_visiter;
BEGIN
    IF EXISTS (SELECT 1 FROM tests.trans_work_record) THEN RETURN; END IF;
    SELECT s.info_staff_id INTO adm FROM tests.info_staff AS s
     WHERE s.remove IS FALSE
     ORDER BY CASE WHEN upper(s.code) = upper(current_setting('init.admin_code')) THEN 0 ELSE 1 END, s.code LIMIT 1;
    SELECT w.trans_work_plan_id, rp.item_id INTO wp
      FROM tests.trans_work_plan AS w
      INNER JOIN tests.trans_operations_plan AS op ON op.trans_operations_plan_id = w.trans_operations_plan_id
      INNER JOIN tests.trans_resource_plan AS rp ON rp.trans_resource_plan_id = op.trans_resource_plan_id
     WHERE w.remove IS FALSE ORDER BY w.symbol LIMIT 1;
    SELECT c.trans_container_id INTO cont FROM tests.trans_container AS c WHERE c.remove IS FALSE ORDER BY c.code LIMIT 1;
    SELECT d.trans_order_detail_id, o.trans_order_id, o.stakeholder_id INTO od
      FROM tests.trans_order_detail AS d
      INNER JOIN tests.trans_order AS o ON o.trans_order_id = d.trans_order_id
     WHERE d.remove IS FALSE AND o.stakeholder_id IS NOT NULL ORDER BY d.symbol LIMIT 1;
    IF adm IS NULL OR wp.trans_work_plan_id IS NULL OR cont IS NULL OR od.trans_order_detail_id IS NULL THEN RETURN; END IF;

    -- WR-1: 10 を作る
    INSERT INTO tests.trans_work_record (trans_work_plan_id, nth_time, start_at, stop_at, qty, update_user_id)
    VALUES (wp.trans_work_plan_id, 1, now() - interval '3 days', now() - interval '3 days' + interval '2 hours', 10, adm)
    RETURNING trans_work_record_id INTO wr1;
    lot1 := tests.visiter_receive(cont, 10, false, wr1, NULL, NULL, adm);

    -- WR-2: WR-1 のロットから 4 を投入して 3 を作る
    INSERT INTO tests.trans_work_record (trans_work_plan_id, nth_time, start_at, stop_at, qty, update_user_id)
    VALUES (wp.trans_work_plan_id, 2, now() - interval '2 days', now() - interval '2 days' + interval '2 hours', 3, adm)
    RETURNING trans_work_record_id INTO wr2;
    junk := tests.visiter_issue(lot1.trans_visiter_id, 4, wr2, adm);
    junk := tests.visiter_receive(cont, 3, false, wr2, NULL, NULL, adm);

    -- 顧客支給の材料 5(受注の顧客から受け取る。検品済みとして、仮止めはしない)。所有者(顧客)はトリガーが決める
    lot_s := tests.visiter_receive(cont, 5, false, NULL, NULL, NULL, adm);
    PERFORM tests.supply_register(
        od.stakeholder_id, true, true, false,
        jsonb_build_array(jsonb_build_object('item_id', wp.item_id, 'quantity', 5, 'order_detail_id', od.trans_order_detail_id,
                                             'visiter_ids', jsonb_build_array(lot_s.trans_visiter_id))),
        od.trans_order_id, NULL, NULL, NULL, '顧客支給(ダミー)', NULL, NULL, adm);

    -- WR-3: 支給の材料から 2 を投入して 2 を作る
    INSERT INTO tests.trans_work_record (trans_work_plan_id, nth_time, start_at, stop_at, qty, update_user_id)
    VALUES (wp.trans_work_plan_id, 3, now() - interval '1 day', now() - interval '1 day' + interval '2 hours', 2, adm)
    RETURNING trans_work_record_id INTO wr3;
    junk := tests.visiter_issue(lot_s.trans_visiter_id, 2, wr3, adm);
    junk := tests.visiter_receive(cont, 2, false, wr3, NULL, NULL, adm);
END $$;

-- 棚ビジターの所有者をそろえる
SELECT tests.visiter_owner_rebuild() AS lots_checked;

-- #####################################################################
-- 10. 監査のダミー(監査標準・項目・監査の計画)
-- #####################################################################
\c test_avocado
-- 監査標準(項目 2 つ)と、その監査標準で登録した監査の計画(チーム 1 つ・監査員 = 管理者と TANAKA・予定日 = 3 日後)。
-- 監査の計画は DB の関数(audit_plan_register。1 トランザクション)で登録する。予定が近いため、ログインのたびの audit_notify_due が
-- 監査員へ通知を作る。何度流しても同じ(監査標準のコードがあれば作らない)。
SELECT set_config('init.admin_code', :'admin_code', false) \gset

CREATE OR REPLACE FUNCTION pg_temp.ap(p_ja varchar, p_en varchar, p_staff uuid) RETURNS uuid AS $$
    SELECT a.shared_appellations_id
    FROM tests.shared_appellation_save(NULL, jsonb_build_object('ja', p_ja, 'en', p_en), NULL, NULL, p_staff) AS a
$$ LANGUAGE sql;

DO $$
DECLARE
    adm uuid; tanaka uuid; std uuid; auditors jsonb;
BEGIN
    SELECT s.info_staff_id INTO adm FROM tests.info_staff AS s
     WHERE s.remove IS FALSE
     ORDER BY CASE WHEN upper(s.code) = upper(current_setting('init.admin_code')) THEN 0 ELSE 1 END, s.code LIMIT 1;
    IF adm IS NULL OR EXISTS (SELECT 1 FROM tests.mstr_audit_std AS m WHERE m.code = 'AS-INTERNAL' AND m.remove IS FALSE) THEN RETURN; END IF;
    SELECT s.info_staff_id INTO tanaka FROM tests.info_staff AS s WHERE upper(s.code) = 'TANAKA' AND s.remove IS FALSE LIMIT 1;

    INSERT INTO tests.mstr_audit_std (code, names)
    VALUES ('AS-INTERNAL', pg_temp.ap('内部監査の標準', 'Internal audit standard', adm))
    RETURNING mstr_audit_std_id INTO std;
    INSERT INTO tests.mstr_audit_std_checkitem (mstr_audit_std_id, code, names, type_class, formula_class)
    VALUES (std, 'AS-I-01', pg_temp.ap('作業指示に従って作業している', 'Work follows the work instruction', adm), 1, 1),
           (std, 'AS-I-02', pg_temp.ap('不適合を異常として登録している', 'Nonconformities are registered as complaints', adm), 1, 1);

    auditors := jsonb_build_array(adm);
    IF tanaka IS NOT NULL AND tanaka <> adm THEN auditors := auditors || to_jsonb(tanaka); END IF;
    PERFORM tests.audit_plan_register(
        '{"ja":"工程の内部監査","en":"Internal process audit"}'::jsonb,
        '{"ja":"工程管理の運用を確認する(ダミー)"}'::jsonb,
        std,
        jsonb_build_array(jsonb_build_object(
            'team_names', '{"ja":"工程監査チーム","en":"Process audit team"}'::jsonb,
            'auditor_ids', auditors,
            'scheduled_at', to_char(date_trunc('day', now() + interval '3 days') + interval '9 hours', 'YYYY-MM-DD HH24:MI'),
            'expected_end_at', to_char(date_trunc('day', now() + interval '3 days') + interval '17 hours', 'YYYY-MM-DD HH24:MI'))),
        NULL, NULL, adm);
END $$;
