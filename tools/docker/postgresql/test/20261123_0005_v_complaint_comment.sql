-- v_complaint のスマートコメント(@foreignKey: titles・details・reporter_staff_id)の差分。DB に適用済みの環境へ流し、PostGraphile を再起動する(06 を作り直す場合は不要)
COMMENT ON VIEW tests.v_complaint IS '@primaryKey trans_complaint_id
@unique symbol
@foreignKey (trans_complaint_id) references trans_complaint (trans_complaint_id)
@foreignKey (titles) references trans_label (trans_label_id)
@foreignKey (details) references trans_text (trans_text_id)
@foreignKey (reporter_staff_id) references info_staff (info_staff_id)
異常の一覧(1 行 = 異常)。種類は、子の表に行があるか(has_*)で分かる(1 つの異常が複数の種類を持てる)。外部か・クレームかは、種類のビュー v_complaint_kind の値。種類の名称 kind_names も同じビューの値(画面で決めない)';
