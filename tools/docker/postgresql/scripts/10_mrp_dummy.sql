-- =====================================================================
-- 09_mrp_dummy.sql
-- MRPを実行する直前までのダミーデータ (マスタ・受注・非計上・在庫・発注残)
--
-- ■ 実行順   06_cteate_test.sql → 08_mrp.sql → 本ファイル
--   ・言語 ja / en・会社・担当者 (info_staff.code = 'ADMIN') は、既にあればそれを使い、無ければ作る
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
--     在庫は 発注 → 発注明細 → 受入実績 → 受入棚ビジター → 棚ビジター(コンテナ) から求められる
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
            INSERT INTO tests.trans_visiter (trans_container_id, quantity) VALUES (ct, r.rec)
            RETURNING trans_visiter_id INTO vs;
            INSERT INTO tests.trans_purchase_rec_visiter (trans_purchase_rec_id, trans_visiter_id, quantity)
            VALUES (rc, vs, r.rec);
        END IF;
    END LOOP;
END $$;

COMMIT;

-- ---------------------------------------------------------------------
-- 登録結果
-- ---------------------------------------------------------------------
SELECT 'MRP実行担当者 (info_staff_id)' AS item, info_staff_id::text AS value FROM tests.info_staff WHERE code = 'ADMIN'
UNION ALL SELECT '品目',           COUNT(*)::text FROM tests.mstr_item
UNION ALL SELECT '受注明細',       COUNT(*)::text FROM tests.trans_order_detail
UNION ALL SELECT '非計上明細',     COUNT(*)::text FROM tests.trans_unrecognized_detail
UNION ALL SELECT '現在庫の品目',   COUNT(*)::text FROM tests.v_item_on_hand
UNION ALL SELECT 'マスタ不備(重大度別)', COALESCE(string_agg(severity || ':' || n, ' '), 'なし')
          FROM (SELECT severity, COUNT(*) AS n FROM tests.mrp_check_items(NULL) GROUP BY severity ORDER BY severity) AS x;
