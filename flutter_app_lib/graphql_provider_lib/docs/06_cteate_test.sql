\c test_avocado
--202.create tables
create table tests.history_mstr_shipping_kind (
    history_id uuid default gen_random_uuid(),
    mstr_shipping_kind_id uuid not null,
    code varchar(255) not null,
    shared_appellations_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_shipping_kind (
    mstr_shipping_kind_id uuid default gen_random_uuid(),
    code varchar(255) not null,
    shared_appellations_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_item_size_kind (
    history_id uuid default gen_random_uuid(),
    mstr_item_size_kind_id uuid not null,
    code varchar(255) not null,
    shared_appellations_id uuid not null,
    shared_unit_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_item_size_kind (
    mstr_item_size_kind_id uuid default gen_random_uuid(),
    code varchar(255) not null,
    shared_appellations_id uuid not null,
    shared_unit_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_item_kind (
    history_id uuid default gen_random_uuid(),
    mstr_item_kind_id uuid not null,
    code varchar(255) default null,
    shared_appellations_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_item_kind (
    mstr_item_kind_id uuid default gen_random_uuid(),
    code varchar(255) default null,
    shared_appellations_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_shared_appellations (
    history_id uuid default gen_random_uuid(),
    shared_appellations_id uuid not null,
    name uuid not null,
    pronunciation uuid default null,
    nickname uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.shared_appellations (
    shared_appellations_id uuid default gen_random_uuid(),
    name uuid not null,
    pronunciation uuid default null,
    nickname uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_shared_dictionary (
    history_id uuid default gen_random_uuid(),
    shared_dictionary_id uuid not null,
    ja varchar(1024) default null,
    en varchar(1024) default null,
    revision integer not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.shared_dictionary (
    shared_dictionary_id uuid default gen_random_uuid(),
    ja varchar(1024) default null,
    en varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_equipment (
    history_id uuid default gen_random_uuid(),
    mstr_equipment_id uuid not null,
    mstr_item_id uuid not null,
    mstr_equipment_category_id uuid default null,
    code varchar(255) not null,
    control_code varchar(255) default null,
    label_code varchar(255) default null,
    mstr_location_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_equipmen_kind (
    history_id uuid default gen_random_uuid(),
    mstr_equipment_kind_id uuid not null,
    kind_code varchar(255) not null,
    shared_appellations_id uuid not null,
    start_at timestamp default now(),
    stop_at timestamp default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_equipment_kind (
    mstr_equipment_kind_id uuid default gen_random_uuid(),
    kind_code varchar(255) not null,
    shared_appellations_id uuid not null,
    start_at timestamp default now(),
    stop_at timestamp default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_staff_icon (
    history_id uuid default gen_random_uuid(),
    info_role_id uuid not null,
    trans_file_id uuid not null,
    info_staff_id varchar(255) not null,
    info_staff_history_id varchar(255) not null,
    name varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_staff_icon (
    info_role_id uuid default gen_random_uuid(),
    trans_file_id uuid not null,
    info_staff_id varchar(255) not null,
    info_staff_history_id varchar(255) not null,
    name varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_item_hcdcs (
    history_id uuid default gen_random_uuid(),
    mstr_item_hcds_id uuid not null,
    mstr_item_id uuid not null,
    iso3166_3 varchar(2) default '',
    code varchar(16) default '',
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_item_hcdcs (
    mstr_item_hcds_id uuid default gen_random_uuid(),
    mstr_item_id uuid not null,
    iso3166_3 varchar(2) default '',
    code varchar(16) default '',
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_document_content_tree (
    history_id uuid default gen_random_uuid(),
    mstr_document_content_tree_id uuid not null,
    mstr_document_content_id uuid not null,
    parent_mstr_document_content_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.hrchy_mstr_document_content (
    hrchy_mstr_location_id uuid default gen_random_uuid(),
    ancestor_mstr_document_content_id uuid default null,
    descendant_mstr_document_content_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_document_content (
    history_id uuid default gen_random_uuid(),
    mstr_document_content_id uuid not null,
    mstr_document_id uuid not null,
    code varchar(255) not null,
    name varchar(255) not null,
    sequence integer default 1,
    title varchar(1024) not null,
    content text not null,
    image_content boolean default 'f',
    trans_file_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_document_content_tree (
    mstr_document_content_tree_id uuid default gen_random_uuid(),
    mstr_document_content_id uuid not null,
    parent_mstr_document_content_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_document_content (
    mstr_document_content_id uuid default gen_random_uuid(),
    mstr_document_id uuid default gen_random_uuid(),
    code varchar(255) not null,
    name varchar(255) not null,
    sequence integer default 1,
    title varchar(1024) not null,
    content text not null,
    image_content boolean default 'f',
    trans_file_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_document_tier (
    history_id uuid default gen_random_uuid(),
    mstr_document_tier_id uuid not null,
    code varchar(255) not null,
    name varchar(255) not null,
    trans_file_id uuid default null,
    attributive_noun varchar(255) not null,
    Identifier varchar(255) not null,
    tier_number integer default 1,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_document_tier (
    mstr_document_tier_id uuid default gen_random_uuid(),
    code varchar(255) not null,
    name varchar(255) not null,
    trans_file_id uuid default null,
    attributive_noun varchar(255) not null,
    Identifier varchar(255) not null,
    tier_number integer default 1,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_document_tree (
    history_id uuid default gen_random_uuid(),
    mstr_document_tree_id uuid not null,
    mstr_document_id uuid not null,
    parent_mstr_document_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.hrchy_mstr_documet (
    hrchy_mstr_document_id uuid default gen_random_uuid(),
    ancestor_mstr_document_id uuid default null,
    descendant_mstr_document_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_document_tree (
    mstr_document_tree_id uuid default gen_random_uuid(),
    mstr_document_id uuid not null,
    parent_mstr_document_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_document (
    history_id uuid default gen_random_uuid(),
    mstr_document_id uuid not null,
    code varchar(255) not null,
    name varchar(255) not null,
    mstr_document_tier_id uuid not null,
    trans_file_id uuid default null,
    title varchar(255) default 't',
    control_number varchar(255) not null,
    version_code integer default 1,
    version_name varchar(16) default '',
    trans_approved_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_document (
    mstr_document_id uuid default gen_random_uuid(),
    code varchar(255) not null,
    name varchar(255) not null,
    mstr_document_tier_id uuid not null,
    trans_file_id uuid default null,
    title varchar(1024) not null,
    control_number varchar(255) not null,
    version_code integer default 1,
    version_name varchar(16) default '',
    trans_approved_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_container_tree (
    trans_container_tree_id uuid default gen_random_uuid(),
    trans_container_id uuid not null,
    parent_trans_container_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_location_tree (
    history_id uuid default gen_random_uuid(),
    mstr_location_tree_id uuid not null,
    mstr_location_id uuid not null,
    parent_mstr_location_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_location_tree (
    mstr_location_tree_id uuid default gen_random_uuid(),
    mstr_location_id uuid not null,
    parent_mstr_location_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_department_tree (
    history_id uuid default gen_random_uuid(),
    info_department_tree_id uuid not null,
    info_department_id uuid not null,
    parent_info_department_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_department_tree (
    info_department_tree_id uuid default gen_random_uuid(),
    info_department_id uuid not null,
    parent_info_department_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.hrchy_mstr_task (
    hrchy_mstr_task_id uuid default gen_random_uuid(),
    ancestor_mstr_task_id uuid default null,
    descendant_mstr_task_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.hrchy_mstr_item (
    hrchy_mstr_item_id uuid default gen_random_uuid(),
    ancestor_mstr_item_id uuid default null,
    descendant_mstr_item_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_inspection_operation (
    history_id uuid default gen_random_uuid(),
    mstr_inspection_operation_id uuid not null,
    mstr_operation_id uuid not null,
    mstr_equipment_id uuid not null,
    mstr_item_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_inspection_operation (
    mstr_inspection_operation_id uuid default gen_random_uuid(),
    mstr_operation_id uuid not null,
    mstr_equipment_id uuid not null,
    mstr_item_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_inspection_operation_task (
    history_id uuid default gen_random_uuid(),
    mstr_inspection_operation_task_id uuid not null,
    mstr_operation_task_id uuid not null,
    mstr_operation_id uuid not null,
    mstr_task_id uuid not null,
    sequence smallint not null,
    mstr_inspection_operation_id uuid not null,
    commencement_date timestamp not null,
    time_interval interval not null,
    mstr_inspection_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_inspection_operation_task (
    mstr_inspection_operation_task_id uuid default gen_random_uuid(),
    mstr_operation_task_id uuid not null,
    mstr_operation_id uuid not null,
    mstr_task_id uuid not null,
    sequence smallint default 1,
    mstr_inspection_operation_id uuid not null,
    commencement_date timestamp default now(),
    time_interval interval not null,
    mstr_inspection_id uuid default gen_random_uuid(),
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_department_access_permission (
    history_id uuid default gen_random_uuid(),
    info_department_access_permission_id uuid not null,
    info_access_path_id uuid not null,
    info_app_id uuid not null,
    info_department_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_department_access_permission (
    info_department_access_permission_id uuid default gen_random_uuid(),
    info_access_path_id uuid not null,
    info_app_id uuid not null,
    info_department_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_assign (
    history_id uuid default gen_random_uuid(),
    info_assign_id uuid not null,
    info_staff_id uuid not null,
    info_role_id uuid not null,
    info_department_id uuid default null,
    enable boolean default 'T',
    priority smallint default 1,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_item_provision (
    mstr_item_provision_id uuid default gen_random_uuid(),
    info_provision_id uuid not null,
    mstr_item_id uuid not null,
    start_at timestamp default now(),
    stop_at timestamp default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_item_provision (
    history_id uuid default gen_random_uuid(),
    mstr_item_provision_id uuid not null,
    info_provision_id uuid not null,
    mstr_item_id uuid not null,
    start_at timestamp default now(),
    stop_at timestamp default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_equipment_provision (
    history_id uuid default gen_random_uuid(),
    mstr_equipment_provision_id uuid not null,
    info_provision_id uuid not null,
    mstr_equipment_id uuid not null,
    start_at timestamp default now(),
    stop_at timestamp default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_equipment_provision (
    mstr_equipment_provision_id uuid default gen_random_uuid(),
    info_provision_id uuid not null,
    mstr_equipment_id uuid not null,
    start_at timestamp default now(),
    stop_at timestamp default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.hrchy_trans_container (
    hrchy_trans_container_id uuid default gen_random_uuid(),
    ancestor_trans_container_id uuid default null,
    descendant_trans_container_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_container (
    trans_container_id uuid default gen_random_uuid(),
    code varchar(255) not null,
    name varchar(1024) default null,
    mstr_location_id uuid default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.hrchy_info_department (
    hrchy_info_department_id uuid default gen_random_uuid(),
    ancestor_info_department_id uuid default null,
    descendant_info_department_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_app_status (
    history_id uuid default gen_random_uuid(),
    info_app_status_id uuid not null,
    info_app_id uuid not null,
    status smallint default 0,
    plan_date timestamp not null,
    start_date timestamp not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_app_status (
    info_app_status_id uuid default gen_random_uuid(),
    info_app_id uuid not null,
    status smallint default 0,
    plan_date timestamp not null,
    start_date timestamp not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_announcement  (
    trans_authtoken_id uuid default gen_random_uuid(),
    to_info_staff_id uuid not null,
    to_history_id uuid default gen_random_uuid(),
    for_info_staff_id uuid default null,
    category varchar(16) not null,
    title varchar(255) default null,
    message varchar(255) default null,
    is_reade boolean default 'f',
    expiration_date timestamp default CURRENT_DATE + 30,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_operation_task (
    history_id uuid default gen_random_uuid(),
    mstr_operation_task_id uuid not null,
    mstr_operation_id uuid not null,
    mstr_task_id uuid not null,
    sequence smallint default 1,
    control_code varchar(255) default null,
    shared_appellations_id uuid not null,
    detail varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_report (
    history_id uuid default gen_random_uuid(),
    mstr_report_id uuid not null,
    trans_file_id uuid default null,
    name varchar(255) not null,
    code varchar(255) not null,
    is_default boolean default 't',
    info_access_path_id uuid not null,
    info_app_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_item_operation_task (
    history_id uuid default gen_random_uuid(),
    mstr_item_operation_task_id uuid not null,
    mstr_item_id uuid not null,
    mstr_operation_task_id uuid not null,
    mstr_operation_id uuid not null,
    mstr_task_id uuid not null,
    sequence smallint not null,
    default_interval interval default '0:0:0',
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_item_operation (
    history_id uuid default gen_random_uuid(),
    mstr_item_operation_id uuid not null,
    mstr_item_id uuid not null,
    mstr_operation_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_task_tree (
    history_id uuid default gen_random_uuid(),
    mstr_task_tree_id uuid not null,
    mstr_task_id uuid not null,
    parent_mstr_task_id uuid default null,
    code varchar(255) default null,
    control_code varchar(255) default null,
    shared_appellations_id uuid default gen_random_uuid(),
    detail varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_outsource_available (
    history_id uuid default gen_random_uuid(),
    mstr_outsource_available_id uuid not null,
    mstr_task_location_id uuid not null,
    mstr_task_id uuid not null,
    mstr_stakeholder_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_equipment_available (
    history_id uuid default gen_random_uuid(),
    mstr_equipment_available_id uuid not null,
    mstr_task_location_id uuid not null,
    mstr_task_id uuid not null,
    mstr_equipment_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_task (
    history_id uuid default gen_random_uuid(),
    mstr_task_id uuid not null,
    mstr_task_group_id uuid not null,
    code varchar(255) not null,
    shared_appellations_id uuid not null,
    detail varchar(255) default null,
    class smallint default 0,
    default_time interval default '0:0:0',
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_task_location (
    history_id uuid default gen_random_uuid(),
    mstr_task_location_id uuid not null,
    mstr_task_id uuid not null,
    info_department_id uuid default null,
    info_company_id uuid default null,
    mstr_location_id uuid default null,
    mstr_equipment_id uuid default null,
    mstr_stakeholder_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_task_location (
    mstr_task_location_id uuid default gen_random_uuid(),
    mstr_task_id uuid not null,
    info_department_id uuid default null,
    info_company_id uuid default null,
    mstr_location_id uuid default null,
    mstr_equipment_id uuid default null,
    mstr_stakeholder_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_task_group (
    history_id uuid default gen_random_uuid(),
    mstr_task_group_id uuid not null,
    code varchar(255) not null,
    shared_appellations_id uuid not null,
    details varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_operation (
    history_id uuid default gen_random_uuid(),
    mstr_operation_id uuid not null,
    name varchar(255) not null,
    control_code varchar(255) default null,
    shared_appellations_id uuid not null,
    detail varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_manufacturer (
    history_id uuid default gen_random_uuid(),
    mstr_manufacturer_id uuid not null,
    code varchar(255) default null,
    shared_appellations_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_inspection (
    history_id uuid default gen_random_uuid(),
    mstr_inspection_id uuid not null,
    mstr_task_id uuid not null,
    code varchar(255) not null,
    class varchar(255) not null,
    base_date timestamp default now(),
    time_interval interval default '0 0:00:00',
    stakeholder boolean default 'f',
    inspection_formula_id uuid default null,
    revision integer default 1,
    item_history_id uuid not null,
    mstr_item_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_inspection_formula (
    history_id uuid default gen_random_uuid(),
    mstr_inspection_formula_id uuid not null,
    formula_class smallint default 1,
    arg_class varchar(255) default 'true',
    type_class smallint default 1,
    format_class varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_item_size (
    history_id uuid default gen_random_uuid(),
    mstr_item_size_id uuid not null,
    mstr_item_id uuid not null,
    mstr_item_size_kind_id uuid not null,
    size_value decimal(10,4) default 0.0,
    detail varchar(1024) default null,
    unit_history_id uuid default null,
    info_unit_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_item_tree (
    history_id uuid default gen_random_uuid(),
    mstr_item_tree_id uuid not null,
    mstr_item_id uuid not null,
    parent_mstr_item_id uuid default null,
    code varchar(255) default null,
    control_code varchar(255) default null,
    shared_appellations_id uuid not null,
    quantity decimal(10,2) not null,
    detail varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_item (
    history_id uuid default gen_random_uuid(),
    mstr_item_id uuid not null,
    system_class integer default '0000000000000000',
    code varchar(255) not null,
    identification varchar(255) default null,
    control_code varchar(255) default null,
    mstr_manufacturer_id uuid default null,
    shared_appellations_id uuid not null,
    label_code varchar(255) default null,
    description varchar(255) default null,
    info_unit_id uuid default null,
    increment decimal(10,2) default 0,
    lot boolean default 'f',
    stock_quantity decimal(10,2) default 0,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_audit_std_checkitem (
    history_id uuid default gen_random_uuid(),
    mstr_audit_std_checkitem_id uuid not null,
    mstr_audit_std_id uuid not null,
    code varchar(255) default null,
    control_code varchar(255) default null,
    shared_appellations_id uuid not null,
    detail varchar(1024) default null,
    conformance smallint default 0,
    min smallint default 0,
    max smallint default 0,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_audit_std (
    history_id uuid default gen_random_uuid(),
    mstr_audit_std_id uuid not null,
    code varchar(255) default null,
    control_code varchar(255) default null,
    category smallint default 0,
    shared_appellations_id uuid not null,
    detail varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_location (
    history_id uuid default gen_random_uuid(),
    mstr_location_id uuid not null,
    code varchar(255) default null,
    info_department_id uuid default null,
    control_code varchar(255) default null,
    shared_appellations_id uuid not null,
    info_address_id uuid default null,
    available boolean default 't',
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_equipment_tag (
    history_id uuid default gen_random_uuid(),
    mstr_equipment_tag_id uuid not null,
    trans_file_id uuid default null,
    name varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_stakeholder_contact (
    history_id uuid default gen_random_uuid(),
    mstr_stakeholder_contact_id uuid not null,
    mstr_stakeholder_id uuid not null,
    code varchar(255) not null,
    office_name varchar(255) not null,
    department_name varchar(255) default null,
    shared_appellations_id uuid not null,
    private_phone varchar(255) default null,
    info_address_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_stakeholder_provision (
    history_id uuid default gen_random_uuid(),
    mstr_stakeholder_provision_id uuid not null,
    mstr_stakeholder_id uuid not null,
    info_provision_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_stakeholder (
    history_id uuid default gen_random_uuid(),
    mstr_stakeholder_id uuid not null,
    is_customer boolean default 'f',
    is_supplier boolean default 'f',
    is_logistics boolean default 'f',
    code varchar(255) not null,
    control_code varchar(255) default null,
    shared_appellations_id uuid not null,
    mail varchar(255) default null,
    info_address_id uuid default null,
    mstr_shipping_kind_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_staff_license (
    history_id uuid default gen_random_uuid(),
    mstr_staff_license_id uuid not null,
    info_staff_id uuid not null,
    mstr_license_id uuid not null,
    start_at timestamp default now(),
    stop_at timestamp not null,
    abeyance boolean default 'f',
    abeyance_at timestamp default null,
    revocation boolean default 'f',
    revocation_at timestamp default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_license (
    history_id uuid default gen_random_uuid(),
    mstr_license_id uuid not null,
    code varchar(255) default null,
    shared_appellations_id uuid not null,
    detail varchar(1024) default null,
    public_license boolean default 'f',
    customer_license boolean default 'f',
    organization_license boolean default 'f',
    update_interval interval default '0:0:0',
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_staff_access_permission (
    history_id uuid default gen_random_uuid(),
    info_staff_access_permission_id uuid not null,
    info_access_path_id uuid default null,
    info_staff_id uuid default null,
    permit smallint default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.historymstr_approval_scope_pattern (
    history_id uuid default gen_random_uuid(),
    mstr_approval_scope_pattern_id uuid not null,
    mstr_approval_pattern_id uuid default null,
    info_access_path_approval_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_approval_pattern (
    history_id uuid default gen_random_uuid(),
    mstr_approval_pattern_id uuid not null,
    shared_appellations_id uuid default gen_random_uuid(),
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_capability (
    history_id uuid default gen_random_uuid(),
    mstr_capability_id uuid not null,
    code varchar(255) not null,
    shared_appellations_id uuid default gen_random_uuid(),
    detail varchar(1024) default null,
    reference_value decimal(5,2) not null,
    max decimal(5,2) default 100.00,
    min decimal(5,2) default 0.00,
    step decimal(5,2) default 1.00,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_approval_pattern_detail (
    history_id uuid default gen_random_uuid(),
    mstr_approval_pattern_detail_id uuid not null,
    mstr_approval_id uuid not null,
    mstr_approval_pattern_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_approval (
    history_id uuid default gen_random_uuid(),
    mstr_approval_id uuid not null,
    info_company_id uuid default null,
    info_department_id uuid default null,
    info_role_id uuid not null,
    priority smallint default 32767,
    shared_appellations_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_role (
    history_id uuid default gen_random_uuid(),
    info_role_id uuid not null,
    priority smallint not null,
    name varchar(255) not null,
    kana varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_staff_capability (
    history_id uuid default gen_random_uuid(),
    mstr_staff_capability_id uuid not null,
    info_staff_id uuid not null,
    mstr_capability_id uuid default null,
    value decimal(5,2) default 0,
    stop boolean default 'f',
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_mstr_sign (
    history_id uuid default gen_random_uuid(),
    mstr_sign_id uuid not null,
    info_staff_id uuid not null,
    code varchar(255) default null,
    mail varchar(255) default null,
    role smallint default 10,
    mstr_signin_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_staff (
    history_id uuid default gen_random_uuid(),
    info_staff_id uuid not null,
    info_company_id uuid default null,
    info_office_id uuid default null,
    code varchar(16) default null,
    shared_appellations_id uuid default gen_random_uuid(),
    sex varchar(16) default null,
    phone varchar(255) default null,
    private_phone varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_provision (
    history_id uuid default gen_random_uuid(),
    info_provision_id uuid not null,
    info_company_id uuid not null,
    code varchar(255) not null,
    shared_appellations_id uuid not null,
    details varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_address (
    history_id uuid default gen_random_uuid(),
    info_address_id uuid not null,
    iso3166_3 varchar(2) default 'JP',
    zip_code varchar(16) default null,
    address1 varchar(1024) default null,
    address2 varchar(1024) default null,
    bill varchar(1024) default null,
    phone varchar(255) default null,
    fax_number varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_shared_unit (
    history_id uuid default gen_random_uuid(),
    shared_unit_id uuid not null,
    shared_appellations_id uuid not null,
    description varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_office (
    history_id uuid default gen_random_uuid(),
    info_office_id uuid not null,
    info_company_id uuid not null,
    code varchar(255) not null,
    shared_appellations_id uuid default gen_random_uuid(),
    info_address_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_department (
    history_id uuid default gen_random_uuid(),
    info_department_id uuid not null,
    info_company_id uuid not null,
    info_office_id uuid default null,
    code varchar(255) not null,
    shared_appellations_id uuid not null,
    category1 uuid default null,
    category2 uuid default null,
    category3 uuid default null,
    info_address_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_access_path_approval (
    history_id uuid default gen_random_uuid(),
    info_access_path_approval_id uuid not null,
    info_access_path_id uuid default null,
    name varchar(255) default null,
    kana varchar(255) default null,
    tag varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_access_path (
    history_id uuid default gen_random_uuid(),
    info_access_path_id uuid not null,
    info_app_id uuid not null,
    name varchar(255) not null,
    usecase_path1 varchar(255) default null,
    usecase_path2 varchar(255) default null,
    usecase_path3 varchar(255) default null,
    classes smallint default 0,
    sequence smallint default 1,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_company (
    history_id uuid default gen_random_uuid(),
    info_company_id uuid not null,
    shared_appellations_id uuid not null,
    info_address_id uuid default null,
    web_page varchar(255) default null,
    ceo varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_company (
    info_company_id uuid default gen_random_uuid(),
    shared_appellations_id uuid not null,
    info_address_id uuid default null,
    web_page varchar(255) default null,
    ceo varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.history_info_app (
    history_id uuid default gen_random_uuid(),
    info_app_id uuid not null,
    info_company_id uuid not null,
    name varchar(255) not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_anonymouse (
    trans_anonymouse_id uuid default gen_random_uuid(),
    expiration_at timestamp not null,
    mstr_sign_id uuid default null,
    start_at timestamp default null,
    completion_at timestamp default null,
    completion boolean default 'f',
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_file_reminder (
    trans_file_reminder_id uuid default gen_random_uuid(),
    name varchar(255) not null,
    label varchar(255) not null,
    message varchar(1024) default null,
    type_codde varchar(255) default null,
    option varchar(1024) default null,
    urls varchar(1024) default null,
    start_at timestamp default null,
    expiration_date interval default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_equipment_available (
    mstr_equipment_available_id uuid default gen_random_uuid(),
    mstr_task_location_id uuid not null,
    mstr_task_id uuid not null,
    mstr_equipment_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_outsource_available (
    mstr_outsource_available_id uuid default gen_random_uuid(),
    mstr_task_location_id uuid not null,
    mstr_task_id uuid not null,
    mstr_stakeholder_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_task_group (
    mstr_task_group_id uuid default gen_random_uuid(),
    code varchar(255) not null,
    shared_appellations_id uuid not null,
    details varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_unrecognized_detail (
    trans_unrecognized_detail_id uuid default gen_random_uuid(),
    trans_unrecognized_id uuid not null,
    quantity decimal(10,2) default 0,
    cost decimal(10,2) default null,
    deadline timestamp default null,
    history_id uuid not null,
    mstr_item_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_unrecognized (
    trans_unrecognized_id uuid default gen_random_uuid(),
    control_code_1 varchar(255) default null,
    control_code_2 varchar(255) default null,
    control_code_3 varchar(255) default null,
    decision_date timestamp default null,
    deadline timestamp default null,
    expected_completion_date timestamp default null,
    planned_shipping_date timestamp default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_stakeholder_provision (
    mstr_stakeholder_provision_id uuid default gen_random_uuid(),
    mstr_stakeholder_id uuid not null,
    info_provision_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_provision (
    info_provision_id uuid default gen_random_uuid(),
    info_company_id uuid not null,
    code varchar(255) not null,
    shared_appellations_id uuid not null,
    details varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_inspection_formula (
    mstr_inspection_formula_id uuid default gen_random_uuid(),
    formula_class smallint default 1,
    arg_class varchar(255) default 'true',
    type_class smallint default 1,
    format_class varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_manufacturer (
    mstr_manufacturer_id uuid default gen_random_uuid(),
    code varchar(255) default null,
    shared_appellations_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_approval_scope_pattern (
    mstr_approval_scope_pattern_id uuid default gen_random_uuid(),
    mstr_approval_pattern_id uuid default null,
    info_access_path_approval_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_approval_pattern_detail (
    mstr_approval_pattern_detail_id uuid default gen_random_uuid(),
    mstr_approval_id uuid not null,
    mstr_approval_pattern_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_address (
    info_address_id uuid default gen_random_uuid(),
    iso3166_3 varchar(2) default 'JP',
    zip_code varchar(16) default null,
    address1 varchar(1024) default null,
    address2 varchar(1024) default null,
    bill varchar(1024) default null,
    phone varchar(255) default null,
    fax_number varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_inspection_report (
    trans_inspection_report_id uuid not null,
    trans_inspect_sch_detail_id uuid not null,
    mstr_report_id uuid default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_report (
    mstr_report_id uuid default gen_random_uuid(),
    trans_file_id uuid default null,
    name varchar(255) not null,
    code varchar(255) not null,
    is_default boolean default 't',
    info_access_path_id uuid not null,
    info_app_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_equipment_tag (
    mstr_equipment_tag_id uuid default gen_random_uuid(),
    trans_file_id uuid default null,
    name varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_access_path_approval (
    info_access_path_approval_id uuid default gen_random_uuid(),
    info_access_path_id uuid default null,
    name varchar(255) default null,
    kana varchar(255) default null,
    tag varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_approved (
    trans_approved_id uuid not null,
    period timestamp not null,
    status smallint default 32767,
    priority smallint default 0,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_approval (
    mstr_approval_id uuid default gen_random_uuid(),
    info_company_id uuid default null,
    info_department_id uuid default null,
    info_role_id uuid not null,
    priority smallint default 32767,
    shared_appellations_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_role (
    info_role_id uuid default gen_random_uuid(),
    priority smallint not null,
    name varchar(255) not null,
    kana varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_approval_pattern (
    mstr_approval_pattern_id uuid default gen_random_uuid(),
    shared_appellations_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_approval (
    trans_approval_id uuid default gen_random_uuid(),
    trans_approval_gr_id uuid not null,
    mstr_approval_pattern_id uuid not null,
    trans_approved_id uuid not null,
    staff_history_id uuid not null,
    info_staff_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_approval_gr (
    trans_approval_gr_id uuid default gen_random_uuid(),
    mstr_approval_pattern_id uuid not null,
    trans_approved_id uuid not null,
    status smallint default 32767,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_audit_member (
    trans_audit_member_id uuid default gen_random_uuid(),
    trans_audit_id uuid not null,
    audit_history_id uuid not null,
    mstr_audit_std_id uuid not null,
    class smallint not null,
    name varchar(255) not null,
    department varchar(255) default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_auditor (
    trans_auditor_id uuid default gen_random_uuid(),
    trans_audit_id uuid not null,
    audit_history_id uuid not null,
    mstr_audit_std_id uuid not null,
    trans_audit_team_id uuid not null,
    ccategory smallint default 0,
    history_id uuid not null,
    info_staff_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_audit_team (
    trans_audit_team_id uuid default gen_random_uuid(),
    trans_audit_id uuid not null,
    audit_history_id uuid not null,
    mstr_audit_std_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_audit (
    trans_audit_id uuid default gen_random_uuid(),
    audit_history_id uuid not null,
    mstr_audit_std_id uuid not null,
    staff_history_id uuid default null,
    info_staff_id uuid default null,
    scheduled_start_date timestamp default null,
    expected_end_date timestamp default null,
    name varchar(255) default null,
    number varchar(255) default null,
    title varchar(255) default null,
    detail varchar(1024) default null,
    info_company_id uuid default null,
    info_department_id uuid default null,
    mstr_stakeholder_id uuid default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_task_risk (
    trans_task_risk_id uuid default gen_random_uuid(),
    mstr_task_id uuid not null,
    risk_id uuid not null,
    name varchar(255) default null,
    number varchar(255) default null,
    title varchar(255) default null,
    detail varchar(1024) default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_order_detail_risk (
    trans_order_detail_risk_id uuid default gen_random_uuid(),
    trans_order_detail_id uuid not null,
    risk_id uuid not null,
    order_id uuid default null,
    mstr_item_id uuid default null,
    name varchar(255) default null,
    number varchar(255) default null,
    title varchar(255) default null,
    detail varchar(1024) default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_prevetion_detail (
    trans_prevetion_detail_id uuid default gen_random_uuid(),
    risk_id uuid not null,
    trans_prevention_id uuid not null,
    info_company_id uuid not null,
    info_department_id uuid not null,
    start_at timestamp default null,
    stop_at timestamp default null,
    name varchar(255) default null,
    number varchar(255) default null,
    title varchar(255) default null,
    詳細 varchar(1024) default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_prevention (
    trans_prevention_id uuid default gen_random_uuid(),
    risk_id uuid not null,
    name varchar(255) not null,
    number varchar(255) default null,
    title varchar(255) default null,
    detail varchar(1024) not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_order_risk (
    trans_order_risk_id uuid default gen_random_uuid(),
    trans_order_id uuid not null,
    risk_id uuid not null,
    name varchar(255) default null,
    number varchar(255) default null,
    title varchar(255) default null,
    detail varchar(1024) default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_equipment_lent (
    trans_equipment_lent_id uuid default gen_random_uuid(),
    equipment_history_id uuid default null,
    mstr_equipment_id uuid not null,
    staff_history_id uuid not null,
    info_staff_id uuid not null,
    lent_at timestamp default now(),
    return_staff_id uuid default null,
    return_at timestamp default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_item_operation (
    mstr_item_operation_id uuid default gen_random_uuid(),
    mstr_item_id uuid not null,
    mstr_operation_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.hrchy_mstr_location (
    hrchy_mstr_location_id uuid default gen_random_uuid(),
    ancestor_mstr_location_id uuid default null,
    descendant_mstr_location_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_disposal_detail (
    trans_disposal_detail_id uuid default gen_random_uuid(),
    trans_disposal_id uuid not null,
    trans_complaint_id uuid not null,
    location_id uuid default null,
    info_company_id uuid default null,
    info_department_id uuid default null,
    name varchar(255) default null,
    number varchar(255) default null,
    title varchar(255) default null,
    detail varchar(1024) default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_audit_std_checkitem (
    mstr_audit_std_checkitem_id uuid default gen_random_uuid(),
    mstr_audit_std_id uuid not null,
    code varchar(255) default null,
    control_code varchar(255) default null,
    shared_appellations_id uuid not null,
    detail varchar(1024) default null,
    conformance smallint default 0,
    min smallint default 0,
    max smallint default 0,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_audit_std (
    mstr_audit_std_id uuid default gen_random_uuid(),
    code varchar(255) default null,
    control_code varchar(255) default null,
    category smallint default 0,
    shared_appellations_id uuid not null,
    detail varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_risk (
    trans_risk_id uuid default gen_random_uuid(),
    name varchar(255) default null,
    title varchar(255) default null,
    number varchar(255) default null,
    detail varchar(1024) default null,
    frequency decimal(10,4) default null,
    momentous decimal(10,4) default null,
    action smallint default null,
    residual_risk_id uuid default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_observer_preventive (
    trans_observer_preventive_id uuid default gen_random_uuid(),
    trans_complaint_id uuid not null,
    trans_disposal_id uuid not null,
    trans_recurrence_prevention_id uuid not null,
    trans_observer_disposal_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_observer_disposal (
    trans_observer_disposal_id uuid default gen_random_uuid(),
    enable boolean default 'f',
    observe_schedule timestamp default null,
    observe_at timestamp default null,
    observer uuid default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_complaint_stakeholder_adapter (
    trans_complaint_stakeholder_adapter_id uuid not null,
    trans_order_id uuid not null,
    adapter_id uuid default gen_random_uuid(),
    name varchar(255) default null,
    number varchar(255) default null,
    title varchar(1024) default null,
    detail varchar(1024) default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_complaint_equipment_adapter (
    trans_complaint_equipment_adapter_id uuid not null,
    trans_order_id uuid not null,
    adapter_id uuid default gen_random_uuid(),
    name varchar(255) default null,
    number varchar(255) default null,
    title varchar(255) default null,
    detail varchar(1024) default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_complaint_process_adapter (
    trans_complaint_process_adapter_id uuid not null,
    process_id uuid not null,
    adapter_id uuid default gen_random_uuid(),
    name varchar(255) default null,
    number varchar(255) default null,
    title varchar(255) default null,
    detail varchar(1024) default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_complaint_order_adapter (
    trans_complaint_order_adapter_id uuid not null,
    trans_order_id uuid not null,
    adapter_id uuid default gen_random_uuid(),
    name varchar(255) default null,
    number varchar(255) default null,
    title varchar(255) default null,
    detail varchar(1024) default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_disposal (
    trans_disposal_id uuid default gen_random_uuid(),
    trans_complaint_id uuid not null,
    disposal_at timestamp default now(),
    name varchar(255) default null,
    number varchar(255) default null,
    title varchar(255) not null,
    detail varchar(1024) not null,
    approval uuid default null,
    approval_at timestamp default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_recurrence_prevention (
    trans_recurrence_prevention_id uuid default gen_random_uuid(),
    trans_complaint_id uuid not null,
    trans_disposal_id uuid not null,
    occurent_at timestamp default now(),
    title varchar(255) not null,
    detail varchar(1024) not null,
    reporter uuid not null,
    recipient uuid default null,
    approved uuid default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_complaint (
    trans_complaint_id uuid default gen_random_uuid(),
    occurent_at timestamp default now(),
    title varchar(255) not null,
    detail varchar(1024) not null,
    reporter uuid not null,
    recipient uuid default null,
    approved uuid default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_inspect_imp_file (
    trans_inspect_imp_file_id uuid default gen_random_uuid(),
    trans_inspect_record_id uuid not null,
    inspect_sch_id uuid not null,
    trans_file_id uuid default null,
    name varchar(255) not null,
    class varchar(255) default null,
    trans_file_reminder_id uuid default gen_random_uuid(),
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_inspect_record (
    trans_inspect_record_id uuid default gen_random_uuid(),
    trans_inspect_sch_detail_id uuid not null,
    implement_start_date timestamp default now(),
    implement_stop_date timestamp default now(),
    result boolean default 't',
    result_state varchar(255) default null,
    note varchar(1024) default null,
    stakeholder_id uuid default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_inspect_sch_detail (
    trans_inspect_sch_detail_id uuid default gen_random_uuid(),
    trans_inspect_sch_id uuid not null,
    trans_purchase_detail_id uuid default null,
    scheduled_start_date timestamp not null,
    scheduled_end_date timestamp not null,
    history_id uuid not null,
    mstr_stakeholder_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_inspect_sch (
    trans_inspect_sch_id uuid default gen_random_uuid(),
    code varchar(255) default null,
    name varchar(255) not null,
    kana varchar(255) default null,
    nickname varchar(255) default null,
    note varchar(1024) default null,
    history_id uuid not null,
    mstr_equipment_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_inspection (
    mstr_inspection_id uuid default gen_random_uuid(),
    mstr_task_id uuid default gen_random_uuid(),
    mstr_inspection_operation_id uuid not null,
    code varchar(255) not null,
    class varchar(255) not null,
    base_date timestamp default now(),
    time_interval interval default '0 0:00:00',
    stakeholder boolean default 'f',
    inspection_formula_id uuid default null,
    revision integer default 1,
    item_history_id uuid not null,
    mstr_item_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_assign (
    info_assign_id uuid default gen_random_uuid(),
    info_staff_id uuid not null,
    info_role_id uuid not null,
    info_department_id uuid default null,
    enable boolean default 'T',
    priority smallint default 1,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_staff_access_permission (
    info_staff_access_permission_id uuid default gen_random_uuid(),
    info_access_path_id uuid default null,
    info_staff_id uuid default null,
    permit smallint default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_app (
    info_app_id uuid default gen_random_uuid(),
    info_company_id uuid default null,
    name varchar(255) not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_access_path (
    info_access_path_id uuid default gen_random_uuid(),
    info_app_id uuid not null,
    name varchar(255) not null,
    usecase_path1 varchar(255) default null,
    usecase_path2 varchar(255) default null,
    usecase_path3 varchar(255) default null,
    classes smallint default 0,
    sequence smallint default 1,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_inventory_request (
    trans_inventory_request_id uuid default gen_random_uuid(),
    register_at timestamp default now(),
    register_plan_at timestamp default now(),
    trans_purchase_rez_id uuid default null,
    trans_product_rez_id uuid default null,
    quantity decimal(10,2) default 0,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_product_rez (
    trans_product_rez_id uuid default gen_random_uuid(),
    trans_product_detail_id uuid not null,
    trans_product_id uuid not null,
    register_at timestamp default now(),
    register_plan_at timestamp default now(),
    quantity decimal(10,2) default 0,
    staff_history_id uuid not null,
    info_staff_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_work_record_visiter (
    trans_work_record_visiter_id uuid not null,
    trans_work_record_id uuid not null,
    quantity decimal(10,2) default 0,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_purchase_rec_visiter (
    trans_purchase_rec_visiter_id uuid not null,
    trans_purchase_rec_id uuid not null,
    quantity decimal(10,2) default 0,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_visiter (
    trans_visiter_id uuid default gen_random_uuid(),
    trans_container_id uuid not null,
    status smallint default null,
    quantity decimal(10,2) default 0,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_item_size (
    mstr_item_size_id uuid default gen_random_uuid(),
    mstr_item_id uuid not null,
    mstr_item_size_kind_id uuid not null,
    size_value decimal(10,4) default 0.0,
    detail varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_file (
    trans_file_id uuid default gen_random_uuid(),
    binary_data text not null,
    name varchar(255) not null,
    number varchar(255) default null,
    title varchar(255) default null,
    detail varchar(1024) default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_operation_task (
    mstr_operation_task_id uuid default gen_random_uuid(),
    mstr_operation_id uuid not null,
    mstr_task_id uuid not null,
    sequence smallint default 1,
    control_code varchar(255) default null,
    shared_appellations_id uuid not null,
    detail varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_operation (
    mstr_operation_id uuid default gen_random_uuid(),
    name varchar(255) not null,
    control_code varchar(255) default null,
    shared_appellations_id uuid not null,
    detail varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_convey (
    trans_convey_id uuid default gen_random_uuid(),
    trans_visiter_id uuid not null,
    receive boolean default 't',
    convey_at timestamp default now(),
    quantity decimal(10,2) default 0,
    history_id uuid not null,
    mstr_location_id uuid not null,
    staff_history_id uuid not null,
    info_staff_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_work_record_certificate (
    trans_work_record_certificate_id uuid not null,
    trans_certificate_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_certificate (
    trans_certificate_id uuid default gen_random_uuid(),
    serial varchar(255) default null,
    name varchar(255) default null,
    class varchar(255) default null,
    trans_file_id uuid default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_purchase_rec (
    trans_purchase_rec_id uuid default gen_random_uuid(),
    trans_purchase_detail_id uuid not null,
    receive_at timestamp default now(),
    quantity decimal(10,2) default 0,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_purchase_certification (
    trans_purchase_certification_id uuid default gen_random_uuid(),
    trans_purchase_rec_id uuid not null,
    trans_purchase_detail_id uuid not null,
    trans_certificate_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_purchase_rez (
    trans_purchase_rez_id uuid default gen_random_uuid(),
    trans_purchase_id uuid default null,
    trans_purchase_detail_id uuid default null,
    quantity decimal(10,2) default 0,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_purchase_detail (
    trans_purchase_detail_id uuid default gen_random_uuid(),
    trans_purchase_id uuid default null,
    trans_resorce_plan_id uuid default null,
    restocking_purchase boolean default 'f',
    quantity decimal(10,2) default null,
    period timestamp default null,
    history_id uuid not null,
    mstr_item_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_order_detail (
    trans_order_detail_id uuid default gen_random_uuid(),
    trans_order_id uuid not null,
    quantity decimal(10,2) default 0,
    cost decimal(10,2) default null,
    history_mstr_item_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_shipping_record (
    trans_shipping_detail_id uuid default gen_random_uuid(),
    trans_shipping_id uuid not null,
    trans_order_id uuid not null,
    trans_order_detail_id uuid not null,
    shpping_date timestamp default null,
    shipping_quantity decimal(10,2) default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_ship_order (
    trans_shipping_id uuid default gen_random_uuid(),
    trans_order_id uuid not null,
    edtimated_shipping_date date not null,
    code varchar(255) not null,
    estimated_arrival_date date not null,
    history_mstr_stakeholder_id uuid default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_work_record (
    trans_work_record_id uuid default gen_random_uuid(),
    trans_product_detail_id uuid not null,
    trans_product_id uuid not null,
    nth_time smallint default 1,
    start_at timestamp default now(),
    stop_at timestamp default now(),
    qty decimal(10,2) default 0,
    staff_history_id uuid default null,
    info_staff_id uuid default null,
    equipment_history_id uuid default null,
    mstr_equipment_id uuid default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_inventory_apply (
    trans_inventory_apply_id uuid default gen_random_uuid(),
    register_at timestamp default now(),
    trans_inventory_rez_id uuid default null,
    convey_id uuid default null,
    staff_history_id uuid not null,
    info_staff_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_product_detail (
    trans_product_detail_id uuid default gen_random_uuid(),
    trans_product_id uuid not null,
    mstr_task_id uuid not null,
    interval_plan interval default null,
    start_at timestamp default null,
    completion_at timestamp default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_product (
    trans_product_id uuid default gen_random_uuid(),
    trans_resorce_plan_id uuid default null,
    deadline timestamp default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_resorce_plan (
    trans_resorce_plan_id uuid default gen_random_uuid(),
    trans_order_detail_id uuid default null,
    trans_unrecognized_detail_id uuid default null,
    register_at timestamp default now(),
    quantity decimal(10,2) default 0,
    inventory_resavation decimal(10,2) default 0,
    deadline timestamp default null,
    history_id uuid not null,
    mstr_item_id uuid not null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_purchase (
    trans_purchase_id uuid default gen_random_uuid(),
    mstr_stakeholder_id uuid not null,
    supplier_history_id uuid not null,
    contact_history_id uuid default null,
    mstr_stakeholder_contact_id uuid default null,
    purchase_ctrl_1 varchar(255) default null,
    purchase_ctrl_2 varchar(255) default null,
    purchase_ctrl_3 varchar(255) default null,
    register_at timestamp default null,
    purchase_order_date timestamp default null,
    deadline timestamp default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_order (
    trans_order_id uuid default gen_random_uuid(),
    order_number varchar(255) not null,
    customer_order_number varchar(255) default null,
    customer_history_id uuid default null,
    contact_history_id uuid default null,
    control_code_1 varchar(255) default null,
    control_code_2 varchar(255) default null,
    control_code_3 varchar(255) default null,
    order_processing_date timestamp default null,
    deadline timestamp default null,
    expected_completion_date timestamp default null,
    planned_shipping_date timestamp default null,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_item_operation_task (
    mstr_item_operation_task_id uuid default gen_random_uuid(),
    mstr_item_id uuid not null,
    mstr_operation_task_id uuid not null,
    mstr_operation_id uuid not null,
    mstr_task_id uuid not null,
    sequence smallint default 1,
    mstr_item_operation_id uuid not null,
    default_interval interval default '0:0:0',
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_item_tree (
    mstr_item_tree_id uuid default gen_random_uuid(),
    mstr_item_id uuid not null,
    parent_mstr_item_id uuid default null,
    code varchar(255) default null,
    control_code varchar(255) default null,
    shared_appellations_id uuid not null,
    quantity decimal(10,2) not null,
    detail varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.shared_unit (
    shared_unit_id uuid default gen_random_uuid(),
    shared_appellations_id uuid not null,
    description varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_item (
    mstr_item_id uuid default gen_random_uuid(),
    mstr_item_kind_id uuid default gen_random_uuid(),
    code varchar(255) not null,
    identification varchar(255) default null,
    control_code varchar(255) default null,
    mstr_manufacturer_id uuid default null,
    shared_appellations_id uuid not null,
    label_code varchar(255) default null,
    description varchar(255) default null,
    shared_unit_id uuid default null,
    increment decimal(10,2) default 0,
    lot boolean default 'f',
    stock_quantity decimal(10,2) default 0,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_task_tree (
    mstr_task_tree_id uuid default gen_random_uuid(),
    mstr_task_id uuid not null,
    parent_mstr_task_id uuid default null,
    code varchar(255) default null,
    control_code varchar(255) default null,
    shared_appellations_id uuid not null,
    detail varchar(1024) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_task (
    mstr_task_id uuid default gen_random_uuid(),
    mstr_task_group_id uuid default null,
    code varchar(255) not null,
    shared_appellations_id uuid not null,
    detail varchar(255) default null,
    class smallint default 0,
    default_time interval default '0:0:0',
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_location (
    mstr_location_id uuid default gen_random_uuid(),
    code varchar(255) default null,
    info_department_id uuid default null,
    control_code varchar(255) default null,
    shared_appellations_id uuid not null,
    info_address_id uuid default null,
    available boolean default 't',
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_equipment (
    mstr_equipment_id uuid default gen_random_uuid(),
    mstr_item_id uuid not null,
    mstr_equipment_category_id uuid default null,
    code varchar(255) not null,
    control_code varchar(255) default null,
    label_code varchar(255) default null,
    mstr_location_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_stakeholder_contact (
    mstr_stakeholder_contact_id uuid default gen_random_uuid(),
    mstr_stakeholder_id uuid not null,
    code varchar(255) not null,
    office_name varchar(255) not null,
    department_name varchar(255) default null,
    shared_appellations_id uuid not null,
    private_phone varchar(255) default null,
    info_address_id uuid default null,
    mstr_shipping_kind_id uuid not null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_stakeholder (
    mstr_stakeholder_id uuid default gen_random_uuid(),
    is_customer boolean default 'f',
    is_supplier boolean default 'f',
    is_logistics boolean default 'f',
    code varchar(255) not null,
    control_code varchar(255) default null,
    shared_appellations_id uuid not null,
    mail varchar(255) default null,
    info_address_id uuid default null,
    mstr_shipping_kind_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_staff_license (
    mstr_staff_license_id uuid default gen_random_uuid(),
    info_staff_id uuid not null,
    mstr_license_id uuid not null,
    start_at timestamp default now(),
    stop_at timestamp not null,
    abeyance boolean default 'f',
    abeyance_at timestamp default null,
    revocation boolean default 'f',
    revocation_at timestamp default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_staff_capability (
    mstr_staff_capability_id uuid default gen_random_uuid(),
    info_staff_id uuid not null,
    mstr_capability_id uuid default null,
    value decimal(5,2) default 0,
    stop boolean default 'f',
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_sign (
    mstr_sign_id uuid default gen_random_uuid(),
    info_staff_id uuid not null,
    auth_subject_id uuid not null,
    code varchar(255) default null,
    mail varchar(255) default null,
    role smallint default 10,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_license (
    mstr_license_id uuid default gen_random_uuid(),
    code varchar(255) default null,
    shared_appellations_id uuid not null,
    detail varchar(1024) default null,
    public_license boolean default 'f',
    customer_license boolean default 'f',
    organization_license boolean default 'f',
    update_interval interval default '0:0:0',
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.mstr_capability (
    mstr_capability_id uuid default gen_random_uuid(),
    code varchar(255) not null,
    shared_appellations_id uuid not null,
    detail varchar(1024) default null,
    reference_value decimal(5,2) not null,
    max decimal(5,2) default 100.00,
    min decimal(5,2) default 0.00,
    step decimal(5,2) default 1.00,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_staff (
    info_staff_id uuid default gen_random_uuid(),
    info_company_id uuid default null,
    info_office_id uuid default null,
    code varchar(16) default null,
    shared_appellations_id uuid not null,
    sex varchar(16) default null,
    phone varchar(255) default null,
    private_phone varchar(255) default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_department (
    info_department_id uuid default gen_random_uuid(),
    info_company_id uuid not null,
    info_office_id uuid default null,
    code varchar(255) not null,
    shared_appellations_id uuid not null,
    category1 uuid default null,
    category2 uuid default null,
    category3 uuid default null,
    info_address_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.info_office (
    info_office_id uuid default gen_random_uuid(),
    info_company_id uuid not null,
    code varchar(255) not null,
    shared_appellations_id uuid not null,
    info_address_id uuid default null,
    revision integer default 1,
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
--202.add table comments
comment on table tests.history_mstr_shipping_kind is '配送区分マスタ履歴';
comment on column tests.history_mstr_shipping_kind.history_id is '履歴id';
comment on column tests.history_mstr_shipping_kind.mstr_shipping_kind_id is '配送区分id';
comment on column tests.history_mstr_shipping_kind.code is '配送区分コード';
comment on column tests.history_mstr_shipping_kind.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_shipping_kind.revision is 'レビジョン';
comment on column tests.history_mstr_shipping_kind.remarks is '備考';
comment on column tests.history_mstr_shipping_kind.update_at is '更新日時';
comment on column tests.history_mstr_shipping_kind.update_user_id is '更新者id';
comment on column tests.history_mstr_shipping_kind.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_shipping_kind.remove is '削除';
comment on table tests.mstr_shipping_kind is '配送区分マスタ';
comment on column tests.mstr_shipping_kind.mstr_shipping_kind_id is '配送区分id';
comment on column tests.mstr_shipping_kind.code is '配送区分コード';
comment on column tests.mstr_shipping_kind.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_shipping_kind.revision is 'レビジョン';
comment on column tests.mstr_shipping_kind.remarks is '備考';
comment on column tests.mstr_shipping_kind.update_at is '更新日時';
comment on column tests.mstr_shipping_kind.update_user_id is '更新者id';
comment on column tests.mstr_shipping_kind.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_shipping_kind.remove is '削除';
comment on table tests.history_mstr_item_size_kind is '品目大きさ区分マスタ履歴';
comment on column tests.history_mstr_item_size_kind.history_id is '履歴id';
comment on column tests.history_mstr_item_size_kind.mstr_item_size_kind_id is '品目大きさ区分id';
comment on column tests.history_mstr_item_size_kind.code is '品目大きさ区分コード';
comment on column tests.history_mstr_item_size_kind.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_item_size_kind.shared_unit_id is '単位id';
comment on column tests.history_mstr_item_size_kind.revision is 'レビジョン';
comment on column tests.history_mstr_item_size_kind.remarks is '備考';
comment on column tests.history_mstr_item_size_kind.update_at is '更新日時';
comment on column tests.history_mstr_item_size_kind.update_user_id is '更新者id';
comment on column tests.history_mstr_item_size_kind.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_item_size_kind.remove is '削除';
comment on table tests.mstr_item_size_kind is '品目大きさ区分マスタ';
comment on column tests.mstr_item_size_kind.mstr_item_size_kind_id is '品目大きさ区分id';
comment on column tests.mstr_item_size_kind.code is '大きさ区分コード';
comment on column tests.mstr_item_size_kind.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_item_size_kind.shared_unit_id is '単位id';
comment on column tests.mstr_item_size_kind.revision is 'レビジョン';
comment on column tests.mstr_item_size_kind.remarks is '備考';
comment on column tests.mstr_item_size_kind.update_at is '更新日時';
comment on column tests.mstr_item_size_kind.update_user_id is '更新者id';
comment on column tests.mstr_item_size_kind.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_item_size_kind.remove is '削除';
comment on table tests.history_mstr_item_kind is '品目区分マスタ履歴';
comment on column tests.history_mstr_item_kind.history_id is '履歴id';
comment on column tests.history_mstr_item_kind.mstr_item_kind_id is '品目種類id';
comment on column tests.history_mstr_item_kind.code is 'コード';
comment on column tests.history_mstr_item_kind.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_item_kind.revision is 'レビジョン';
comment on column tests.history_mstr_item_kind.remarks is '備考';
comment on column tests.history_mstr_item_kind.update_at is '更新日時';
comment on column tests.history_mstr_item_kind.update_user_id is '更新者id';
comment on column tests.history_mstr_item_kind.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_item_kind.remove is '削除';
comment on table tests.mstr_item_kind is '品目区分マスタ';
comment on column tests.mstr_item_kind.mstr_item_kind_id is '品目種類id';
comment on column tests.mstr_item_kind.code is 'コード';
comment on column tests.mstr_item_kind.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_item_kind.revision is 'レビジョン';
comment on column tests.mstr_item_kind.remarks is '備考';
comment on column tests.mstr_item_kind.update_at is '更新日時';
comment on column tests.mstr_item_kind.update_user_id is '更新者id';
comment on column tests.mstr_item_kind.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_item_kind.remove is '削除';
comment on table tests.history_shared_appellations is '名前セット履歴';
comment on column tests.history_shared_appellations.history_id is '履歴id';
comment on column tests.history_shared_appellations.shared_appellations_id is '呼称セットid';
comment on column tests.history_shared_appellations.name is '名前';
comment on column tests.history_shared_appellations.pronunciation is '読み';
comment on column tests.history_shared_appellations.nickname is '略称';
comment on column tests.history_shared_appellations.revision is 'レビジョン';
comment on column tests.history_shared_appellations.remarks is '備考';
comment on column tests.history_shared_appellations.update_at is '更新日時';
comment on column tests.history_shared_appellations.update_user_id is '更新者id';
comment on column tests.history_shared_appellations.update_user_history_id is '更新者履歴id';
comment on column tests.history_shared_appellations.remove is '削除';
comment on table tests.shared_appellations is '呼称セット';
comment on column tests.shared_appellations.shared_appellations_id is '呼称セットid';
comment on column tests.shared_appellations.name is '名前';
comment on column tests.shared_appellations.pronunciation is '読み';
comment on column tests.shared_appellations.nickname is '略称';
comment on column tests.shared_appellations.revision is 'レビジョン';
comment on column tests.shared_appellations.remarks is '備考';
comment on column tests.shared_appellations.update_at is '更新日時';
comment on column tests.shared_appellations.update_user_id is '更新者id';
comment on column tests.shared_appellations.update_user_history_id is '更新者履歴id';
comment on column tests.shared_appellations.remove is '削除';
comment on table tests.history_shared_dictionary is '共有辞書履歴';
comment on column tests.history_shared_dictionary.history_id is '履歴id';
comment on column tests.history_shared_dictionary.shared_dictionary_id is '共有辞書id';
comment on column tests.history_shared_dictionary.ja is 'ja';
comment on column tests.history_shared_dictionary.en is 'en';
comment on column tests.history_shared_dictionary.revision is 'レビジョン';
comment on column tests.history_shared_dictionary.remarks is '備考';
comment on column tests.history_shared_dictionary.update_at is '更新日時';
comment on column tests.history_shared_dictionary.update_user_id is '更新者id';
comment on column tests.history_shared_dictionary.update_user_history_id is '更新者履歴id';
comment on column tests.history_shared_dictionary.remove is '削除';
comment on table tests.shared_dictionary is '共有辞書';
comment on column tests.shared_dictionary.shared_dictionary_id is '共有辞書id';
comment on column tests.shared_dictionary.ja is 'ja';
comment on column tests.shared_dictionary.en is 'en';
comment on column tests.shared_dictionary.revision is 'レビジョン';
comment on column tests.shared_dictionary.remarks is '備考';
comment on column tests.shared_dictionary.update_at is '更新日時';
comment on column tests.shared_dictionary.update_user_id is '更新者id';
comment on column tests.shared_dictionary.update_user_history_id is '更新者履歴id';
comment on column tests.shared_dictionary.remove is '削除';
comment on table tests.history_mstr_equipment is '設備マスタ履歴';
comment on column tests.history_mstr_equipment.history_id is '履歴id';
comment on column tests.history_mstr_equipment.mstr_equipment_id is '設備id';
comment on column tests.history_mstr_equipment.mstr_item_id is '品目id';
comment on column tests.history_mstr_equipment.mstr_equipment_category_id is '設備分類id';
comment on column tests.history_mstr_equipment.code is '設備コード';
comment on column tests.history_mstr_equipment.control_code is '管理コード';
comment on column tests.history_mstr_equipment.label_code is '表示コード';
comment on column tests.history_mstr_equipment.mstr_location_id is '場所ID';
comment on column tests.history_mstr_equipment.revision is 'レビジョン';
comment on column tests.history_mstr_equipment.remarks is '備考';
comment on column tests.history_mstr_equipment.update_at is '更新日時';
comment on column tests.history_mstr_equipment.update_user_id is '更新者id';
comment on column tests.history_mstr_equipment.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_equipment.remove is '削除';
comment on table tests.history_mstr_equipmen_kind is '設備区分マスタ履歴';
comment on column tests.history_mstr_equipmen_kind.history_id is '履歴id';
comment on column tests.history_mstr_equipmen_kind.mstr_equipment_kind_id is '設備類分id';
comment on column tests.history_mstr_equipmen_kind.kind_code is '分類コード';
comment on column tests.history_mstr_equipmen_kind.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_equipmen_kind.start_at is '適用開始';
comment on column tests.history_mstr_equipmen_kind.stop_at is '適用終了';
comment on column tests.history_mstr_equipmen_kind.revision is 'レビジョン';
comment on column tests.history_mstr_equipmen_kind.remarks is '備考';
comment on column tests.history_mstr_equipmen_kind.update_at is '更新日時';
comment on column tests.history_mstr_equipmen_kind.update_user_id is '更新者id';
comment on column tests.history_mstr_equipmen_kind.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_equipmen_kind.remove is '削除';
comment on table tests.mstr_equipment_kind is '設備区分マスタ';
comment on column tests.mstr_equipment_kind.mstr_equipment_kind_id is '設備類分id';
comment on column tests.mstr_equipment_kind.kind_code is '分類コード';
comment on column tests.mstr_equipment_kind.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_equipment_kind.start_at is '適用開始';
comment on column tests.mstr_equipment_kind.stop_at is '適用終了';
comment on column tests.mstr_equipment_kind.revision is 'レビジョン';
comment on column tests.mstr_equipment_kind.remarks is '備考';
comment on column tests.mstr_equipment_kind.update_at is '更新日時';
comment on column tests.mstr_equipment_kind.update_user_id is '更新者id';
comment on column tests.mstr_equipment_kind.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_equipment_kind.remove is '削除';
comment on table tests.history_info_staff_icon is '担当者アイコン履歴';
comment on column tests.history_info_staff_icon.history_id is '履歴ID';
comment on column tests.history_info_staff_icon.info_role_id is 'アイコンID';
comment on column tests.history_info_staff_icon.trans_file_id is 'ファイルid';
comment on column tests.history_info_staff_icon.info_staff_id is '担当者ID';
comment on column tests.history_info_staff_icon.info_staff_history_id is '担当者履歴ID';
comment on column tests.history_info_staff_icon.name is '名称';
comment on column tests.history_info_staff_icon.revision is 'レビジョン';
comment on column tests.history_info_staff_icon.remarks is '備考';
comment on column tests.history_info_staff_icon.update_at is '更新日時';
comment on column tests.history_info_staff_icon.update_user_id is '更新者id';
comment on column tests.history_info_staff_icon.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_staff_icon.remove is '削除';
comment on table tests.info_staff_icon is '担当者アイコン情報';
comment on column tests.info_staff_icon.info_role_id is 'アイコンID';
comment on column tests.info_staff_icon.trans_file_id is 'ファイルid';
comment on column tests.info_staff_icon.info_staff_id is '担当者ID';
comment on column tests.info_staff_icon.info_staff_history_id is '担当者履歴ID';
comment on column tests.info_staff_icon.name is '名称';
comment on column tests.info_staff_icon.revision is 'レビジョン';
comment on column tests.info_staff_icon.remarks is '備考';
comment on column tests.info_staff_icon.update_at is '更新日時';
comment on column tests.info_staff_icon.update_user_id is '更新者id';
comment on column tests.info_staff_icon.update_user_history_id is '更新者履歴id';
comment on column tests.info_staff_icon.remove is '削除';
comment on table tests.history_mstr_item_hcdcs is 'HSコードマスタ履歴';
comment on column tests.history_mstr_item_hcdcs.history_id is '履歴id';
comment on column tests.history_mstr_item_hcdcs.mstr_item_hcds_id is '品目HSコードid';
comment on column tests.history_mstr_item_hcdcs.mstr_item_id is '品目id';
comment on column tests.history_mstr_item_hcdcs.iso3166_3 is '国';
comment on column tests.history_mstr_item_hcdcs.code is 'コード';
comment on column tests.history_mstr_item_hcdcs.revision is 'レビジョン';
comment on column tests.history_mstr_item_hcdcs.remarks is '備考';
comment on column tests.history_mstr_item_hcdcs.update_at is '更新日時';
comment on column tests.history_mstr_item_hcdcs.update_user_id is '更新者id';
comment on column tests.history_mstr_item_hcdcs.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_item_hcdcs.remove is '削除';
comment on table tests.mstr_item_hcdcs is 'HSコードマスタ';
comment on column tests.mstr_item_hcdcs.mstr_item_hcds_id is '品目HSコードid';
comment on column tests.mstr_item_hcdcs.mstr_item_id is '品目id';
comment on column tests.mstr_item_hcdcs.iso3166_3 is '国';
comment on column tests.mstr_item_hcdcs.code is 'コード';
comment on column tests.mstr_item_hcdcs.remarks is '備考';
comment on column tests.mstr_item_hcdcs.update_at is '更新日時';
comment on column tests.mstr_item_hcdcs.update_user_id is '更新者id';
comment on column tests.mstr_item_hcdcs.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_item_hcdcs.remove is '削除';
comment on table tests.history_mstr_document_content_tree is '文書コンテンツ体系マスタ履歴';
comment on column tests.history_mstr_document_content_tree.history_id is '履歴id';
comment on column tests.history_mstr_document_content_tree.mstr_document_content_tree_id is 'コンテンツ体系id';
comment on column tests.history_mstr_document_content_tree.mstr_document_content_id is '自コンテンツid';
comment on column tests.history_mstr_document_content_tree.parent_mstr_document_content_id is '親コンテンツid';
comment on column tests.history_mstr_document_content_tree.revision is 'レビジョン';
comment on column tests.history_mstr_document_content_tree.remarks is '備考';
comment on column tests.history_mstr_document_content_tree.update_at is '更新日時';
comment on column tests.history_mstr_document_content_tree.update_user_id is '更新者id';
comment on column tests.history_mstr_document_content_tree.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_document_content_tree.remove is '削除';
comment on table tests.hrchy_mstr_document_content is '文書コンテンツ階層情報';
comment on column tests.hrchy_mstr_document_content.hrchy_mstr_location_id is '文書コンテンツ階層id';
comment on column tests.hrchy_mstr_document_content.ancestor_mstr_document_content_id is '祖先文書コンテンツid';
comment on column tests.hrchy_mstr_document_content.descendant_mstr_document_content_id is '子孫文書コンテンツid';
comment on column tests.hrchy_mstr_document_content.remarks is '備考';
comment on column tests.hrchy_mstr_document_content.update_at is '更新日時';
comment on column tests.hrchy_mstr_document_content.update_user_id is '更新者id';
comment on column tests.hrchy_mstr_document_content.update_user_history_id is '更新者履歴id';
comment on column tests.hrchy_mstr_document_content.remove is '削除';
comment on table tests.history_mstr_document_content is '文書コンテンツマスタ履歴';
comment on column tests.history_mstr_document_content.history_id is '履歴id';
comment on column tests.history_mstr_document_content.mstr_document_content_id is 'コンテンツid';
comment on column tests.history_mstr_document_content.mstr_document_id is '文書id';
comment on column tests.history_mstr_document_content.code is 'コード';
comment on column tests.history_mstr_document_content.name is '名前';
comment on column tests.history_mstr_document_content.sequence is 'シーケンス';
comment on column tests.history_mstr_document_content.title is 'タイトル';
comment on column tests.history_mstr_document_content.content is 'コンテンツ';
comment on column tests.history_mstr_document_content.image_content is 'イメージコンテンツ';
comment on column tests.history_mstr_document_content.trans_file_id is 'ファイルid';
comment on column tests.history_mstr_document_content.revision is 'レビジョン';
comment on column tests.history_mstr_document_content.remarks is '備考';
comment on column tests.history_mstr_document_content.update_at is '更新日時';
comment on column tests.history_mstr_document_content.update_user_id is '更新者id';
comment on column tests.history_mstr_document_content.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_document_content.remove is '削除';
comment on table tests.mstr_document_content_tree is '文書コンテンツ体系マスタ';
comment on column tests.mstr_document_content_tree.mstr_document_content_tree_id is 'コンテンツ体系id';
comment on column tests.mstr_document_content_tree.mstr_document_content_id is '自コンテンツid';
comment on column tests.mstr_document_content_tree.parent_mstr_document_content_id is '親コンテンツid';
comment on column tests.mstr_document_content_tree.revision is 'レビジョン';
comment on column tests.mstr_document_content_tree.remarks is '備考';
comment on column tests.mstr_document_content_tree.update_at is '更新日時';
comment on column tests.mstr_document_content_tree.update_user_id is '更新者id';
comment on column tests.mstr_document_content_tree.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_document_content_tree.remove is '削除';
comment on table tests.mstr_document_content is '文書コンテンツマスタ';
comment on column tests.mstr_document_content.mstr_document_content_id is 'コンテンツid';
comment on column tests.mstr_document_content.mstr_document_id is '文書id';
comment on column tests.mstr_document_content.code is 'コード';
comment on column tests.mstr_document_content.name is '名前';
comment on column tests.mstr_document_content.sequence is 'シーケンス';
comment on column tests.mstr_document_content.title is 'タイトル';
comment on column tests.mstr_document_content.content is 'コンテンツ';
comment on column tests.mstr_document_content.image_content is 'イメージコンテンツ';
comment on column tests.mstr_document_content.trans_file_id is 'ファイルid';
comment on column tests.mstr_document_content.revision is 'レビジョン';
comment on column tests.mstr_document_content.remarks is '備考';
comment on column tests.mstr_document_content.update_at is '更新日時';
comment on column tests.mstr_document_content.update_user_id is '更新者id';
comment on column tests.mstr_document_content.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_document_content.remove is '削除';
comment on table tests.history_mstr_document_tier is '文書階層履歴';
comment on column tests.history_mstr_document_tier.history_id is '履歴id';
comment on column tests.history_mstr_document_tier.mstr_document_tier_id is '文書階層id';
comment on column tests.history_mstr_document_tier.code is 'コード';
comment on column tests.history_mstr_document_tier.name is '名前';
comment on column tests.history_mstr_document_tier.trans_file_id is 'ファイルid';
comment on column tests.history_mstr_document_tier.attributive_noun is '限定名詞';
comment on column tests.history_mstr_document_tier.Identifier is '管理番号識別子';
comment on column tests.history_mstr_document_tier.tier_number is '階層番号';
comment on column tests.history_mstr_document_tier.revision is 'レビジョン';
comment on column tests.history_mstr_document_tier.remarks is '備考';
comment on column tests.history_mstr_document_tier.update_at is '更新日時';
comment on column tests.history_mstr_document_tier.update_user_id is '更新者id';
comment on column tests.history_mstr_document_tier.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_document_tier.remove is '削除';
comment on table tests.mstr_document_tier is '文書階層マスタ';
comment on column tests.mstr_document_tier.mstr_document_tier_id is '文書階層id';
comment on column tests.mstr_document_tier.code is 'コード';
comment on column tests.mstr_document_tier.name is '名前';
comment on column tests.mstr_document_tier.trans_file_id is 'ファイルid';
comment on column tests.mstr_document_tier.attributive_noun is '限定名詞';
comment on column tests.mstr_document_tier.Identifier is '管理番号識別子';
comment on column tests.mstr_document_tier.tier_number is '階層番号';
comment on column tests.mstr_document_tier.revision is 'レビジョン';
comment on column tests.mstr_document_tier.remarks is '備考';
comment on column tests.mstr_document_tier.update_at is '更新日時';
comment on column tests.mstr_document_tier.update_user_id is '更新者id';
comment on column tests.mstr_document_tier.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_document_tier.remove is '削除';
comment on table tests.history_mstr_document_tree is '文書体系情報履歴';
comment on column tests.history_mstr_document_tree.history_id is '履歴id';
comment on column tests.history_mstr_document_tree.mstr_document_tree_id is '文書体系id';
comment on column tests.history_mstr_document_tree.mstr_document_id is '自文書id';
comment on column tests.history_mstr_document_tree.parent_mstr_document_id is '親文書id';
comment on column tests.history_mstr_document_tree.revision is 'レビジョン';
comment on column tests.history_mstr_document_tree.remarks is '備考';
comment on column tests.history_mstr_document_tree.update_at is '更新日時';
comment on column tests.history_mstr_document_tree.update_user_id is '更新者id';
comment on column tests.history_mstr_document_tree.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_document_tree.remove is '削除';
comment on table tests.hrchy_mstr_documet is '文書階層情報';
comment on column tests.hrchy_mstr_documet.hrchy_mstr_document_id is '文書階層id';
comment on column tests.hrchy_mstr_documet.ancestor_mstr_document_id is '祖先文書id';
comment on column tests.hrchy_mstr_documet.descendant_mstr_document_id is '子孫文書id';
comment on column tests.hrchy_mstr_documet.remarks is '備考';
comment on column tests.hrchy_mstr_documet.update_at is '更新日時';
comment on column tests.hrchy_mstr_documet.update_user_id is '更新者id';
comment on column tests.hrchy_mstr_documet.update_user_history_id is '更新者履歴id';
comment on column tests.hrchy_mstr_documet.remove is '削除';
comment on table tests.mstr_document_tree is '文書体系情報';
comment on column tests.mstr_document_tree.mstr_document_tree_id is '文書体系id';
comment on column tests.mstr_document_tree.mstr_document_id is '自文書id';
comment on column tests.mstr_document_tree.parent_mstr_document_id is '親文書id';
comment on column tests.mstr_document_tree.revision is 'レビジョン';
comment on column tests.mstr_document_tree.remarks is '備考';
comment on column tests.mstr_document_tree.update_at is '更新日時';
comment on column tests.mstr_document_tree.update_user_id is '更新者id';
comment on column tests.mstr_document_tree.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_document_tree.remove is '削除';
comment on table tests.history_mstr_document is '文書マスタ履歴';
comment on column tests.history_mstr_document.history_id is '履歴id';
comment on column tests.history_mstr_document.mstr_document_id is '文書id';
comment on column tests.history_mstr_document.code is 'コード';
comment on column tests.history_mstr_document.name is '名前';
comment on column tests.history_mstr_document.mstr_document_tier_id is '文書階層id';
comment on column tests.history_mstr_document.trans_file_id is 'ファイルid';
comment on column tests.history_mstr_document.title is 'タイトル';
comment on column tests.history_mstr_document.control_number is '管理番号';
comment on column tests.history_mstr_document.version_code is '版コード';
comment on column tests.history_mstr_document.version_name is '版名';
comment on column tests.history_mstr_document.trans_approved_id is '承認結果id';
comment on column tests.history_mstr_document.revision is 'レビジョン';
comment on column tests.history_mstr_document.remarks is '備考';
comment on column tests.history_mstr_document.update_at is '更新日時';
comment on column tests.history_mstr_document.update_user_id is '更新者id';
comment on column tests.history_mstr_document.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_document.remove is '削除';
comment on table tests.mstr_document is '文書マスタ';
comment on column tests.mstr_document.mstr_document_id is '文書id';
comment on column tests.mstr_document.code is 'コード';
comment on column tests.mstr_document.name is '名前';
comment on column tests.mstr_document.mstr_document_tier_id is '文書階層id';
comment on column tests.mstr_document.trans_file_id is 'ファイルid';
comment on column tests.mstr_document.title is 'タイトル';
comment on column tests.mstr_document.control_number is '管理番号';
comment on column tests.mstr_document.version_code is '版コード';
comment on column tests.mstr_document.version_name is '版名';
comment on column tests.mstr_document.trans_approved_id is '承認結果id';
comment on column tests.mstr_document.revision is 'レビジョン';
comment on column tests.mstr_document.remarks is '備考';
comment on column tests.mstr_document.update_at is '更新日時';
comment on column tests.mstr_document.update_user_id is '更新者id';
comment on column tests.mstr_document.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_document.remove is '削除';
comment on table tests.trans_container_tree is 'コンテナ体系マスタ';
comment on column tests.trans_container_tree.trans_container_tree_id is 'コンテナ体系ID';
comment on column tests.trans_container_tree.trans_container_id is '自コンテナID';
comment on column tests.trans_container_tree.parent_trans_container_id is '親コンテナID';
comment on column tests.trans_container_tree.revision is 'レビジョン';
comment on column tests.trans_container_tree.remarks is '備考';
comment on column tests.trans_container_tree.update_at is '更新日時';
comment on column tests.trans_container_tree.update_user_id is '更新者id';
comment on column tests.trans_container_tree.update_user_history_id is '更新者履歴id';
comment on column tests.trans_container_tree.remove is '削除';
comment on table tests.history_mstr_location_tree is '場所体系マスタ履歴';
comment on column tests.history_mstr_location_tree.history_id is '履歴id';
comment on column tests.history_mstr_location_tree.mstr_location_tree_id is '場所体系ID';
comment on column tests.history_mstr_location_tree.mstr_location_id is '自場所ID';
comment on column tests.history_mstr_location_tree.parent_mstr_location_id is '親場所ID';
comment on column tests.history_mstr_location_tree.revision is 'レビジョン';
comment on column tests.history_mstr_location_tree.remarks is '備考';
comment on column tests.history_mstr_location_tree.update_at is '更新日時';
comment on column tests.history_mstr_location_tree.update_user_id is '更新者id';
comment on column tests.history_mstr_location_tree.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_location_tree.remove is '削除';
comment on table tests.mstr_location_tree is '場所体系マスタ';
comment on column tests.mstr_location_tree.mstr_location_tree_id is '場所体系ID';
comment on column tests.mstr_location_tree.mstr_location_id is '自場所ID';
comment on column tests.mstr_location_tree.parent_mstr_location_id is '親場所ID';
comment on column tests.mstr_location_tree.revision is 'レビジョン';
comment on column tests.mstr_location_tree.remarks is '備考';
comment on column tests.mstr_location_tree.update_at is '更新日時';
comment on column tests.mstr_location_tree.update_user_id is '更新者id';
comment on column tests.mstr_location_tree.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_location_tree.remove is '削除';
comment on table tests.history_info_department_tree is '部署体系情報履歴';
comment on column tests.history_info_department_tree.history_id is '履歴id';
comment on column tests.history_info_department_tree.info_department_tree_id is '組織体系ID';
comment on column tests.history_info_department_tree.info_department_id is '自組織ID';
comment on column tests.history_info_department_tree.parent_info_department_id is '親組織ID';
comment on column tests.history_info_department_tree.revision is 'レビジョン';
comment on column tests.history_info_department_tree.remarks is '備考';
comment on column tests.history_info_department_tree.update_at is '更新日時';
comment on column tests.history_info_department_tree.update_user_id is '更新者id';
comment on column tests.history_info_department_tree.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_department_tree.remove is '削除';
comment on table tests.info_department_tree is '部署体系情報';
comment on column tests.info_department_tree.info_department_tree_id is '組織体系ID';
comment on column tests.info_department_tree.info_department_id is '自組織ID';
comment on column tests.info_department_tree.parent_info_department_id is '親組織ID';
comment on column tests.info_department_tree.revision is 'レビジョン';
comment on column tests.info_department_tree.remarks is '備考';
comment on column tests.info_department_tree.update_at is '更新日時';
comment on column tests.info_department_tree.update_user_id is '更新者id';
comment on column tests.info_department_tree.update_user_history_id is '更新者履歴id';
comment on column tests.info_department_tree.remove is '削除';
comment on table tests.hrchy_mstr_task is '工程階層情報';
comment on column tests.hrchy_mstr_task.hrchy_mstr_task_id is '工程階層ID';
comment on column tests.hrchy_mstr_task.ancestor_mstr_task_id is '祖先工程ID';
comment on column tests.hrchy_mstr_task.descendant_mstr_task_id is '子孫工程ID';
comment on column tests.hrchy_mstr_task.remarks is '備考';
comment on column tests.hrchy_mstr_task.update_at is '更新日時';
comment on column tests.hrchy_mstr_task.update_user_id is '更新者id';
comment on column tests.hrchy_mstr_task.update_user_history_id is '更新者履歴id';
comment on column tests.hrchy_mstr_task.remove is '削除';
comment on table tests.hrchy_mstr_item is '品目階層情報';
comment on column tests.hrchy_mstr_item.hrchy_mstr_item_id is '品目階層ID';
comment on column tests.hrchy_mstr_item.ancestor_mstr_item_id is '祖先品目ID';
comment on column tests.hrchy_mstr_item.descendant_mstr_item_id is '子孫場所ID';
comment on column tests.hrchy_mstr_item.remarks is '備考';
comment on column tests.hrchy_mstr_item.update_at is '更新日時';
comment on column tests.hrchy_mstr_item.update_user_id is '更新者id';
comment on column tests.hrchy_mstr_item.update_user_history_id is '更新者履歴id';
comment on column tests.hrchy_mstr_item.remove is '削除';
comment on table tests.history_mstr_inspection_operation is '点検整備運用マスタ履歴';
comment on column tests.history_mstr_inspection_operation.history_id is '履歴id';
comment on column tests.history_mstr_inspection_operation.mstr_inspection_operation_id is '点検整備運用マスタID';
comment on column tests.history_mstr_inspection_operation.mstr_operation_id is '工程運用マスタID';
comment on column tests.history_mstr_inspection_operation.mstr_equipment_id is '設備id';
comment on column tests.history_mstr_inspection_operation.mstr_item_id is '品目id';
comment on column tests.history_mstr_inspection_operation.revision is 'レビジョン';
comment on column tests.history_mstr_inspection_operation.remarks is '備考';
comment on column tests.history_mstr_inspection_operation.update_at is '更新日時';
comment on column tests.history_mstr_inspection_operation.update_user_id is '更新者id';
comment on column tests.history_mstr_inspection_operation.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_inspection_operation.remove is '削除';
comment on table tests.mstr_inspection_operation is '点検整備運用マスタ';
comment on column tests.mstr_inspection_operation.mstr_inspection_operation_id is '点検整備運用マスタID';
comment on column tests.mstr_inspection_operation.mstr_operation_id is '工程運用マスタID';
comment on column tests.mstr_inspection_operation.mstr_equipment_id is '設備id';
comment on column tests.mstr_inspection_operation.mstr_item_id is '品目id';
comment on column tests.mstr_inspection_operation.revision is 'レビジョン';
comment on column tests.mstr_inspection_operation.remarks is '備考';
comment on column tests.mstr_inspection_operation.update_at is '更新日時';
comment on column tests.mstr_inspection_operation.update_user_id is '更新者id';
comment on column tests.mstr_inspection_operation.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_inspection_operation.remove is '削除';
comment on table tests.history_mstr_inspection_operation_task is '点検整備運用課題マスタ履歴';
comment on column tests.history_mstr_inspection_operation_task.history_id is '履歴id';
comment on column tests.history_mstr_inspection_operation_task.mstr_inspection_operation_task_id is '点検整備運用課題マスタID';
comment on column tests.history_mstr_inspection_operation_task.mstr_operation_task_id is '工程運用課題id';
comment on column tests.history_mstr_inspection_operation_task.mstr_operation_id is '工程運用マスタID';
comment on column tests.history_mstr_inspection_operation_task.mstr_task_id is '工程id';
comment on column tests.history_mstr_inspection_operation_task.sequence is '順';
comment on column tests.history_mstr_inspection_operation_task.mstr_inspection_operation_id is '点検整備運用マスタID';
comment on column tests.history_mstr_inspection_operation_task.commencement_date is '起算日';
comment on column tests.history_mstr_inspection_operation_task.time_interval is '間隔';
comment on column tests.history_mstr_inspection_operation_task.mstr_inspection_id is '点検整備マスタID';
comment on column tests.history_mstr_inspection_operation_task.revision is 'レビジョン';
comment on column tests.history_mstr_inspection_operation_task.remarks is '備考';
comment on column tests.history_mstr_inspection_operation_task.update_at is '更新日時';
comment on column tests.history_mstr_inspection_operation_task.update_user_id is '更新者id';
comment on column tests.history_mstr_inspection_operation_task.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_inspection_operation_task.remove is '削除';
comment on table tests.mstr_inspection_operation_task is '点検整備運用課題マスタ';
comment on column tests.mstr_inspection_operation_task.mstr_inspection_operation_task_id is '点検整備運用課題マスタID';
comment on column tests.mstr_inspection_operation_task.mstr_operation_task_id is '工程運用課題id';
comment on column tests.mstr_inspection_operation_task.mstr_operation_id is '工程運用マスタID';
comment on column tests.mstr_inspection_operation_task.mstr_task_id is '工程id';
comment on column tests.mstr_inspection_operation_task.sequence is '順';
comment on column tests.mstr_inspection_operation_task.mstr_inspection_operation_id is '点検整備運用マスタID';
comment on column tests.mstr_inspection_operation_task.commencement_date is '起算日';
comment on column tests.mstr_inspection_operation_task.time_interval is '間隔';
comment on column tests.mstr_inspection_operation_task.mstr_inspection_id is '点検整備マスタID';
comment on column tests.mstr_inspection_operation_task.revision is 'レビジョン';
comment on column tests.mstr_inspection_operation_task.remarks is '備考';
comment on column tests.mstr_inspection_operation_task.update_at is '更新日時';
comment on column tests.mstr_inspection_operation_task.update_user_id is '更新者id';
comment on column tests.mstr_inspection_operation_task.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_inspection_operation_task.remove is '削除';
comment on table tests.history_info_department_access_permission is '部署アクセスパス履歴';
comment on column tests.history_info_department_access_permission.history_id is '履歴id';
comment on column tests.history_info_department_access_permission.info_department_access_permission_id is '部署アクセスパスID';
comment on column tests.history_info_department_access_permission.info_access_path_id is 'アクセスパスID';
comment on column tests.history_info_department_access_permission.info_app_id is 'アプリケーションid';
comment on column tests.history_info_department_access_permission.info_department_id is '組織情報id';
comment on column tests.history_info_department_access_permission.revision is 'レビジョン';
comment on column tests.history_info_department_access_permission.remarks is '備考';
comment on column tests.history_info_department_access_permission.update_at is '更新日時';
comment on column tests.history_info_department_access_permission.update_user_id is '更新者id';
comment on column tests.history_info_department_access_permission.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_department_access_permission.remove is '削除';
comment on table tests.info_department_access_permission is '部署アクセスパス';
comment on column tests.info_department_access_permission.info_department_access_permission_id is '部署アクセスパスID';
comment on column tests.info_department_access_permission.info_access_path_id is 'アクセスパスID';
comment on column tests.info_department_access_permission.info_app_id is 'アプリケーションid';
comment on column tests.info_department_access_permission.info_department_id is '組織情報id';
comment on column tests.info_department_access_permission.revision is 'レビジョン';
comment on column tests.info_department_access_permission.remarks is '備考';
comment on column tests.info_department_access_permission.update_at is '更新日時';
comment on column tests.info_department_access_permission.update_user_id is '更新者id';
comment on column tests.info_department_access_permission.update_user_history_id is '更新者履歴id';
comment on column tests.info_department_access_permission.remove is '削除';
comment on table tests.history_info_assign is '割当情報履歴';
comment on column tests.history_info_assign.history_id is '履歴id';
comment on column tests.history_info_assign.info_assign_id is 'アサインID';
comment on column tests.history_info_assign.info_staff_id is '担当者id';
comment on column tests.history_info_assign.info_role_id is '役割ID';
comment on column tests.history_info_assign.info_department_id is '部署ID';
comment on column tests.history_info_assign.enable is '有効';
comment on column tests.history_info_assign.priority is '優先順位';
comment on column tests.history_info_assign.revision is 'レビジョン';
comment on column tests.history_info_assign.remarks is '備考';
comment on column tests.history_info_assign.update_at is '更新日時';
comment on column tests.history_info_assign.update_user_id is '更新者id';
comment on column tests.history_info_assign.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_assign.remove is '削除';
comment on table tests.mstr_item_provision is '品目提供マスタ';
comment on column tests.mstr_item_provision.mstr_item_provision_id is '品目提供ID';
comment on column tests.mstr_item_provision.info_provision_id is '提供id';
comment on column tests.mstr_item_provision.mstr_item_id is '品目id';
comment on column tests.mstr_item_provision.start_at is '適用開始';
comment on column tests.mstr_item_provision.stop_at is '適用終了';
comment on column tests.mstr_item_provision.revision is 'レビジョン';
comment on column tests.mstr_item_provision.remarks is '備考';
comment on column tests.mstr_item_provision.update_at is '更新日時';
comment on column tests.mstr_item_provision.update_user_id is '更新者id';
comment on column tests.mstr_item_provision.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_item_provision.remove is '削除';
comment on table tests.history_mstr_item_provision is '品目提供マスタ履歴';
comment on column tests.history_mstr_item_provision.history_id is '履歴id';
comment on column tests.history_mstr_item_provision.mstr_item_provision_id is '設備提供ID';
comment on column tests.history_mstr_item_provision.info_provision_id is '提供id';
comment on column tests.history_mstr_item_provision.mstr_item_id is '設備id';
comment on column tests.history_mstr_item_provision.start_at is '適用開始';
comment on column tests.history_mstr_item_provision.stop_at is '適用終了';
comment on column tests.history_mstr_item_provision.revision is 'レビジョン';
comment on column tests.history_mstr_item_provision.remarks is '備考';
comment on column tests.history_mstr_item_provision.update_at is '更新日時';
comment on column tests.history_mstr_item_provision.update_user_id is '更新者id';
comment on column tests.history_mstr_item_provision.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_item_provision.remove is '削除';
comment on table tests.history_mstr_equipment_provision is '設備提供マスタ履歴';
comment on column tests.history_mstr_equipment_provision.history_id is '履歴id';
comment on column tests.history_mstr_equipment_provision.mstr_equipment_provision_id is '設備提供ID';
comment on column tests.history_mstr_equipment_provision.info_provision_id is '提供id';
comment on column tests.history_mstr_equipment_provision.mstr_equipment_id is '設備id';
comment on column tests.history_mstr_equipment_provision.start_at is '適用開始';
comment on column tests.history_mstr_equipment_provision.stop_at is '適用終了';
comment on column tests.history_mstr_equipment_provision.revision is 'レビジョン';
comment on column tests.history_mstr_equipment_provision.remarks is '備考';
comment on column tests.history_mstr_equipment_provision.update_at is '更新日時';
comment on column tests.history_mstr_equipment_provision.update_user_id is '更新者id';
comment on column tests.history_mstr_equipment_provision.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_equipment_provision.remove is '削除';
comment on table tests.mstr_equipment_provision is '設備提供マスタ';
comment on column tests.mstr_equipment_provision.mstr_equipment_provision_id is '設備提供ID';
comment on column tests.mstr_equipment_provision.info_provision_id is '提供id';
comment on column tests.mstr_equipment_provision.mstr_equipment_id is '設備id';
comment on column tests.mstr_equipment_provision.start_at is '適用開始';
comment on column tests.mstr_equipment_provision.stop_at is '適用終了';
comment on column tests.mstr_equipment_provision.revision is 'レビジョン';
comment on column tests.mstr_equipment_provision.remarks is '備考';
comment on column tests.mstr_equipment_provision.update_at is '更新日時';
comment on column tests.mstr_equipment_provision.update_user_id is '更新者id';
comment on column tests.mstr_equipment_provision.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_equipment_provision.remove is '削除';
comment on table tests.hrchy_trans_container is 'コンテナ階層';
comment on column tests.hrchy_trans_container.hrchy_trans_container_id is 'コンテナ階層id';
comment on column tests.hrchy_trans_container.ancestor_trans_container_id is '祖先コンテナid';
comment on column tests.hrchy_trans_container.descendant_trans_container_id is '子孫コンテナid';
comment on column tests.hrchy_trans_container.remarks is '備考';
comment on column tests.hrchy_trans_container.update_at is '更新日時';
comment on column tests.hrchy_trans_container.update_user_id is '更新者id';
comment on column tests.hrchy_trans_container.update_user_history_id is '更新者履歴id';
comment on column tests.hrchy_trans_container.remove is '削除';
comment on table tests.trans_container is 'コンテナ';
comment on column tests.trans_container.trans_container_id is 'コンテナid';
comment on column tests.trans_container.code is 'コード';
comment on column tests.trans_container.name is 'コンテナ名';
comment on column tests.trans_container.mstr_location_id is '場所id';
comment on column tests.trans_container.remarks is '備考';
comment on column tests.trans_container.update_at is '更新日時';
comment on column tests.trans_container.update_user_id is '更新者id';
comment on column tests.trans_container.update_user_history_id is '更新者履歴id';
comment on column tests.trans_container.remove is '削除';
comment on table tests.hrchy_info_department is '組織階層情報';
comment on column tests.hrchy_info_department.hrchy_info_department_id is '階層ID';
comment on column tests.hrchy_info_department.ancestor_info_department_id is '祖先組織ID';
comment on column tests.hrchy_info_department.descendant_info_department_id is '子孫組織ID';
comment on column tests.hrchy_info_department.remarks is '備考';
comment on column tests.hrchy_info_department.update_at is '更新日時';
comment on column tests.hrchy_info_department.update_user_id is '更新者id';
comment on column tests.hrchy_info_department.update_user_history_id is '更新者履歴id';
comment on column tests.hrchy_info_department.remove is '削除';
comment on table tests.history_info_app_status is 'アプリケーションステータス履歴';
comment on column tests.history_info_app_status.history_id is '履歴id';
comment on column tests.history_info_app_status.info_app_status_id is 'アプリケーションステータスID';
comment on column tests.history_info_app_status.info_app_id is 'アプリケーションID';
comment on column tests.history_info_app_status.status is '状態';
comment on column tests.history_info_app_status.plan_date is '予定日';
comment on column tests.history_info_app_status.start_date is '実行日';
comment on column tests.history_info_app_status.revision is 'レビジョン';
comment on column tests.history_info_app_status.remarks is '備考';
comment on column tests.history_info_app_status.update_at is '更新日時';
comment on column tests.history_info_app_status.update_user_id is '更新者id';
comment on column tests.history_info_app_status.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_app_status.remove is '削除';
comment on table tests.info_app_status is 'アプリケーションステータス';
comment on column tests.info_app_status.info_app_status_id is 'アプリケーションステータスID';
comment on column tests.info_app_status.info_app_id is 'アプリケーションID';
comment on column tests.info_app_status.status is '状態';
comment on column tests.info_app_status.plan_date is '予定日';
comment on column tests.info_app_status.start_date is '実行日';
comment on column tests.info_app_status.revision is 'レビジョン';
comment on column tests.info_app_status.remarks is '備考';
comment on column tests.info_app_status.update_at is '更新日時';
comment on column tests.info_app_status.update_user_id is '更新者id';
comment on column tests.info_app_status.update_user_history_id is '更新者履歴id';
comment on column tests.info_app_status.remove is '削除';
comment on table tests.trans_announcement  is '通知';
comment on column tests.trans_announcement .trans_authtoken_id is '通知ID';
comment on column tests.trans_announcement .to_info_staff_id is '担当者id';
comment on column tests.trans_announcement .to_history_id is '履歴id';
comment on column tests.trans_announcement .for_info_staff_id is '通知担当者';
comment on column tests.trans_announcement .category is '通知区分';
comment on column tests.trans_announcement .title is 'タイトル';
comment on column tests.trans_announcement .message is 'メッセージ';
comment on column tests.trans_announcement .is_reade is '既読';
comment on column tests.trans_announcement .expiration_date is '削除予定';
comment on column tests.trans_announcement .remarks is '備考';
comment on column tests.trans_announcement .update_at is '更新日時';
comment on column tests.trans_announcement .update_user_id is '更新者id';
comment on column tests.trans_announcement .update_user_history_id is '更新者履歴id';
comment on column tests.trans_announcement .remove is '削除';
comment on table tests.history_mstr_operation_task is '工程運用課題履歴';
comment on column tests.history_mstr_operation_task.history_id is '履歴id';
comment on column tests.history_mstr_operation_task.mstr_operation_task_id is '工程運用課題id';
comment on column tests.history_mstr_operation_task.mstr_operation_id is '工程運用マスタID';
comment on column tests.history_mstr_operation_task.mstr_task_id is '工程id';
comment on column tests.history_mstr_operation_task.sequence is '順';
comment on column tests.history_mstr_operation_task.control_code is '管理コード';
comment on column tests.history_mstr_operation_task.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_operation_task.detail is '詳細';
comment on column tests.history_mstr_operation_task.revision is 'レビジョン';
comment on column tests.history_mstr_operation_task.remarks is '備考';
comment on column tests.history_mstr_operation_task.update_at is '更新日時';
comment on column tests.history_mstr_operation_task.update_user_id is '更新者id';
comment on column tests.history_mstr_operation_task.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_operation_task.remove is '削除';
comment on table tests.history_mstr_report is 'レポートマスタ履歴';
comment on column tests.history_mstr_report.history_id is '履歴id';
comment on column tests.history_mstr_report.mstr_report_id is 'レポートID';
comment on column tests.history_mstr_report.trans_file_id is 'ファイルid';
comment on column tests.history_mstr_report.name is '名前';
comment on column tests.history_mstr_report.code is 'コード';
comment on column tests.history_mstr_report.is_default is 'デフォルト';
comment on column tests.history_mstr_report.info_access_path_id is 'アクセスパスID';
comment on column tests.history_mstr_report.info_app_id is 'アプリケーションid';
comment on column tests.history_mstr_report.revision is 'レビジョン';
comment on column tests.history_mstr_report.remarks is '備考';
comment on column tests.history_mstr_report.update_at is '更新日時';
comment on column tests.history_mstr_report.update_user_id is '更新者id';
comment on column tests.history_mstr_report.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_report.remove is '削除';
comment on table tests.history_mstr_item_operation_task is '品目工程マスタ履歴';
comment on column tests.history_mstr_item_operation_task.history_id is '履歴id';
comment on column tests.history_mstr_item_operation_task.mstr_item_operation_task_id is '品目工程運用課題id';
comment on column tests.history_mstr_item_operation_task.mstr_item_id is '品目id';
comment on column tests.history_mstr_item_operation_task.mstr_operation_task_id is '工程運用課題id';
comment on column tests.history_mstr_item_operation_task.mstr_operation_id is '工程運用マスタID';
comment on column tests.history_mstr_item_operation_task.mstr_task_id is '工程ID';
comment on column tests.history_mstr_item_operation_task.sequence is '順';
comment on column tests.history_mstr_item_operation_task.default_interval is '標準時間';
comment on column tests.history_mstr_item_operation_task.revision is 'レビジョン';
comment on column tests.history_mstr_item_operation_task.remarks is '備考';
comment on column tests.history_mstr_item_operation_task.update_at is '更新日時';
comment on column tests.history_mstr_item_operation_task.update_user_id is '更新者id';
comment on column tests.history_mstr_item_operation_task.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_item_operation_task.remove is '削除';
comment on table tests.history_mstr_item_operation is '品目工程運用マスタ履歴';
comment on column tests.history_mstr_item_operation.history_id is '履歴id';
comment on column tests.history_mstr_item_operation.mstr_item_operation_id is '品目工程運用マスタID';
comment on column tests.history_mstr_item_operation.mstr_item_id is '品目id';
comment on column tests.history_mstr_item_operation.mstr_operation_id is '工程運用マスタID';
comment on column tests.history_mstr_item_operation.revision is 'レビジョン';
comment on column tests.history_mstr_item_operation.remarks is '備考';
comment on column tests.history_mstr_item_operation.update_at is '更新日時';
comment on column tests.history_mstr_item_operation.update_user_id is '更新者id';
comment on column tests.history_mstr_item_operation.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_item_operation.remove is '削除';
comment on table tests.history_mstr_task_tree is '工程体系マスタ履歴';
comment on column tests.history_mstr_task_tree.history_id is '履歴id';
comment on column tests.history_mstr_task_tree.mstr_task_tree_id is '工程体系id';
comment on column tests.history_mstr_task_tree.mstr_task_id is '自工程マスタid';
comment on column tests.history_mstr_task_tree.parent_mstr_task_id is '親工程マスタid';
comment on column tests.history_mstr_task_tree.code is '工程体系コード';
comment on column tests.history_mstr_task_tree.control_code is '管理コード';
comment on column tests.history_mstr_task_tree.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_task_tree.detail is '詳細';
comment on column tests.history_mstr_task_tree.revision is 'レビジョン';
comment on column tests.history_mstr_task_tree.remarks is '備考';
comment on column tests.history_mstr_task_tree.update_at is '更新日時';
comment on column tests.history_mstr_task_tree.update_user_id is '更新者id';
comment on column tests.history_mstr_task_tree.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_task_tree.remove is '削除';
comment on table tests.history_mstr_outsource_available is '利用可能外部マスタ履歴';
comment on column tests.history_mstr_outsource_available.history_id is '履歴id';
comment on column tests.history_mstr_outsource_available.mstr_outsource_available_id is '利用可能外部id';
comment on column tests.history_mstr_outsource_available.mstr_task_location_id is '工程場所id';
comment on column tests.history_mstr_outsource_available.mstr_task_id is '工程id';
comment on column tests.history_mstr_outsource_available.mstr_stakeholder_id is '利害関係者id';
comment on column tests.history_mstr_outsource_available.revision is 'レビジョン';
comment on column tests.history_mstr_outsource_available.remarks is '備考';
comment on column tests.history_mstr_outsource_available.update_at is '更新日時';
comment on column tests.history_mstr_outsource_available.update_user_id is '更新者id';
comment on column tests.history_mstr_outsource_available.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_outsource_available.remove is '削除';
comment on table tests.history_mstr_equipment_available is '利用可能設備マスタ';
comment on column tests.history_mstr_equipment_available.history_id is '履歴id';
comment on column tests.history_mstr_equipment_available.mstr_equipment_available_id is '利用可能設備id';
comment on column tests.history_mstr_equipment_available.mstr_task_location_id is '工程場所id';
comment on column tests.history_mstr_equipment_available.mstr_task_id is '工程id';
comment on column tests.history_mstr_equipment_available.mstr_equipment_id is '設備id';
comment on column tests.history_mstr_equipment_available.revision is '履歴id';
comment on column tests.history_mstr_equipment_available.remarks is '備考';
comment on column tests.history_mstr_equipment_available.update_at is '更新日時';
comment on column tests.history_mstr_equipment_available.update_user_id is '更新者id';
comment on column tests.history_mstr_equipment_available.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_equipment_available.remove is '削除';
comment on table tests.history_mstr_task is '工程マスタ履歴';
comment on column tests.history_mstr_task.history_id is '履歴id';
comment on column tests.history_mstr_task.mstr_task_id is '工程id';
comment on column tests.history_mstr_task.mstr_task_group_id is '工程グループid';
comment on column tests.history_mstr_task.code is '工程コード';
comment on column tests.history_mstr_task.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_task.detail is '詳細';
comment on column tests.history_mstr_task.class is '区分';
comment on column tests.history_mstr_task.default_time is '標準時間';
comment on column tests.history_mstr_task.revision is 'レビジョン';
comment on column tests.history_mstr_task.remarks is '備考';
comment on column tests.history_mstr_task.update_at is '更新日時';
comment on column tests.history_mstr_task.update_user_id is '更新者id';
comment on column tests.history_mstr_task.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_task.remove is '削除';
comment on table tests.history_mstr_task_location is '工程場所マスタ履歴';
comment on column tests.history_mstr_task_location.history_id is '履歴id';
comment on column tests.history_mstr_task_location.mstr_task_location_id is '工程場所id';
comment on column tests.history_mstr_task_location.mstr_task_id is '工程id';
comment on column tests.history_mstr_task_location.info_department_id is '組織情報id';
comment on column tests.history_mstr_task_location.info_company_id is '会社id';
comment on column tests.history_mstr_task_location.mstr_location_id is '場所ID';
comment on column tests.history_mstr_task_location.mstr_equipment_id is '設備ID';
comment on column tests.history_mstr_task_location.mstr_stakeholder_id is '利害関係者ID';
comment on column tests.history_mstr_task_location.revision is 'レビジョン';
comment on column tests.history_mstr_task_location.remarks is '備考';
comment on column tests.history_mstr_task_location.update_at is '更新日時';
comment on column tests.history_mstr_task_location.update_user_id is '更新者id';
comment on column tests.history_mstr_task_location.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_task_location.remove is '削除';
comment on table tests.mstr_task_location is '工程場所マスタ';
comment on column tests.mstr_task_location.mstr_task_location_id is '工程場所id';
comment on column tests.mstr_task_location.mstr_task_id is '工程id';
comment on column tests.mstr_task_location.info_department_id is '組織情報id';
comment on column tests.mstr_task_location.info_company_id is '会社id';
comment on column tests.mstr_task_location.mstr_location_id is '場所ID';
comment on column tests.mstr_task_location.mstr_equipment_id is '設備ID';
comment on column tests.mstr_task_location.mstr_stakeholder_id is '利害関係者ID';
comment on column tests.mstr_task_location.revision is 'レビジョン';
comment on column tests.mstr_task_location.remarks is '備考';
comment on column tests.mstr_task_location.update_at is '更新日時';
comment on column tests.mstr_task_location.update_user_id is '更新者id';
comment on column tests.mstr_task_location.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_task_location.remove is '削除';
comment on table tests.history_mstr_task_group is '工程グループマスタ履歴';
comment on column tests.history_mstr_task_group.history_id is '履歴id';
comment on column tests.history_mstr_task_group.mstr_task_group_id is '工程グループid';
comment on column tests.history_mstr_task_group.code is 'グループコード';
comment on column tests.history_mstr_task_group.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_task_group.details is '詳細';
comment on column tests.history_mstr_task_group.revision is 'レビジョン';
comment on column tests.history_mstr_task_group.remarks is '備考';
comment on column tests.history_mstr_task_group.update_at is '更新日時';
comment on column tests.history_mstr_task_group.update_user_id is '更新者id';
comment on column tests.history_mstr_task_group.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_task_group.remove is '削除';
comment on table tests.history_mstr_operation is '工程運用マスタ履歴';
comment on column tests.history_mstr_operation.history_id is '履歴id';
comment on column tests.history_mstr_operation.mstr_operation_id is '工程運用マスタID';
comment on column tests.history_mstr_operation.name is '名前';
comment on column tests.history_mstr_operation.control_code is '管理コード';
comment on column tests.history_mstr_operation.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_operation.detail is '詳細';
comment on column tests.history_mstr_operation.revision is 'レビジョン';
comment on column tests.history_mstr_operation.remarks is '備考';
comment on column tests.history_mstr_operation.update_at is '更新日時';
comment on column tests.history_mstr_operation.update_user_id is '更新者id';
comment on column tests.history_mstr_operation.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_operation.remove is '削除';
comment on table tests.history_mstr_manufacturer is '製造元マスタ履歴';
comment on column tests.history_mstr_manufacturer.history_id is '履歴id';
comment on column tests.history_mstr_manufacturer.mstr_manufacturer_id is '製造元id';
comment on column tests.history_mstr_manufacturer.code is '管理コード';
comment on column tests.history_mstr_manufacturer.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_manufacturer.revision is 'レビジョン';
comment on column tests.history_mstr_manufacturer.remarks is '備考';
comment on column tests.history_mstr_manufacturer.update_at is '更新日時';
comment on column tests.history_mstr_manufacturer.update_user_id is '更新者id';
comment on column tests.history_mstr_manufacturer.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_manufacturer.remove is '削除';
comment on table tests.history_mstr_inspection is '点検整備マスタ履歴';
comment on column tests.history_mstr_inspection.history_id is '履歴id';
comment on column tests.history_mstr_inspection.mstr_inspection_id is '点検整備マスタID';
comment on column tests.history_mstr_inspection.mstr_task_id is '工程id';
comment on column tests.history_mstr_inspection.code is '点検コード';
comment on column tests.history_mstr_inspection.class is '点検区分';
comment on column tests.history_mstr_inspection.base_date is '標準起算日';
comment on column tests.history_mstr_inspection.time_interval is '標準間隔';
comment on column tests.history_mstr_inspection.stakeholder is '外部';
comment on column tests.history_mstr_inspection.inspection_formula_id is '点検整備項目id';
comment on column tests.history_mstr_inspection.revision is 'レビジョン';
comment on column tests.history_mstr_inspection.item_history_id is '点検整備サービス品目履歴id';
comment on column tests.history_mstr_inspection.mstr_item_id is '点検整備サービス品目id';
comment on column tests.history_mstr_inspection.remarks is '備考';
comment on column tests.history_mstr_inspection.update_at is '更新日時';
comment on column tests.history_mstr_inspection.update_user_id is '更新者id';
comment on column tests.history_mstr_inspection.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_inspection.remove is '削除';
comment on table tests.history_mstr_inspection_formula is '点検整備項目式マスタ履歴';
comment on column tests.history_mstr_inspection_formula.history_id is '履歴id';
comment on column tests.history_mstr_inspection_formula.mstr_inspection_formula_id is '点検整備項目id';
comment on column tests.history_mstr_inspection_formula.formula_class is '式';
comment on column tests.history_mstr_inspection_formula.arg_class is '引数';
comment on column tests.history_mstr_inspection_formula.type_class is '型';
comment on column tests.history_mstr_inspection_formula.format_class is 'フォーマット';
comment on column tests.history_mstr_inspection_formula.revision is 'レビジョン';
comment on column tests.history_mstr_inspection_formula.remarks is '備考';
comment on column tests.history_mstr_inspection_formula.update_at is '更新日時';
comment on column tests.history_mstr_inspection_formula.update_user_id is '更新者id';
comment on column tests.history_mstr_inspection_formula.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_inspection_formula.remove is '削除';
comment on table tests.history_mstr_item_size is '品目大きさマスタ履歴';
comment on column tests.history_mstr_item_size.history_id is '履歴id';
comment on column tests.history_mstr_item_size.mstr_item_size_id is '大きさid';
comment on column tests.history_mstr_item_size.mstr_item_id is '品目id';
comment on column tests.history_mstr_item_size.mstr_item_size_kind_id is '品目大きさ区分id';
comment on column tests.history_mstr_item_size.size_value is '大きさ';
comment on column tests.history_mstr_item_size.detail is '詳細';
comment on column tests.history_mstr_item_size.unit_history_id is '単位履歴id';
comment on column tests.history_mstr_item_size.info_unit_id is '単位id';
comment on column tests.history_mstr_item_size.revision is 'レビジョン';
comment on column tests.history_mstr_item_size.remarks is '備考';
comment on column tests.history_mstr_item_size.update_at is '更新日時';
comment on column tests.history_mstr_item_size.update_user_id is '更新者id';
comment on column tests.history_mstr_item_size.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_item_size.remove is '削除';
comment on table tests.history_mstr_item_tree is '品目体系マスタ履歴';
comment on column tests.history_mstr_item_tree.history_id is '履歴id';
comment on column tests.history_mstr_item_tree.mstr_item_tree_id is '品目体系id';
comment on column tests.history_mstr_item_tree.mstr_item_id is '自品目ID';
comment on column tests.history_mstr_item_tree.parent_mstr_item_id is '親品目ID';
comment on column tests.history_mstr_item_tree.code is '品目体系コード';
comment on column tests.history_mstr_item_tree.control_code is '管理コード';
comment on column tests.history_mstr_item_tree.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_item_tree.quantity is '数量';
comment on column tests.history_mstr_item_tree.detail is '詳細';
comment on column tests.history_mstr_item_tree.revision is 'レビジョン';
comment on column tests.history_mstr_item_tree.remarks is '備考';
comment on column tests.history_mstr_item_tree.update_at is '更新日時';
comment on column tests.history_mstr_item_tree.update_user_id is '更新者id';
comment on column tests.history_mstr_item_tree.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_item_tree.remove is '削除';
comment on table tests.history_mstr_item is '品目マスタ履歴';
comment on column tests.history_mstr_item.history_id is '履歴id';
comment on column tests.history_mstr_item.mstr_item_id is '品目id';
comment on column tests.history_mstr_item.system_class is 'システム区分';
comment on column tests.history_mstr_item.code is '品目コード';
comment on column tests.history_mstr_item.identification is '識別コード';
comment on column tests.history_mstr_item.control_code is '管理コード';
comment on column tests.history_mstr_item.mstr_manufacturer_id is '製造元id';
comment on column tests.history_mstr_item.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_item.label_code is '表示コード';
comment on column tests.history_mstr_item.description is '詳細';
comment on column tests.history_mstr_item.info_unit_id is '単位id';
comment on column tests.history_mstr_item.increment is '刻み';
comment on column tests.history_mstr_item.lot is 'ロット';
comment on column tests.history_mstr_item.stock_quantity is '最少在庫数量';
comment on column tests.history_mstr_item.revision is 'レビジョン';
comment on column tests.history_mstr_item.remarks is '備考';
comment on column tests.history_mstr_item.update_at is '更新日時';
comment on column tests.history_mstr_item.update_user_id is '更新者id';
comment on column tests.history_mstr_item.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_item.remove is '削除';
comment on table tests.history_mstr_audit_std_checkitem is '監査標準項目マスタ履歴';
comment on column tests.history_mstr_audit_std_checkitem.history_id is '履歴id';
comment on column tests.history_mstr_audit_std_checkitem.mstr_audit_std_checkitem_id is '項目id';
comment on column tests.history_mstr_audit_std_checkitem.mstr_audit_std_id is '監査標準id';
comment on column tests.history_mstr_audit_std_checkitem.code is '監査標準項目コード';
comment on column tests.history_mstr_audit_std_checkitem.control_code is '管理コード';
comment on column tests.history_mstr_audit_std_checkitem.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_audit_std_checkitem.detail is '詳細';
comment on column tests.history_mstr_audit_std_checkitem.conformance is '適合水準';
comment on column tests.history_mstr_audit_std_checkitem.min is '最小';
comment on column tests.history_mstr_audit_std_checkitem.max is '最大';
comment on column tests.history_mstr_audit_std_checkitem.revision is 'レビジョン';
comment on column tests.history_mstr_audit_std_checkitem.remarks is '備考';
comment on column tests.history_mstr_audit_std_checkitem.update_at is '更新日時';
comment on column tests.history_mstr_audit_std_checkitem.update_user_id is '更新者id';
comment on column tests.history_mstr_audit_std_checkitem.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_audit_std_checkitem.remove is '削除';
comment on table tests.history_mstr_audit_std is '監査標準マスタ履歴';
comment on column tests.history_mstr_audit_std.history_id is '履歴id';
comment on column tests.history_mstr_audit_std.mstr_audit_std_id is '監査標準id';
comment on column tests.history_mstr_audit_std.code is '監査標準コード';
comment on column tests.history_mstr_audit_std.control_code is '管理コード';
comment on column tests.history_mstr_audit_std.category is '区分';
comment on column tests.history_mstr_audit_std.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_audit_std.detail is '詳細';
comment on column tests.history_mstr_audit_std.revision is 'レビジョン';
comment on column tests.history_mstr_audit_std.remarks is '備考';
comment on column tests.history_mstr_audit_std.update_at is '更新日時';
comment on column tests.history_mstr_audit_std.update_user_id is '更新者id';
comment on column tests.history_mstr_audit_std.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_audit_std.remove is '削除';
comment on table tests.history_mstr_location is '場所マスタ履歴';
comment on column tests.history_mstr_location.history_id is '履歴id';
comment on column tests.history_mstr_location.mstr_location_id is '場所id';
comment on column tests.history_mstr_location.code is '場所コード';
comment on column tests.history_mstr_location.info_department_id is '組織情報id';
comment on column tests.history_mstr_location.control_code is '管理コード';
comment on column tests.history_mstr_location.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_location.info_address_id is '住所id';
comment on column tests.history_mstr_location.available is '使用';
comment on column tests.history_mstr_location.revision is 'レビジョン';
comment on column tests.history_mstr_location.remarks is '備考';
comment on column tests.history_mstr_location.update_at is '更新日時';
comment on column tests.history_mstr_location.update_user_id is '更新者id';
comment on column tests.history_mstr_location.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_location.remove is '削除';
comment on table tests.history_mstr_equipment_tag is '設備識別タグマスタ履歴';
comment on column tests.history_mstr_equipment_tag.history_id is '履歴id';
comment on column tests.history_mstr_equipment_tag.mstr_equipment_tag_id is '設備識別タグid';
comment on column tests.history_mstr_equipment_tag.trans_file_id is '様式ファイルid';
comment on column tests.history_mstr_equipment_tag.name is '名前';
comment on column tests.history_mstr_equipment_tag.revision is 'レビジョン';
comment on column tests.history_mstr_equipment_tag.remarks is '備考';
comment on column tests.history_mstr_equipment_tag.update_at is '更新日時';
comment on column tests.history_mstr_equipment_tag.update_user_id is '更新者id';
comment on column tests.history_mstr_equipment_tag.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_equipment_tag.remove is '削除';
comment on table tests.history_mstr_stakeholder_contact is '利害関係者窓口マスタ履歴';
comment on column tests.history_mstr_stakeholder_contact.history_id is '履歴id';
comment on column tests.history_mstr_stakeholder_contact.mstr_stakeholder_contact_id is '窓口id';
comment on column tests.history_mstr_stakeholder_contact.mstr_stakeholder_id is '利害関係者ID';
comment on column tests.history_mstr_stakeholder_contact.code is '利害関係者コード';
comment on column tests.history_mstr_stakeholder_contact.office_name is '事業所名';
comment on column tests.history_mstr_stakeholder_contact.department_name is '部署名';
comment on column tests.history_mstr_stakeholder_contact.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_stakeholder_contact.private_phone is 'メール';
comment on column tests.history_mstr_stakeholder_contact.info_address_id is '住所id';
comment on column tests.history_mstr_stakeholder_contact.revision is 'レビジョン';
comment on column tests.history_mstr_stakeholder_contact.remarks is '備考';
comment on column tests.history_mstr_stakeholder_contact.update_at is '更新日時';
comment on column tests.history_mstr_stakeholder_contact.update_user_id is '更新者id';
comment on column tests.history_mstr_stakeholder_contact.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_stakeholder_contact.remove is '削除';
comment on table tests.history_mstr_stakeholder_provision is '利害関係者提供マスタ履歴';
comment on column tests.history_mstr_stakeholder_provision.history_id is '履歴id';
comment on column tests.history_mstr_stakeholder_provision.mstr_stakeholder_provision_id is '利害関係者提供id';
comment on column tests.history_mstr_stakeholder_provision.mstr_stakeholder_id is '利害関係者id';
comment on column tests.history_mstr_stakeholder_provision.info_provision_id is '提供id';
comment on column tests.history_mstr_stakeholder_provision.revision is 'レビジョン';
comment on column tests.history_mstr_stakeholder_provision.remarks is '備考';
comment on column tests.history_mstr_stakeholder_provision.update_at is '更新日時';
comment on column tests.history_mstr_stakeholder_provision.update_user_id is '更新者id';
comment on column tests.history_mstr_stakeholder_provision.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_stakeholder_provision.remove is '削除';
comment on table tests.history_mstr_stakeholder is '利害関係者マスタ履歴';
comment on column tests.history_mstr_stakeholder.history_id is '履歴id';
comment on column tests.history_mstr_stakeholder.mstr_stakeholder_id is '利害関係者id';
comment on column tests.history_mstr_stakeholder.is_customer is '顧客';
comment on column tests.history_mstr_stakeholder.is_supplier is '外部供給者';
comment on column tests.history_mstr_stakeholder.is_logistics is '物流';
comment on column tests.history_mstr_stakeholder.code is '利害関係者コード';
comment on column tests.history_mstr_stakeholder.control_code is '管理コード';
comment on column tests.history_mstr_stakeholder.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_stakeholder.mail is 'メール';
comment on column tests.history_mstr_stakeholder.info_address_id is '住所id';
comment on column tests.history_mstr_stakeholder.mstr_shipping_kind_id is '配送区分id';
comment on column tests.history_mstr_stakeholder.revision is 'レビジョン';
comment on column tests.history_mstr_stakeholder.remarks is '備考';
comment on column tests.history_mstr_stakeholder.update_at is '更新日時';
comment on column tests.history_mstr_stakeholder.update_user_id is '更新者id';
comment on column tests.history_mstr_stakeholder.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_stakeholder.remove is '削除';
comment on table tests.history_mstr_staff_license is '担当者資格マスタ履歴';
comment on column tests.history_mstr_staff_license.history_id is '履歴id';
comment on column tests.history_mstr_staff_license.mstr_staff_license_id is '担当者資格id';
comment on column tests.history_mstr_staff_license.info_staff_id is '担当者ID';
comment on column tests.history_mstr_staff_license.mstr_license_id is '資格ID';
comment on column tests.history_mstr_staff_license.start_at is '適用開始';
comment on column tests.history_mstr_staff_license.stop_at is '適用終了';
comment on column tests.history_mstr_staff_license.abeyance is '停止';
comment on column tests.history_mstr_staff_license.abeyance_at is '停止日時';
comment on column tests.history_mstr_staff_license.revocation is '取り消し';
comment on column tests.history_mstr_staff_license.revocation_at is '取り消し日時';
comment on column tests.history_mstr_staff_license.revision is 'レビジョン';
comment on column tests.history_mstr_staff_license.remarks is '備考';
comment on column tests.history_mstr_staff_license.update_at is '更新日時';
comment on column tests.history_mstr_staff_license.update_user_id is '更新者id';
comment on column tests.history_mstr_staff_license.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_staff_license.remove is '削除';
comment on table tests.history_mstr_license is '資格マスタ履歴';
comment on column tests.history_mstr_license.history_id is '履歴id';
comment on column tests.history_mstr_license.mstr_license_id is '資格id';
comment on column tests.history_mstr_license.code is '資格コード';
comment on column tests.history_mstr_license.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_license.detail is '詳細';
comment on column tests.history_mstr_license.public_license is '公的';
comment on column tests.history_mstr_license.customer_license is '顧客';
comment on column tests.history_mstr_license.organization_license is '内部';
comment on column tests.history_mstr_license.update_interval is '更新間隔';
comment on column tests.history_mstr_license.revision is 'レビジョン';
comment on column tests.history_mstr_license.remarks is '備考';
comment on column tests.history_mstr_license.update_at is '更新日時';
comment on column tests.history_mstr_license.update_user_id is '更新者id';
comment on column tests.history_mstr_license.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_license.remove is '削除';
comment on table tests.history_info_staff_access_permission is '担当者アクセスパス許可情報履歴';
comment on column tests.history_info_staff_access_permission.history_id is '履歴id';
comment on column tests.history_info_staff_access_permission.info_staff_access_permission_id is '担当者アクセスパス許可情報ID';
comment on column tests.history_info_staff_access_permission.info_access_path_id is 'アクセスパスID';
comment on column tests.history_info_staff_access_permission.info_staff_id is '担当者id';
comment on column tests.history_info_staff_access_permission.permit is 'パーミット';
comment on column tests.history_info_staff_access_permission.revision is 'レビジョン';
comment on column tests.history_info_staff_access_permission.remarks is '備考';
comment on column tests.history_info_staff_access_permission.update_at is '更新日時';
comment on column tests.history_info_staff_access_permission.update_user_id is '更新者id';
comment on column tests.history_info_staff_access_permission.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_staff_access_permission.remove is '削除';
comment on table tests.historymstr_approval_scope_pattern is '承認範囲パターンマスタ履歴';
comment on column tests.historymstr_approval_scope_pattern.history_id is '履歴id';
comment on column tests.historymstr_approval_scope_pattern.mstr_approval_scope_pattern_id is '承認範囲パターンID';
comment on column tests.historymstr_approval_scope_pattern.mstr_approval_pattern_id is '承認パターンID';
comment on column tests.historymstr_approval_scope_pattern.info_access_path_approval_id is 'アクセスパス承認情報ID';
comment on column tests.historymstr_approval_scope_pattern.revision is 'レビジョン';
comment on column tests.historymstr_approval_scope_pattern.remarks is '備考';
comment on column tests.historymstr_approval_scope_pattern.update_at is '更新日時';
comment on column tests.historymstr_approval_scope_pattern.update_user_id is '更新者id';
comment on column tests.historymstr_approval_scope_pattern.update_user_history_id is '更新者履歴id';
comment on column tests.historymstr_approval_scope_pattern.remove is '削除';
comment on table tests.history_mstr_approval_pattern is '承認パターンマスタ履歴';
comment on column tests.history_mstr_approval_pattern.history_id is '履歴id';
comment on column tests.history_mstr_approval_pattern.mstr_approval_pattern_id is '承認パターンID';
comment on column tests.history_mstr_approval_pattern.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_approval_pattern.revision is 'レビジョン';
comment on column tests.history_mstr_approval_pattern.remarks is '備考';
comment on column tests.history_mstr_approval_pattern.update_at is '更新日時';
comment on column tests.history_mstr_approval_pattern.update_user_id is '更新者id';
comment on column tests.history_mstr_approval_pattern.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_approval_pattern.remove is '削除';
comment on table tests.history_mstr_capability is '力量マスタ履歴';
comment on column tests.history_mstr_capability.history_id is '履歴id';
comment on column tests.history_mstr_capability.mstr_capability_id is '力量id';
comment on column tests.history_mstr_capability.code is '力量コード';
comment on column tests.history_mstr_capability.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_capability.detail is '力量詳細';
comment on column tests.history_mstr_capability.reference_value is '基準';
comment on column tests.history_mstr_capability.max is '最大';
comment on column tests.history_mstr_capability.min is '最小';
comment on column tests.history_mstr_capability.step is '刻み';
comment on column tests.history_mstr_capability.revision is 'レビジョン';
comment on column tests.history_mstr_capability.remarks is '備考';
comment on column tests.history_mstr_capability.update_at is '更新日時';
comment on column tests.history_mstr_capability.update_user_id is '更新者id';
comment on column tests.history_mstr_capability.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_capability.remove is '削除';
comment on table tests.history_mstr_approval_pattern_detail is '承認パターン明細マスタ履歴';
comment on column tests.history_mstr_approval_pattern_detail.history_id is '履歴id';
comment on column tests.history_mstr_approval_pattern_detail.mstr_approval_pattern_detail_id is '承認経路id';
comment on column tests.history_mstr_approval_pattern_detail.mstr_approval_id is '承認ID';
comment on column tests.history_mstr_approval_pattern_detail.mstr_approval_pattern_id is '承認パターンID';
comment on column tests.history_mstr_approval_pattern_detail.revision is 'レビジョン';
comment on column tests.history_mstr_approval_pattern_detail.remarks is '備考';
comment on column tests.history_mstr_approval_pattern_detail.update_at is '更新日時';
comment on column tests.history_mstr_approval_pattern_detail.update_user_id is '更新者id';
comment on column tests.history_mstr_approval_pattern_detail.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_approval_pattern_detail.remove is '削除';
comment on table tests.history_mstr_approval is '承認マスタ履歴';
comment on column tests.history_mstr_approval.history_id is '利益id';
comment on column tests.history_mstr_approval.mstr_approval_id is '承認ID';
comment on column tests.history_mstr_approval.info_company_id is '会社情報ID';
comment on column tests.history_mstr_approval.info_department_id is '組織情報id';
comment on column tests.history_mstr_approval.info_role_id is '役割ID';
comment on column tests.history_mstr_approval.priority is '順位';
comment on column tests.history_mstr_approval.shared_appellations_id is '呼称セットid';
comment on column tests.history_mstr_approval.revision is 'レビジョン';
comment on column tests.history_mstr_approval.remarks is '備考';
comment on column tests.history_mstr_approval.update_at is '更新日時';
comment on column tests.history_mstr_approval.update_user_id is '更新者id';
comment on column tests.history_mstr_approval.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_approval.remove is '削除';
comment on table tests.history_info_role is '役割履歴';
comment on column tests.history_info_role.history_id is '履歴id';
comment on column tests.history_info_role.info_role_id is '役割ID';
comment on column tests.history_info_role.priority is '順位';
comment on column tests.history_info_role.name is '名称';
comment on column tests.history_info_role.kana is 'カナ';
comment on column tests.history_info_role.revision is 'レビジョン';
comment on column tests.history_info_role.remarks is '備考';
comment on column tests.history_info_role.update_at is '更新日時';
comment on column tests.history_info_role.update_user_id is '更新者id';
comment on column tests.history_info_role.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_role.remove is '削除';
comment on table tests.history_mstr_staff_capability is '担当者力量マスタ履歴';
comment on column tests.history_mstr_staff_capability.history_id is '履歴di';
comment on column tests.history_mstr_staff_capability.mstr_staff_capability_id is '担当者力量id';
comment on column tests.history_mstr_staff_capability.info_staff_id is '担当者ID';
comment on column tests.history_mstr_staff_capability.mstr_capability_id is '力量ID';
comment on column tests.history_mstr_staff_capability.value is '値';
comment on column tests.history_mstr_staff_capability.stop is '停止';
comment on column tests.history_mstr_staff_capability.revision is 'レビジョン';
comment on column tests.history_mstr_staff_capability.remarks is '備考';
comment on column tests.history_mstr_staff_capability.update_at is '更新日時';
comment on column tests.history_mstr_staff_capability.update_user_id is '更新者id';
comment on column tests.history_mstr_staff_capability.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_staff_capability.remove is '削除';
comment on table tests.history_mstr_sign is 'サインマスタ履歴';
comment on column tests.history_mstr_sign.history_id is '履歴id';
comment on column tests.history_mstr_sign.mstr_sign_id is 'サインid';
comment on column tests.history_mstr_sign.info_staff_id is '担当者ID';
comment on column tests.history_mstr_sign.code is 'サインコード';
comment on column tests.history_mstr_sign.mail is 'メールアドレス';
comment on column tests.history_mstr_sign.role is '権限';
comment on column tests.history_mstr_sign.mstr_signin_id is 'サインインID';
comment on column tests.history_mstr_sign.revision is 'レビジョン';
comment on column tests.history_mstr_sign.remarks is '備考';
comment on column tests.history_mstr_sign.update_at is '更新日時';
comment on column tests.history_mstr_sign.update_user_id is '更新者id';
comment on column tests.history_mstr_sign.update_user_history_id is '更新者履歴id';
comment on column tests.history_mstr_sign.remove is '削除';
comment on table tests.history_info_staff is '担当者情報履歴';
comment on column tests.history_info_staff.history_id is '履歴id';
comment on column tests.history_info_staff.info_staff_id is '担当者id';
comment on column tests.history_info_staff.info_company_id is '会社id';
comment on column tests.history_info_staff.info_office_id is '事業所ID';
comment on column tests.history_info_staff.code is '担当者コード';
comment on column tests.history_info_staff.shared_appellations_id is '呼称セットid';
comment on column tests.history_info_staff.sex is '性別';
comment on column tests.history_info_staff.phone is '電話';
comment on column tests.history_info_staff.private_phone is '緊急電話';
comment on column tests.history_info_staff.revision is 'レビジョン';
comment on column tests.history_info_staff.remarks is '備考';
comment on column tests.history_info_staff.update_at is '更新日時';
comment on column tests.history_info_staff.update_user_id is '更新者id';
comment on column tests.history_info_staff.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_staff.remove is '削除';
comment on table tests.history_info_provision is '提供情報履歴';
comment on column tests.history_info_provision.history_id is '履歴id';
comment on column tests.history_info_provision.info_provision_id is '提供id';
comment on column tests.history_info_provision.info_company_id is '会社id';
comment on column tests.history_info_provision.code is '提供コード';
comment on column tests.history_info_provision.shared_appellations_id is '呼称セットid';
comment on column tests.history_info_provision.details is '詳細';
comment on column tests.history_info_provision.revision is 'レビジョン';
comment on column tests.history_info_provision.remarks is '備考';
comment on column tests.history_info_provision.update_at is '更新日時';
comment on column tests.history_info_provision.update_user_id is '更新者id';
comment on column tests.history_info_provision.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_provision.remove is '削除';
comment on table tests.history_info_address is '住所情報履歴';
comment on column tests.history_info_address.history_id is '履歴id';
comment on column tests.history_info_address.info_address_id is '住所id';
comment on column tests.history_info_address.iso3166_3 is '国';
comment on column tests.history_info_address.zip_code is '郵便番号';
comment on column tests.history_info_address.address1 is '住所1';
comment on column tests.history_info_address.address2 is '住所2';
comment on column tests.history_info_address.bill is '建物';
comment on column tests.history_info_address.phone is '電話番号';
comment on column tests.history_info_address.fax_number is 'FAX';
comment on column tests.history_info_address.revision is 'レビジョン';
comment on column tests.history_info_address.remarks is '備考';
comment on column tests.history_info_address.update_at is '更新日時';
comment on column tests.history_info_address.update_user_id is '更新者id';
comment on column tests.history_info_address.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_address.remove is '削除';
comment on table tests.history_shared_unit is '単位履歴';
comment on column tests.history_shared_unit.history_id is '履歴id';
comment on column tests.history_shared_unit.shared_unit_id is '単位id';
comment on column tests.history_shared_unit.shared_appellations_id is '呼称セットid';
comment on column tests.history_shared_unit.description is '詳細';
comment on column tests.history_shared_unit.revision is 'レビジョン';
comment on column tests.history_shared_unit.remarks is '備考';
comment on column tests.history_shared_unit.update_at is '更新日時';
comment on column tests.history_shared_unit.update_user_id is '更新者id';
comment on column tests.history_shared_unit.update_user_history_id is '更新者履歴id';
comment on column tests.history_shared_unit.remove is '削除';
comment on table tests.history_info_office is '事業所情報履歴';
comment on column tests.history_info_office.history_id is '履歴id';
comment on column tests.history_info_office.info_office_id is '事業所id';
comment on column tests.history_info_office.info_company_id is '会社ID';
comment on column tests.history_info_office.code is '事業所コード';
comment on column tests.history_info_office.shared_appellations_id is '呼称セットid';
comment on column tests.history_info_office.info_address_id is '住所id';
comment on column tests.history_info_office.revision is 'レビジョン';
comment on column tests.history_info_office.remarks is '備考';
comment on column tests.history_info_office.update_at is '更新日時';
comment on column tests.history_info_office.update_user_id is '更新者id';
comment on column tests.history_info_office.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_office.remove is '削除';
comment on table tests.history_info_department is '組織情報履歴';
comment on column tests.history_info_department.history_id is '履歴id';
comment on column tests.history_info_department.info_department_id is '組織情報id';
comment on column tests.history_info_department.info_company_id is '会社id';
comment on column tests.history_info_department.info_office_id is '事業所id';
comment on column tests.history_info_department.code is '組織コード';
comment on column tests.history_info_department.shared_appellations_id is '呼称セットid';
comment on column tests.history_info_department.category1 is '組織区分1';
comment on column tests.history_info_department.category2 is '組織区分2';
comment on column tests.history_info_department.category3 is '組織区分3';
comment on column tests.history_info_department.info_address_id is '住所id';
comment on column tests.history_info_department.revision is 'レビジョン';
comment on column tests.history_info_department.remarks is '備考';
comment on column tests.history_info_department.update_at is '更新日時';
comment on column tests.history_info_department.update_user_id is '更新者id';
comment on column tests.history_info_department.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_department.remove is '削除';
comment on table tests.history_info_access_path_approval is 'アクセスパス承認情報履歴';
comment on column tests.history_info_access_path_approval.history_id is '履歴id';
comment on column tests.history_info_access_path_approval.info_access_path_approval_id is 'アクセスパス承認情報ID';
comment on column tests.history_info_access_path_approval.info_access_path_id is 'アクセスパスID';
comment on column tests.history_info_access_path_approval.name is '名前';
comment on column tests.history_info_access_path_approval.kana is 'カナ';
comment on column tests.history_info_access_path_approval.tag is 'タグ';
comment on column tests.history_info_access_path_approval.revision is 'レビジョン';
comment on column tests.history_info_access_path_approval.remarks is '備考';
comment on column tests.history_info_access_path_approval.update_at is '更新日時';
comment on column tests.history_info_access_path_approval.update_user_id is '更新者id';
comment on column tests.history_info_access_path_approval.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_access_path_approval.remove is '削除';
comment on table tests.history_info_access_path is 'アクセスパス履歴';
comment on column tests.history_info_access_path.history_id is '履歴id';
comment on column tests.history_info_access_path.info_access_path_id is 'アクセスパスID';
comment on column tests.history_info_access_path.info_app_id is 'アプリケーションid';
comment on column tests.history_info_access_path.name is 'アクセスパス名';
comment on column tests.history_info_access_path.usecase_path1 is 'ユースケースパス1';
comment on column tests.history_info_access_path.usecase_path2 is 'ユースケースパス2';
comment on column tests.history_info_access_path.usecase_path3 is 'ユースケースパス3';
comment on column tests.history_info_access_path.classes is 'ページクラス';
comment on column tests.history_info_access_path.sequence is '順';
comment on column tests.history_info_access_path.revision is 'レビジョン';
comment on column tests.history_info_access_path.remarks is '備考';
comment on column tests.history_info_access_path.update_at is '更新日時';
comment on column tests.history_info_access_path.update_user_id is '更新者id';
comment on column tests.history_info_access_path.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_access_path.remove is '削除';
comment on table tests.history_info_company is '会社情報履歴';
comment on column tests.history_info_company.history_id is '履歴id';
comment on column tests.history_info_company.info_company_id is '会社id';
comment on column tests.history_info_company.shared_appellations_id is '呼称セットid';
comment on column tests.history_info_company.info_address_id is '住所id';
comment on column tests.history_info_company.web_page is 'ホームページ';
comment on column tests.history_info_company.ceo is '代表';
comment on column tests.history_info_company.revision is 'レビジョン';
comment on column tests.history_info_company.remarks is '備考';
comment on column tests.history_info_company.update_at is '更新日時';
comment on column tests.history_info_company.update_user_id is '更新者id';
comment on column tests.history_info_company.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_company.remove is '削除';
comment on table tests.info_company is '会社情報';
comment on column tests.info_company.info_company_id is '会社id';
comment on column tests.info_company.shared_appellations_id is '呼称セットid';
comment on column tests.info_company.info_address_id is '住所id';
comment on column tests.info_company.web_page is 'ホームページ';
comment on column tests.info_company.ceo is '代表';
comment on column tests.info_company.revision is 'レビジョン';
comment on column tests.info_company.remarks is '備考';
comment on column tests.info_company.update_at is '更新日時';
comment on column tests.info_company.update_user_id is '更新者id';
comment on column tests.info_company.update_user_history_id is '更新者履歴id';
comment on column tests.info_company.remove is '削除';
comment on table tests.history_info_app is 'アプリケーション情報履歴';
comment on column tests.history_info_app.history_id is '履歴id';
comment on column tests.history_info_app.info_app_id is 'アプリケーションid';
comment on column tests.history_info_app.info_company_id is '会社情報ID';
comment on column tests.history_info_app.name is 'アプリケーション名';
comment on column tests.history_info_app.revision is 'レビジョン';
comment on column tests.history_info_app.remarks is '備考';
comment on column tests.history_info_app.update_at is '更新日時';
comment on column tests.history_info_app.update_user_id is '更新者id';
comment on column tests.history_info_app.update_user_history_id is '更新者履歴id';
comment on column tests.history_info_app.remove is '削除';
comment on table tests.trans_anonymouse is '匿名';
comment on column tests.trans_anonymouse.trans_anonymouse_id is '匿名id';
comment on column tests.trans_anonymouse.expiration_at is 'セッション期限';
comment on column tests.trans_anonymouse.mstr_sign_id is 'サインid';
comment on column tests.trans_anonymouse.start_at is '初回アクセス日時';
comment on column tests.trans_anonymouse.completion_at is '完了日時';
comment on column tests.trans_anonymouse.completion is '完了フラグ';
comment on column tests.trans_anonymouse.remarks is '備考';
comment on column tests.trans_anonymouse.update_at is '更新日時';
comment on column tests.trans_anonymouse.update_user_id is '更新者id';
comment on column tests.trans_anonymouse.update_user_history_id is '更新者履歴id';
comment on column tests.trans_anonymouse.remove is '削除';
comment on table tests.trans_file_reminder is 'ファイルリマインダー';
comment on column tests.trans_file_reminder.trans_file_reminder_id is 'リマインダid';
comment on column tests.trans_file_reminder.name is '名前';
comment on column tests.trans_file_reminder.label is 'ヘッダーラベル';
comment on column tests.trans_file_reminder.message is 'メッセージ';
comment on column tests.trans_file_reminder.type_codde is 'タイプ';
comment on column tests.trans_file_reminder.option is 'オプション';
comment on column tests.trans_file_reminder.urls is 'URLアドレス';
comment on column tests.trans_file_reminder.start_at is '開始日時';
comment on column tests.trans_file_reminder.expiration_date is '通知有効期限';
comment on column tests.trans_file_reminder.remarks is '備考';
comment on column tests.trans_file_reminder.update_at is '更新日時';
comment on column tests.trans_file_reminder.update_user_id is '更新者id';
comment on column tests.trans_file_reminder.update_user_history_id is '更新者履歴id';
comment on column tests.trans_file_reminder.remove is '削除';
comment on table tests.mstr_equipment_available is '利用可能設備マスタ';
comment on column tests.mstr_equipment_available.mstr_equipment_available_id is '利用可能設備id';
comment on column tests.mstr_equipment_available.mstr_task_location_id is '工程場所id';
comment on column tests.mstr_equipment_available.mstr_task_id is '工程id';
comment on column tests.mstr_equipment_available.mstr_equipment_id is '設備id';
comment on column tests.mstr_equipment_available.revision is '履歴id';
comment on column tests.mstr_equipment_available.remarks is '備考';
comment on column tests.mstr_equipment_available.update_at is '更新日時';
comment on column tests.mstr_equipment_available.update_user_id is '更新者id';
comment on column tests.mstr_equipment_available.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_equipment_available.remove is '削除';
comment on table tests.mstr_outsource_available is '利用可能外部マスタ';
comment on column tests.mstr_outsource_available.mstr_outsource_available_id is '利用可能外部id';
comment on column tests.mstr_outsource_available.mstr_task_location_id is '工程場所id';
comment on column tests.mstr_outsource_available.mstr_task_id is '工程id';
comment on column tests.mstr_outsource_available.mstr_stakeholder_id is '利害関係者id';
comment on column tests.mstr_outsource_available.revision is 'レビジョン';
comment on column tests.mstr_outsource_available.remarks is '備考';
comment on column tests.mstr_outsource_available.update_at is '更新日時';
comment on column tests.mstr_outsource_available.update_user_id is '更新者id';
comment on column tests.mstr_outsource_available.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_outsource_available.remove is '削除';
comment on table tests.mstr_task_group is '工程グループマスタ';
comment on column tests.mstr_task_group.mstr_task_group_id is '工程グループid';
comment on column tests.mstr_task_group.code is 'グループコード';
comment on column tests.mstr_task_group.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_task_group.details is '詳細';
comment on column tests.mstr_task_group.revision is 'レビジョン';
comment on column tests.mstr_task_group.remarks is '備考';
comment on column tests.mstr_task_group.update_at is '更新日時';
comment on column tests.mstr_task_group.update_user_id is '更新者id';
comment on column tests.mstr_task_group.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_task_group.remove is '削除';
comment on table tests.trans_unrecognized_detail is '非計上明細';
comment on column tests.trans_unrecognized_detail.trans_unrecognized_detail_id is '非計上明細id';
comment on column tests.trans_unrecognized_detail.trans_unrecognized_id is '非計上id';
comment on column tests.trans_unrecognized_detail.quantity is '数量';
comment on column tests.trans_unrecognized_detail.cost is '単価';
comment on column tests.trans_unrecognized_detail.deadline is '個別納期';
comment on column tests.trans_unrecognized_detail.history_id is '履歴id';
comment on column tests.trans_unrecognized_detail.mstr_item_id is '品目id';
comment on column tests.trans_unrecognized_detail.remarks is '備考';
comment on column tests.trans_unrecognized_detail.update_at is '更新日時';
comment on column tests.trans_unrecognized_detail.update_user_id is '更新者id';
comment on column tests.trans_unrecognized_detail.update_user_history_id is '更新者履歴id';
comment on column tests.trans_unrecognized_detail.remove is '削除';
comment on table tests.trans_unrecognized is '非計上';
comment on column tests.trans_unrecognized.trans_unrecognized_id is '非計上id';
comment on column tests.trans_unrecognized.control_code_1 is '管理コード1';
comment on column tests.trans_unrecognized.control_code_2 is '管理コード2';
comment on column tests.trans_unrecognized.control_code_3 is '管理コード3';
comment on column tests.trans_unrecognized.decision_date is '決定日';
comment on column tests.trans_unrecognized.deadline is '納期';
comment on column tests.trans_unrecognized.expected_completion_date is '完了予定日';
comment on column tests.trans_unrecognized.planned_shipping_date is '出荷予定日';
comment on column tests.trans_unrecognized.remarks is '備考';
comment on column tests.trans_unrecognized.update_at is '更新日時';
comment on column tests.trans_unrecognized.update_user_id is '更新者id';
comment on column tests.trans_unrecognized.update_user_history_id is '更新者履歴id';
comment on column tests.trans_unrecognized.remove is '削除';
comment on table tests.mstr_stakeholder_provision is '利害関係者提供マスタ';
comment on column tests.mstr_stakeholder_provision.mstr_stakeholder_provision_id is '利害関係者提供id';
comment on column tests.mstr_stakeholder_provision.mstr_stakeholder_id is '利害関係者id';
comment on column tests.mstr_stakeholder_provision.info_provision_id is '提供id';
comment on column tests.mstr_stakeholder_provision.revision is 'レビジョン';
comment on column tests.mstr_stakeholder_provision.remarks is '備考';
comment on column tests.mstr_stakeholder_provision.update_at is '更新日時';
comment on column tests.mstr_stakeholder_provision.update_user_id is '更新者id';
comment on column tests.mstr_stakeholder_provision.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_stakeholder_provision.remove is '削除';
comment on table tests.info_provision is '提供情報';
comment on column tests.info_provision.info_provision_id is '提供id';
comment on column tests.info_provision.info_company_id is '会社id';
comment on column tests.info_provision.code is '提供コード';
comment on column tests.info_provision.shared_appellations_id is '呼称セットid';
comment on column tests.info_provision.details is '詳細';
comment on column tests.info_provision.revision is 'レビジョン';
comment on column tests.info_provision.remarks is '備考';
comment on column tests.info_provision.update_at is '更新日時';
comment on column tests.info_provision.update_user_id is '更新者id';
comment on column tests.info_provision.update_user_history_id is '更新者履歴id';
comment on column tests.info_provision.remove is '削除';
comment on table tests.mstr_inspection_formula is '点検整備項目式マスタ';
comment on column tests.mstr_inspection_formula.mstr_inspection_formula_id is '点検整備項目id';
comment on column tests.mstr_inspection_formula.formula_class is '式';
comment on column tests.mstr_inspection_formula.arg_class is '引数';
comment on column tests.mstr_inspection_formula.type_class is '型';
comment on column tests.mstr_inspection_formula.format_class is 'フォーマット';
comment on column tests.mstr_inspection_formula.revision is 'レビジョン';
comment on column tests.mstr_inspection_formula.remarks is '備考';
comment on column tests.mstr_inspection_formula.update_at is '更新日時';
comment on column tests.mstr_inspection_formula.update_user_id is '更新者id';
comment on column tests.mstr_inspection_formula.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_inspection_formula.remove is '削除';
comment on table tests.mstr_manufacturer is '製造元マスタ';
comment on column tests.mstr_manufacturer.mstr_manufacturer_id is '製造元id';
comment on column tests.mstr_manufacturer.code is '管理コード';
comment on column tests.mstr_manufacturer.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_manufacturer.revision is 'レビジョン';
comment on column tests.mstr_manufacturer.remarks is '備考';
comment on column tests.mstr_manufacturer.update_at is '更新日時';
comment on column tests.mstr_manufacturer.update_user_id is '更新者id';
comment on column tests.mstr_manufacturer.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_manufacturer.remove is '削除';
comment on table tests.mstr_approval_scope_pattern is '承認範囲パターンマスタ';
comment on column tests.mstr_approval_scope_pattern.mstr_approval_scope_pattern_id is '承認範囲パターンID';
comment on column tests.mstr_approval_scope_pattern.mstr_approval_pattern_id is '承認パターンID';
comment on column tests.mstr_approval_scope_pattern.info_access_path_approval_id is 'アクセスパス承認情報ID';
comment on column tests.mstr_approval_scope_pattern.revision is 'レビジョン';
comment on column tests.mstr_approval_scope_pattern.remarks is '備考';
comment on column tests.mstr_approval_scope_pattern.update_at is '更新日時';
comment on column tests.mstr_approval_scope_pattern.update_user_id is '更新者id';
comment on column tests.mstr_approval_scope_pattern.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_approval_scope_pattern.remove is '削除';
comment on table tests.mstr_approval_pattern_detail is '承認パターン明細マスタ';
comment on column tests.mstr_approval_pattern_detail.mstr_approval_pattern_detail_id is '承認経路id';
comment on column tests.mstr_approval_pattern_detail.mstr_approval_id is '承認ID';
comment on column tests.mstr_approval_pattern_detail.mstr_approval_pattern_id is '承認パターンID';
comment on column tests.mstr_approval_pattern_detail.revision is 'レビジョン';
comment on column tests.mstr_approval_pattern_detail.remarks is '備考';
comment on column tests.mstr_approval_pattern_detail.update_at is '更新日時';
comment on column tests.mstr_approval_pattern_detail.update_user_id is '更新者id';
comment on column tests.mstr_approval_pattern_detail.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_approval_pattern_detail.remove is '削除';
comment on table tests.info_address is '住所情報';
comment on column tests.info_address.info_address_id is '住所id';
comment on column tests.info_address.iso3166_3 is '国';
comment on column tests.info_address.zip_code is '郵便番号';
comment on column tests.info_address.address1 is '住所1';
comment on column tests.info_address.address2 is '住所2';
comment on column tests.info_address.bill is '建物';
comment on column tests.info_address.phone is '電話番号';
comment on column tests.info_address.fax_number is 'FAX';
comment on column tests.info_address.revision is 'レビジョン';
comment on column tests.info_address.remarks is '備考';
comment on column tests.info_address.update_at is '更新日時';
comment on column tests.info_address.update_user_id is '更新者id';
comment on column tests.info_address.update_user_history_id is '更新者履歴id';
comment on column tests.info_address.remove is '削除';
comment on table tests.trans_inspection_report is '点検レポート実績';
comment on column tests.trans_inspection_report.trans_inspection_report_id is '点検整備実施id';
comment on column tests.trans_inspection_report.trans_inspect_sch_detail_id is '点検整備予定詳細ID';
comment on column tests.trans_inspection_report.mstr_report_id is 'レポートID';
comment on column tests.trans_inspection_report.remarks is '備考';
comment on column tests.trans_inspection_report.update_at is '更新日時';
comment on column tests.trans_inspection_report.update_user_id is '更新者id';
comment on column tests.trans_inspection_report.update_user_history_id is '更新者履歴id';
comment on column tests.trans_inspection_report.remove is '削除';
comment on table tests.mstr_report is 'レポートマスタ';
comment on column tests.mstr_report.mstr_report_id is 'レポートID';
comment on column tests.mstr_report.trans_file_id is 'ファイルid';
comment on column tests.mstr_report.name is '名前';
comment on column tests.mstr_report.code is 'コード';
comment on column tests.mstr_report.is_default is 'デフォルト';
comment on column tests.mstr_report.info_access_path_id is 'アクセスパスID';
comment on column tests.mstr_report.info_app_id is 'アプリケーションid';
comment on column tests.mstr_report.revision is 'レビジョン';
comment on column tests.mstr_report.remarks is '備考';
comment on column tests.mstr_report.update_at is '更新日時';
comment on column tests.mstr_report.update_user_id is '更新者id';
comment on column tests.mstr_report.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_report.remove is '削除';
comment on table tests.mstr_equipment_tag is '設備識別タグマスタ';
comment on column tests.mstr_equipment_tag.mstr_equipment_tag_id is '設備識別タグid';
comment on column tests.mstr_equipment_tag.trans_file_id is '様式ファイルid';
comment on column tests.mstr_equipment_tag.name is '名前';
comment on column tests.mstr_equipment_tag.revision is 'レビジョン';
comment on column tests.mstr_equipment_tag.remarks is '備考';
comment on column tests.mstr_equipment_tag.update_at is '更新日時';
comment on column tests.mstr_equipment_tag.update_user_id is '更新者id';
comment on column tests.mstr_equipment_tag.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_equipment_tag.remove is '削除';
comment on table tests.info_access_path_approval is 'アクセスパス承認情報';
comment on column tests.info_access_path_approval.info_access_path_approval_id is 'アクセスパス承認情報ID';
comment on column tests.info_access_path_approval.info_access_path_id is 'アクセスパスID';
comment on column tests.info_access_path_approval.name is '名前';
comment on column tests.info_access_path_approval.kana is 'カナ';
comment on column tests.info_access_path_approval.tag is 'タグ';
comment on column tests.info_access_path_approval.revision is 'レビジョン';
comment on column tests.info_access_path_approval.remarks is '備考';
comment on column tests.info_access_path_approval.update_at is '更新日時';
comment on column tests.info_access_path_approval.update_user_id is '更新者id';
comment on column tests.info_access_path_approval.update_user_history_id is '更新者履歴id';
comment on column tests.info_access_path_approval.remove is '削除';
comment on table tests.trans_approved is '承認結果';
comment on column tests.trans_approved.trans_approved_id is '承認結果id';
comment on column tests.trans_approved.period is '期限';
comment on column tests.trans_approved.status is '状態';
comment on column tests.trans_approved.priority is '順';
comment on column tests.trans_approved.remarks is '備考';
comment on column tests.trans_approved.update_at is '更新日時';
comment on column tests.trans_approved.update_user_id is '更新者id';
comment on column tests.trans_approved.update_user_history_id is '更新者履歴id';
comment on column tests.trans_approved.remove is '削除';
comment on table tests.mstr_approval is '承認マスタ';
comment on column tests.mstr_approval.mstr_approval_id is '承認ID';
comment on column tests.mstr_approval.info_company_id is '会社情報ID';
comment on column tests.mstr_approval.info_department_id is '組織情報id';
comment on column tests.mstr_approval.info_role_id is '役割ID';
comment on column tests.mstr_approval.priority is '順位';
comment on column tests.mstr_approval.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_approval.revision is 'レビジョン';
comment on column tests.mstr_approval.remarks is '備考';
comment on column tests.mstr_approval.update_at is '更新日時';
comment on column tests.mstr_approval.update_user_id is '更新者id';
comment on column tests.mstr_approval.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_approval.remove is '削除';
comment on table tests.info_role is '役割情報';
comment on column tests.info_role.info_role_id is '役割ID';
comment on column tests.info_role.priority is '順位';
comment on column tests.info_role.name is '名称';
comment on column tests.info_role.kana is 'カナ';
comment on column tests.info_role.revision is 'レビジョン';
comment on column tests.info_role.remarks is '備考';
comment on column tests.info_role.update_at is '更新日時';
comment on column tests.info_role.update_user_id is '更新者id';
comment on column tests.info_role.update_user_history_id is '更新者履歴id';
comment on column tests.info_role.remove is '削除';
comment on table tests.mstr_approval_pattern is '承認パターンマスタ';
comment on column tests.mstr_approval_pattern.mstr_approval_pattern_id is '承認パターンID';
comment on column tests.mstr_approval_pattern.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_approval_pattern.revision is 'レビジョン';
comment on column tests.mstr_approval_pattern.remarks is '備考';
comment on column tests.mstr_approval_pattern.update_at is '更新日時';
comment on column tests.mstr_approval_pattern.update_user_id is '更新者id';
comment on column tests.mstr_approval_pattern.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_approval_pattern.remove is '削除';
comment on table tests.trans_approval is '承認';
comment on column tests.trans_approval.trans_approval_id is '承認id';
comment on column tests.trans_approval.trans_approval_gr_id is '承認グループid';
comment on column tests.trans_approval.mstr_approval_pattern_id is '承認パターンid';
comment on column tests.trans_approval.trans_approved_id is '承認結果id';
comment on column tests.trans_approval.staff_history_id is '履歴id';
comment on column tests.trans_approval.info_staff_id is '担当者id';
comment on column tests.trans_approval.remarks is '備考';
comment on column tests.trans_approval.update_at is '更新日時';
comment on column tests.trans_approval.update_user_id is '更新者id';
comment on column tests.trans_approval.update_user_history_id is '更新者履歴id';
comment on column tests.trans_approval.remove is '削除';
comment on table tests.trans_approval_gr is '認証グループ';
comment on column tests.trans_approval_gr.trans_approval_gr_id is '承認グループid';
comment on column tests.trans_approval_gr.mstr_approval_pattern_id is '承認パターンid';
comment on column tests.trans_approval_gr.trans_approved_id is '承認結果id';
comment on column tests.trans_approval_gr.status is '状態';
comment on column tests.trans_approval_gr.remarks is '備考';
comment on column tests.trans_approval_gr.update_at is '更新日時';
comment on column tests.trans_approval_gr.update_user_id is '更新者id';
comment on column tests.trans_approval_gr.update_user_history_id is '更新者履歴id';
comment on column tests.trans_approval_gr.remove is '削除';
comment on table tests.trans_audit_member is '監査参加者';
comment on column tests.trans_audit_member.trans_audit_member_id is '監査参加者id';
comment on column tests.trans_audit_member.trans_audit_id is '監査id';
comment on column tests.trans_audit_member.audit_history_id is '監査標準履歴id';
comment on column tests.trans_audit_member.mstr_audit_std_id is '監査標準id';
comment on column tests.trans_audit_member.class is '参加区分';
comment on column tests.trans_audit_member.name is '参加者名';
comment on column tests.trans_audit_member.department is '参加者組織名';
comment on column tests.trans_audit_member.remarks is '備考';
comment on column tests.trans_audit_member.update_at is '更新日時';
comment on column tests.trans_audit_member.update_user_id is '更新者id';
comment on column tests.trans_audit_member.update_user_history_id is '更新者履歴id';
comment on column tests.trans_audit_member.remove is '削除';
comment on table tests.trans_auditor is '監査員';
comment on column tests.trans_auditor.trans_auditor_id is '監査員id';
comment on column tests.trans_auditor.trans_audit_id is '監査id';
comment on column tests.trans_auditor.audit_history_id is '監査標準履歴id';
comment on column tests.trans_auditor.mstr_audit_std_id is '監査標準id';
comment on column tests.trans_auditor.trans_audit_team_id is 'チームid';
comment on column tests.trans_auditor.ccategory is 'メンバー区分';
comment on column tests.trans_auditor.history_id is '履歴id';
comment on column tests.trans_auditor.info_staff_id is '担当者id';
comment on column tests.trans_auditor.remarks is '備考';
comment on column tests.trans_auditor.update_at is '更新日時';
comment on column tests.trans_auditor.update_user_id is '更新者id';
comment on column tests.trans_auditor.update_user_history_id is '更新者履歴id';
comment on column tests.trans_auditor.remove is '削除';
comment on table tests.trans_audit_team is '監査チーム';
comment on column tests.trans_audit_team.trans_audit_team_id is 'チームid';
comment on column tests.trans_audit_team.trans_audit_id is '監査id';
comment on column tests.trans_audit_team.audit_history_id is '監査標準履歴id';
comment on column tests.trans_audit_team.mstr_audit_std_id is '監査標準id';
comment on column tests.trans_audit_team.remarks is '備考';
comment on column tests.trans_audit_team.update_at is '更新日時';
comment on column tests.trans_audit_team.update_user_id is '更新者id';
comment on column tests.trans_audit_team.update_user_history_id is '更新者履歴id';
comment on column tests.trans_audit_team.remove is '削除';
comment on table tests.trans_audit is '監査';
comment on column tests.trans_audit.trans_audit_id is '監査id';
comment on column tests.trans_audit.audit_history_id is '監査標準履歴id';
comment on column tests.trans_audit.mstr_audit_std_id is '監査標準id';
comment on column tests.trans_audit.staff_history_id is '監査責任者履歴id';
comment on column tests.trans_audit.info_staff_id is '監査責任者id';
comment on column tests.trans_audit.scheduled_start_date is '開始予定日';
comment on column tests.trans_audit.expected_end_date is '終了予定日';
comment on column tests.trans_audit.name is '名前';
comment on column tests.trans_audit.number is '番号';
comment on column tests.trans_audit.title is 'タイトル';
comment on column tests.trans_audit.detail is '詳細';
comment on column tests.trans_audit.info_company_id is '会社情報ID';
comment on column tests.trans_audit.info_department_id is '組織情報id';
comment on column tests.trans_audit.mstr_stakeholder_id is '利害関係者id';
comment on column tests.trans_audit.remarks is '備考';
comment on column tests.trans_audit.update_at is '更新日時';
comment on column tests.trans_audit.update_user_id is '更新者id';
comment on column tests.trans_audit.update_user_history_id is '更新者履歴id';
comment on column tests.trans_audit.remove is '削除';
comment on table tests.trans_task_risk is '工程リスク';
comment on column tests.trans_task_risk.trans_task_risk_id is '工程リスクid';
comment on column tests.trans_task_risk.mstr_task_id is '工程id';
comment on column tests.trans_task_risk.risk_id is 'リスクid';
comment on column tests.trans_task_risk.name is '名前';
comment on column tests.trans_task_risk.number is '番号';
comment on column tests.trans_task_risk.title is 'タイトル';
comment on column tests.trans_task_risk.detail is '詳細';
comment on column tests.trans_task_risk.remarks is '備考';
comment on column tests.trans_task_risk.update_at is '更新日時';
comment on column tests.trans_task_risk.update_user_id is '更新者id';
comment on column tests.trans_task_risk.update_user_history_id is '更新者履歴id';
comment on column tests.trans_task_risk.remove is '削除';
comment on table tests.trans_order_detail_risk is '受注明細リスク';
comment on column tests.trans_order_detail_risk.trans_order_detail_risk_id is '受注明細リスクid';
comment on column tests.trans_order_detail_risk.trans_order_detail_id is '受注明細id';
comment on column tests.trans_order_detail_risk.risk_id is 'リスクid';
comment on column tests.trans_order_detail_risk.order_id is '受注ID';
comment on column tests.trans_order_detail_risk.mstr_item_id is '品目ID';
comment on column tests.trans_order_detail_risk.name is '名前';
comment on column tests.trans_order_detail_risk.number is '番号';
comment on column tests.trans_order_detail_risk.title is 'タイトル';
comment on column tests.trans_order_detail_risk.detail is '詳細';
comment on column tests.trans_order_detail_risk.remarks is '備考';
comment on column tests.trans_order_detail_risk.update_at is '更新日時';
comment on column tests.trans_order_detail_risk.update_user_id is '更新者id';
comment on column tests.trans_order_detail_risk.update_user_history_id is '更新者履歴id';
comment on column tests.trans_order_detail_risk.remove is '削除';
comment on table tests.trans_prevetion_detail is '未然防止処置';
comment on column tests.trans_prevetion_detail.trans_prevetion_detail_id is '未然防止処置id';
comment on column tests.trans_prevetion_detail.risk_id is 'リスクid';
comment on column tests.trans_prevetion_detail.trans_prevention_id is '未然防止id';
comment on column tests.trans_prevetion_detail.info_company_id is '会社情報ID';
comment on column tests.trans_prevetion_detail.info_department_id is '組織情報id';
comment on column tests.trans_prevetion_detail.start_at is '開始日';
comment on column tests.trans_prevetion_detail.stop_at is '終了日';
comment on column tests.trans_prevetion_detail.name is '名前';
comment on column tests.trans_prevetion_detail.number is '番号';
comment on column tests.trans_prevetion_detail.title is 'タイトル';
comment on column tests.trans_prevetion_detail.詳細 is '詳細';
comment on column tests.trans_prevetion_detail.remarks is '備考';
comment on column tests.trans_prevetion_detail.update_at is '更新日時';
comment on column tests.trans_prevetion_detail.update_user_id is '更新者id';
comment on column tests.trans_prevetion_detail.update_user_history_id is '更新者履歴id';
comment on column tests.trans_prevetion_detail.remove is '削除';
comment on table tests.trans_prevention is '未然防止';
comment on column tests.trans_prevention.trans_prevention_id is '未然防止id';
comment on column tests.trans_prevention.risk_id is 'リスクid';
comment on column tests.trans_prevention.name is '名前';
comment on column tests.trans_prevention.number is '番号';
comment on column tests.trans_prevention.title is 'タイトル';
comment on column tests.trans_prevention.detail is '詳細';
comment on column tests.trans_prevention.remarks is '備考';
comment on column tests.trans_prevention.update_at is '更新日時';
comment on column tests.trans_prevention.update_user_id is '更新者id';
comment on column tests.trans_prevention.update_user_history_id is '更新者履歴id';
comment on column tests.trans_prevention.remove is '削除';
comment on table tests.trans_order_risk is '注文リスク';
comment on column tests.trans_order_risk.trans_order_risk_id is '注文リスクID';
comment on column tests.trans_order_risk.trans_order_id is '注文id';
comment on column tests.trans_order_risk.risk_id is 'リスクid';
comment on column tests.trans_order_risk.name is '名前';
comment on column tests.trans_order_risk.number is '番号';
comment on column tests.trans_order_risk.title is 'タイトル';
comment on column tests.trans_order_risk.detail is '詳細';
comment on column tests.trans_order_risk.remarks is '備考';
comment on column tests.trans_order_risk.update_at is '更新日時';
comment on column tests.trans_order_risk.update_user_id is '更新者id';
comment on column tests.trans_order_risk.update_user_history_id is '更新者履歴id';
comment on column tests.trans_order_risk.remove is '削除';
comment on table tests.trans_equipment_lent is '設備貸与';
comment on column tests.trans_equipment_lent.trans_equipment_lent_id is '設備貸与id';
comment on column tests.trans_equipment_lent.equipment_history_id is '設備履歴id';
comment on column tests.trans_equipment_lent.mstr_equipment_id is '設備id';
comment on column tests.trans_equipment_lent.staff_history_id is '作業担当履歴id';
comment on column tests.trans_equipment_lent.info_staff_id is '作業担当者id';
comment on column tests.trans_equipment_lent.lent_at is '借用日';
comment on column tests.trans_equipment_lent.return_staff_id is '返却者';
comment on column tests.trans_equipment_lent.return_at is '返却日';
comment on column tests.trans_equipment_lent.remarks is '備考';
comment on column tests.trans_equipment_lent.update_at is '更新日時';
comment on column tests.trans_equipment_lent.update_user_id is '更新者id';
comment on column tests.trans_equipment_lent.update_user_history_id is '更新者履歴id';
comment on column tests.trans_equipment_lent.remove is '削除';
comment on table tests.mstr_item_operation is '品目工程運用マスタ';
comment on column tests.mstr_item_operation.mstr_item_operation_id is '品目工程運用マスタID';
comment on column tests.mstr_item_operation.mstr_item_id is '品目id';
comment on column tests.mstr_item_operation.mstr_operation_id is '工程運用マスタID';
comment on column tests.mstr_item_operation.revision is 'レビジョン';
comment on column tests.mstr_item_operation.remarks is '備考';
comment on column tests.mstr_item_operation.update_at is '更新日時';
comment on column tests.mstr_item_operation.update_user_id is '更新者id';
comment on column tests.mstr_item_operation.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_item_operation.remove is '削除';
comment on table tests.hrchy_mstr_location is '場所階層情報';
comment on column tests.hrchy_mstr_location.hrchy_mstr_location_id is '場所階層id';
comment on column tests.hrchy_mstr_location.ancestor_mstr_location_id is '祖先場所id';
comment on column tests.hrchy_mstr_location.descendant_mstr_location_id is '子孫場所id';
comment on column tests.hrchy_mstr_location.remarks is '備考';
comment on column tests.hrchy_mstr_location.update_at is '更新日時';
comment on column tests.hrchy_mstr_location.update_user_id is '更新者id';
comment on column tests.hrchy_mstr_location.update_user_history_id is '更新者履歴id';
comment on column tests.hrchy_mstr_location.remove is '削除';
comment on table tests.trans_disposal_detail is '異常処置明細';
comment on column tests.trans_disposal_detail.trans_disposal_detail_id is '異常処置id';
comment on column tests.trans_disposal_detail.trans_disposal_id is '異常処置明細id';
comment on column tests.trans_disposal_detail.trans_complaint_id is '異常id';
comment on column tests.trans_disposal_detail.location_id is '取り組み場所id';
comment on column tests.trans_disposal_detail.info_company_id is '会社情報';
comment on column tests.trans_disposal_detail.info_department_id is '組織id';
comment on column tests.trans_disposal_detail.name is '名前';
comment on column tests.trans_disposal_detail.number is '番号';
comment on column tests.trans_disposal_detail.title is 'タイトル';
comment on column tests.trans_disposal_detail.detail is '詳細';
comment on column tests.trans_disposal_detail.remarks is '備考';
comment on column tests.trans_disposal_detail.update_at is '更新日時';
comment on column tests.trans_disposal_detail.update_user_id is '更新者id';
comment on column tests.trans_disposal_detail.update_user_history_id is '更新者履歴id';
comment on column tests.trans_disposal_detail.remove is '削除';
comment on table tests.mstr_audit_std_checkitem is '監査標準項目マスタ';
comment on column tests.mstr_audit_std_checkitem.mstr_audit_std_checkitem_id is '項目id';
comment on column tests.mstr_audit_std_checkitem.mstr_audit_std_id is '監査標準id';
comment on column tests.mstr_audit_std_checkitem.code is '監査標準項目コード';
comment on column tests.mstr_audit_std_checkitem.control_code is '管理コード';
comment on column tests.mstr_audit_std_checkitem.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_audit_std_checkitem.detail is '詳細';
comment on column tests.mstr_audit_std_checkitem.conformance is '適合水準';
comment on column tests.mstr_audit_std_checkitem.min is '最小';
comment on column tests.mstr_audit_std_checkitem.max is '最大';
comment on column tests.mstr_audit_std_checkitem.revision is 'レビジョン';
comment on column tests.mstr_audit_std_checkitem.remarks is '備考';
comment on column tests.mstr_audit_std_checkitem.update_at is '更新日時';
comment on column tests.mstr_audit_std_checkitem.update_user_id is '更新者id';
comment on column tests.mstr_audit_std_checkitem.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_audit_std_checkitem.remove is '削除';
comment on table tests.mstr_audit_std is '監査標準マスタ';
comment on column tests.mstr_audit_std.mstr_audit_std_id is '監査標準id';
comment on column tests.mstr_audit_std.code is '監査標準コード';
comment on column tests.mstr_audit_std.control_code is '管理コード';
comment on column tests.mstr_audit_std.category is '区分';
comment on column tests.mstr_audit_std.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_audit_std.detail is '詳細';
comment on column tests.mstr_audit_std.revision is 'レビジョン';
comment on column tests.mstr_audit_std.remarks is '備考';
comment on column tests.mstr_audit_std.update_at is '更新日時';
comment on column tests.mstr_audit_std.update_user_id is '更新者id';
comment on column tests.mstr_audit_std.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_audit_std.remove is '削除';
comment on table tests.trans_risk is 'リスク';
comment on column tests.trans_risk.trans_risk_id is 'リスクid';
comment on column tests.trans_risk.name is '名前';
comment on column tests.trans_risk.title is 'タイトル';
comment on column tests.trans_risk.number is '番号';
comment on column tests.trans_risk.detail is 'リスク詳細';
comment on column tests.trans_risk.frequency is '発生頻度';
comment on column tests.trans_risk.momentous is '重大度';
comment on column tests.trans_risk.action is '対応可否';
comment on column tests.trans_risk.residual_risk_id is '残留リスクid';
comment on column tests.trans_risk.remarks is '備考';
comment on column tests.trans_risk.update_at is '更新日時';
comment on column tests.trans_risk.update_user_id is '更新者id';
comment on column tests.trans_risk.update_user_history_id is '更新者履歴id';
comment on column tests.trans_risk.remove is '削除';
comment on table tests.trans_observer_preventive is '再発防止監視';
comment on column tests.trans_observer_preventive.trans_observer_preventive_id is 'アダプタid';
comment on column tests.trans_observer_preventive.trans_complaint_id is '異常id';
comment on column tests.trans_observer_preventive.trans_disposal_id is '異常処置id';
comment on column tests.trans_observer_preventive.trans_recurrence_prevention_id is '再発防止id';
comment on column tests.trans_observer_preventive.trans_observer_disposal_id is '監視ID';
comment on column tests.trans_observer_preventive.remarks is '備考';
comment on column tests.trans_observer_preventive.update_at is '更新日時';
comment on column tests.trans_observer_preventive.update_user_id is '更新者id';
comment on column tests.trans_observer_preventive.update_user_history_id is '更新者履歴id';
comment on column tests.trans_observer_preventive.remove is '削除';
comment on table tests.trans_observer_disposal is '処置監視';
comment on column tests.trans_observer_disposal.trans_observer_disposal_id is '監視ID';
comment on column tests.trans_observer_disposal.enable is '有効性';
comment on column tests.trans_observer_disposal.observe_schedule is '監視測定予定日';
comment on column tests.trans_observer_disposal.observe_at is '監視測定日';
comment on column tests.trans_observer_disposal.observer is '監視測定者';
comment on column tests.trans_observer_disposal.remarks is '備考';
comment on column tests.trans_observer_disposal.update_at is '更新日時';
comment on column tests.trans_observer_disposal.update_user_id is '更新者id';
comment on column tests.trans_observer_disposal.update_user_history_id is '更新者履歴id';
comment on column tests.trans_observer_disposal.remove is '削除';
comment on table tests.trans_complaint_stakeholder_adapter is '利害関係者苦情';
comment on column tests.trans_complaint_stakeholder_adapter.trans_complaint_stakeholder_adapter_id is '異常処理id';
comment on column tests.trans_complaint_stakeholder_adapter.trans_order_id is '利害関係者d';
comment on column tests.trans_complaint_stakeholder_adapter.adapter_id is 'アダプタid';
comment on column tests.trans_complaint_stakeholder_adapter.name is '名前';
comment on column tests.trans_complaint_stakeholder_adapter.number is '番号';
comment on column tests.trans_complaint_stakeholder_adapter.title is 'タイトル';
comment on column tests.trans_complaint_stakeholder_adapter.detail is '詳細';
comment on column tests.trans_complaint_stakeholder_adapter.remarks is '備考';
comment on column tests.trans_complaint_stakeholder_adapter.update_at is '更新日時';
comment on column tests.trans_complaint_stakeholder_adapter.update_user_id is '更新者id';
comment on column tests.trans_complaint_stakeholder_adapter.update_user_history_id is '更新者履歴id';
comment on column tests.trans_complaint_stakeholder_adapter.remove is '削除';
comment on table tests.trans_complaint_equipment_adapter is '設備苦情';
comment on column tests.trans_complaint_equipment_adapter.trans_complaint_equipment_adapter_id is '異常処理id';
comment on column tests.trans_complaint_equipment_adapter.trans_order_id is '設備id';
comment on column tests.trans_complaint_equipment_adapter.adapter_id is 'アダプタid';
comment on column tests.trans_complaint_equipment_adapter.name is '名前';
comment on column tests.trans_complaint_equipment_adapter.number is '番号';
comment on column tests.trans_complaint_equipment_adapter.title is 'タイトル';
comment on column tests.trans_complaint_equipment_adapter.detail is '詳細';
comment on column tests.trans_complaint_equipment_adapter.remarks is '備考';
comment on column tests.trans_complaint_equipment_adapter.update_at is '更新日時';
comment on column tests.trans_complaint_equipment_adapter.update_user_id is '更新者id';
comment on column tests.trans_complaint_equipment_adapter.update_user_history_id is '更新者履歴id';
comment on column tests.trans_complaint_equipment_adapter.remove is '削除';
comment on table tests.trans_complaint_process_adapter is '工程苦情';
comment on column tests.trans_complaint_process_adapter.trans_complaint_process_adapter_id is '異常処理id';
comment on column tests.trans_complaint_process_adapter.process_id is '工程id';
comment on column tests.trans_complaint_process_adapter.adapter_id is 'アダプタID';
comment on column tests.trans_complaint_process_adapter.name is '名前';
comment on column tests.trans_complaint_process_adapter.number is '番号';
comment on column tests.trans_complaint_process_adapter.title is 'タイトル';
comment on column tests.trans_complaint_process_adapter.detail is '詳細';
comment on column tests.trans_complaint_process_adapter.remarks is '備考';
comment on column tests.trans_complaint_process_adapter.update_at is '更新日時';
comment on column tests.trans_complaint_process_adapter.update_user_id is '更新者id';
comment on column tests.trans_complaint_process_adapter.update_user_history_id is '更新者履歴id';
comment on column tests.trans_complaint_process_adapter.remove is '削除';
comment on table tests.trans_complaint_order_adapter is '注文苦情';
comment on column tests.trans_complaint_order_adapter.trans_complaint_order_adapter_id is '異常処理id';
comment on column tests.trans_complaint_order_adapter.trans_order_id is '注文id';
comment on column tests.trans_complaint_order_adapter.adapter_id is 'アダプタID';
comment on column tests.trans_complaint_order_adapter.name is '名前';
comment on column tests.trans_complaint_order_adapter.number is '番号';
comment on column tests.trans_complaint_order_adapter.title is 'タイトル';
comment on column tests.trans_complaint_order_adapter.detail is '詳細';
comment on column tests.trans_complaint_order_adapter.remarks is '備考';
comment on column tests.trans_complaint_order_adapter.update_at is '更新日時';
comment on column tests.trans_complaint_order_adapter.update_user_id is '更新者id';
comment on column tests.trans_complaint_order_adapter.update_user_history_id is '更新者履歴id';
comment on column tests.trans_complaint_order_adapter.remove is '削除';
comment on table tests.trans_disposal is '異常処置';
comment on column tests.trans_disposal.trans_disposal_id is '異常処置id';
comment on column tests.trans_disposal.trans_complaint_id is '異常id';
comment on column tests.trans_disposal.disposal_at is '処置年月日';
comment on column tests.trans_disposal.name is '名前';
comment on column tests.trans_disposal.number is '番号';
comment on column tests.trans_disposal.title is 'タイトル';
comment on column tests.trans_disposal.detail is '内容';
comment on column tests.trans_disposal.approval is '承認';
comment on column tests.trans_disposal.approval_at is '承認日';
comment on column tests.trans_disposal.remarks is '備考';
comment on column tests.trans_disposal.update_at is '更新日時';
comment on column tests.trans_disposal.update_user_id is '更新者id';
comment on column tests.trans_disposal.update_user_history_id is '更新者履歴id';
comment on column tests.trans_disposal.remove is '削除';
comment on table tests.trans_recurrence_prevention is '再発防止処置';
comment on column tests.trans_recurrence_prevention.trans_recurrence_prevention_id is '再発防止id';
comment on column tests.trans_recurrence_prevention.trans_complaint_id is '異常id';
comment on column tests.trans_recurrence_prevention.trans_disposal_id is '異常処置id';
comment on column tests.trans_recurrence_prevention.occurent_at is '発生年月日';
comment on column tests.trans_recurrence_prevention.title is 'タイトル';
comment on column tests.trans_recurrence_prevention.detail is '内容';
comment on column tests.trans_recurrence_prevention.reporter is '報告者';
comment on column tests.trans_recurrence_prevention.recipient is '受領者';
comment on column tests.trans_recurrence_prevention.approved is '受領承認';
comment on column tests.trans_recurrence_prevention.remarks is '備考';
comment on column tests.trans_recurrence_prevention.update_at is '更新日時';
comment on column tests.trans_recurrence_prevention.update_user_id is '更新者id';
comment on column tests.trans_recurrence_prevention.update_user_history_id is '更新者履歴id';
comment on column tests.trans_recurrence_prevention.remove is '削除';
comment on table tests.trans_complaint is '異常';
comment on column tests.trans_complaint.trans_complaint_id is '異常id';
comment on column tests.trans_complaint.occurent_at is '発生年月日';
comment on column tests.trans_complaint.title is 'タイトル';
comment on column tests.trans_complaint.detail is '内容';
comment on column tests.trans_complaint.reporter is '報告者';
comment on column tests.trans_complaint.recipient is '受領者';
comment on column tests.trans_complaint.approved is '受領承認';
comment on column tests.trans_complaint.remarks is '備考';
comment on column tests.trans_complaint.update_at is '更新日時';
comment on column tests.trans_complaint.update_user_id is '更新者id';
comment on column tests.trans_complaint.update_user_history_id is '更新者履歴id';
comment on column tests.trans_complaint.remove is '削除';
comment on table tests.trans_inspect_imp_file is '点検整備結果ファイル';
comment on column tests.trans_inspect_imp_file.trans_inspect_imp_file_id is '点検整備結果ファイルid';
comment on column tests.trans_inspect_imp_file.trans_inspect_record_id is '点検整備実施id';
comment on column tests.trans_inspect_imp_file.inspect_sch_id is '点検整備予定詳細ID';
comment on column tests.trans_inspect_imp_file.trans_file_id is 'ファイルID';
comment on column tests.trans_inspect_imp_file.name is '点検整備結果名';
comment on column tests.trans_inspect_imp_file.class is '区分';
comment on column tests.trans_inspect_imp_file.trans_file_reminder_id is 'リマインダid';
comment on column tests.trans_inspect_imp_file.remarks is '備考';
comment on column tests.trans_inspect_imp_file.update_at is '更新日時';
comment on column tests.trans_inspect_imp_file.update_user_id is '更新者id';
comment on column tests.trans_inspect_imp_file.update_user_history_id is '更新者履歴id';
comment on column tests.trans_inspect_imp_file.remove is '削除';
comment on table tests.trans_inspect_record is '点検整備実施';
comment on column tests.trans_inspect_record.trans_inspect_record_id is '点検整備実施id';
comment on column tests.trans_inspect_record.trans_inspect_sch_detail_id is '点検整備予定詳細id';
comment on column tests.trans_inspect_record.implement_start_date is '実施開始日';
comment on column tests.trans_inspect_record.implement_stop_date is '実施終了日';
comment on column tests.trans_inspect_record.result is '結果';
comment on column tests.trans_inspect_record.result_state is '結果ステータス';
comment on column tests.trans_inspect_record.note is '特記';
comment on column tests.trans_inspect_record.stakeholder_id is '利害関係者';
comment on column tests.trans_inspect_record.remarks is '備考';
comment on column tests.trans_inspect_record.update_at is '更新日時';
comment on column tests.trans_inspect_record.update_user_id is '更新者id';
comment on column tests.trans_inspect_record.update_user_history_id is '更新者履歴id';
comment on column tests.trans_inspect_record.remove is '削除';
comment on table tests.trans_inspect_sch_detail is '点検整備予定詳細';
comment on column tests.trans_inspect_sch_detail.trans_inspect_sch_detail_id is '点検整備予定詳細id';
comment on column tests.trans_inspect_sch_detail.trans_inspect_sch_id is '点検整備予定id';
comment on column tests.trans_inspect_sch_detail.trans_purchase_detail_id is '発注明細id';
comment on column tests.trans_inspect_sch_detail.scheduled_start_date is '開始予定日';
comment on column tests.trans_inspect_sch_detail.scheduled_end_date is '終了予定日';
comment on column tests.trans_inspect_sch_detail.history_id is '外部供給者履歴id';
comment on column tests.trans_inspect_sch_detail.mstr_stakeholder_id is '外部供給者id';
comment on column tests.trans_inspect_sch_detail.remarks is '備考';
comment on column tests.trans_inspect_sch_detail.update_at is '更新日時';
comment on column tests.trans_inspect_sch_detail.update_user_id is '更新者id';
comment on column tests.trans_inspect_sch_detail.update_user_history_id is '更新者履歴id';
comment on column tests.trans_inspect_sch_detail.remove is '削除';
comment on table tests.trans_inspect_sch is '点検整備予定';
comment on column tests.trans_inspect_sch.trans_inspect_sch_id is '点検整備予定id';
comment on column tests.trans_inspect_sch.code is 'コード';
comment on column tests.trans_inspect_sch.name is '名前';
comment on column tests.trans_inspect_sch.kana is 'カナ';
comment on column tests.trans_inspect_sch.nickname is '略称';
comment on column tests.trans_inspect_sch.note is '特記';
comment on column tests.trans_inspect_sch.history_id is '設備履歴id';
comment on column tests.trans_inspect_sch.mstr_equipment_id is '設備id';
comment on column tests.trans_inspect_sch.remarks is '備考';
comment on column tests.trans_inspect_sch.update_at is '更新日時';
comment on column tests.trans_inspect_sch.update_user_id is '更新者id';
comment on column tests.trans_inspect_sch.update_user_history_id is '更新者履歴id';
comment on column tests.trans_inspect_sch.remove is '削除';
comment on table tests.mstr_inspection is '点検整備マスタ';
comment on column tests.mstr_inspection.mstr_inspection_id is '点検整備マスタID';
comment on column tests.mstr_inspection.mstr_task_id is '工程ID';
comment on column tests.mstr_inspection.mstr_inspection_operation_id is '点検整備運用マスタID';
comment on column tests.mstr_inspection.code is '点検コード';
comment on column tests.mstr_inspection.class is '点検区分';
comment on column tests.mstr_inspection.base_date is '標準起算日';
comment on column tests.mstr_inspection.time_interval is '標準間隔';
comment on column tests.mstr_inspection.stakeholder is '外部';
comment on column tests.mstr_inspection.inspection_formula_id is '点検整備項目id';
comment on column tests.mstr_inspection.revision is 'レビジョン';
comment on column tests.mstr_inspection.item_history_id is '点検整備サービス品目履歴id';
comment on column tests.mstr_inspection.mstr_item_id is '点検整備サービス品目id';
comment on column tests.mstr_inspection.remarks is '備考';
comment on column tests.mstr_inspection.update_at is '更新日時';
comment on column tests.mstr_inspection.update_user_id is '更新者id';
comment on column tests.mstr_inspection.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_inspection.remove is '削除';
comment on table tests.info_assign is '割当情報';
comment on column tests.info_assign.info_assign_id is 'アサインID';
comment on column tests.info_assign.info_staff_id is '担当者id';
comment on column tests.info_assign.info_role_id is '役割ID';
comment on column tests.info_assign.info_department_id is '部署id';
comment on column tests.info_assign.enable is '有効';
comment on column tests.info_assign.priority is '優先順位';
comment on column tests.info_assign.revision is 'レビジョン';
comment on column tests.info_assign.remarks is '備考';
comment on column tests.info_assign.update_at is '更新日時';
comment on column tests.info_assign.update_user_id is '更新者id';
comment on column tests.info_assign.update_user_history_id is '更新者履歴id';
comment on column tests.info_assign.remove is '削除';
comment on table tests.info_staff_access_permission is '担当者アクセスパス許可情報';
comment on column tests.info_staff_access_permission.info_staff_access_permission_id is '担当者アクセスパス許可情報ID';
comment on column tests.info_staff_access_permission.info_access_path_id is 'アクセスパスID';
comment on column tests.info_staff_access_permission.info_staff_id is '担当者id';
comment on column tests.info_staff_access_permission.permit is 'パーミット';
comment on column tests.info_staff_access_permission.revision is 'レビジョン';
comment on column tests.info_staff_access_permission.remarks is '備考';
comment on column tests.info_staff_access_permission.update_at is '更新日時';
comment on column tests.info_staff_access_permission.update_user_id is '更新者id';
comment on column tests.info_staff_access_permission.update_user_history_id is '更新者履歴id';
comment on column tests.info_staff_access_permission.remove is '削除';
comment on table tests.info_app is 'アプリケーション情報';
comment on column tests.info_app.info_app_id is 'アプリケーションid';
comment on column tests.info_app.info_company_id is '会社id';
comment on column tests.info_app.name is 'アプリケーション名';
comment on column tests.info_app.revision is 'レビジョン';
comment on column tests.info_app.remarks is '備考';
comment on column tests.info_app.update_at is '更新日時';
comment on column tests.info_app.update_user_id is '更新者id';
comment on column tests.info_app.update_user_history_id is '更新者履歴id';
comment on column tests.info_app.remove is '削除';
comment on table tests.info_access_path is 'アクセスパス';
comment on column tests.info_access_path.info_access_path_id is 'アクセスパスID';
comment on column tests.info_access_path.info_app_id is 'アプリケーションid';
comment on column tests.info_access_path.name is 'アクセスパス名';
comment on column tests.info_access_path.usecase_path1 is 'ユースケースパス1';
comment on column tests.info_access_path.usecase_path2 is 'ユースケースパス2';
comment on column tests.info_access_path.usecase_path3 is 'ユースケースパス3';
comment on column tests.info_access_path.classes is 'ページクラス';
comment on column tests.info_access_path.sequence is '順';
comment on column tests.info_access_path.revision is 'レビジョン';
comment on column tests.info_access_path.remarks is '備考';
comment on column tests.info_access_path.update_at is '更新日時';
comment on column tests.info_access_path.update_user_id is '更新者id';
comment on column tests.info_access_path.update_user_history_id is '更新者履歴id';
comment on column tests.info_access_path.remove is '削除';
comment on table tests.trans_inventory_request is '引き当て予約';
comment on column tests.trans_inventory_request.trans_inventory_request_id is '引当予約id';
comment on column tests.trans_inventory_request.register_at is '引当予約日';
comment on column tests.trans_inventory_request.register_plan_at is '引当予定日';
comment on column tests.trans_inventory_request.trans_purchase_rez_id is '購買引き当てID';
comment on column tests.trans_inventory_request.trans_product_rez_id is '生産引き当てID';
comment on column tests.trans_inventory_request.quantity is '引当数量';
comment on column tests.trans_inventory_request.remarks is '備考';
comment on column tests.trans_inventory_request.update_at is '更新日時';
comment on column tests.trans_inventory_request.update_user_id is '更新者id';
comment on column tests.trans_inventory_request.update_user_history_id is '更新者履歴id';
comment on column tests.trans_inventory_request.remove is '削除';
comment on table tests.trans_product_rez is '生産引き当て予約';
comment on column tests.trans_product_rez.trans_product_rez_id is '生産引当id';
comment on column tests.trans_product_rez.trans_product_detail_id is '生産計画詳細id';
comment on column tests.trans_product_rez.trans_product_id is '生産計画ID';
comment on column tests.trans_product_rez.register_at is '引当予約日';
comment on column tests.trans_product_rez.register_plan_at is '引当予定日';
comment on column tests.trans_product_rez.quantity is '引当数量';
comment on column tests.trans_product_rez.staff_history_id is '作業担当者履歴id';
comment on column tests.trans_product_rez.info_staff_id is '作業担当者id';
comment on column tests.trans_product_rez.remarks is '備考';
comment on column tests.trans_product_rez.update_at is '更新日時';
comment on column tests.trans_product_rez.update_user_id is '更新者id';
comment on column tests.trans_product_rez.update_user_history_id is '更新者履歴id';
comment on column tests.trans_product_rez.remove is '削除';
comment on table tests.trans_work_record_visiter is '作業実績ビジター';
comment on column tests.trans_work_record_visiter.trans_work_record_visiter_id is '棚ビジターid';
comment on column tests.trans_work_record_visiter.trans_work_record_id is '作業実績ID';
comment on column tests.trans_work_record_visiter.quantity is '数量';
comment on column tests.trans_work_record_visiter.remarks is '備考';
comment on column tests.trans_work_record_visiter.update_at is '更新日時';
comment on column tests.trans_work_record_visiter.update_user_id is '更新者id';
comment on column tests.trans_work_record_visiter.update_user_history_id is '更新者履歴id';
comment on column tests.trans_work_record_visiter.remove is '削除';
comment on table tests.trans_purchase_rec_visiter is '受入実績ビジター';
comment on column tests.trans_purchase_rec_visiter.trans_purchase_rec_visiter_id is '棚ビジターid';
comment on column tests.trans_purchase_rec_visiter.trans_purchase_rec_id is '受入実績ID';
comment on column tests.trans_purchase_rec_visiter.quantity is '数量';
comment on column tests.trans_purchase_rec_visiter.remarks is '備考';
comment on column tests.trans_purchase_rec_visiter.update_at is '更新日時';
comment on column tests.trans_purchase_rec_visiter.update_user_id is '更新者id';
comment on column tests.trans_purchase_rec_visiter.update_user_history_id is '更新者履歴id';
comment on column tests.trans_purchase_rec_visiter.remove is '削除';
comment on table tests.trans_visiter is '棚ビジター';
comment on column tests.trans_visiter.trans_visiter_id is '棚ビジターid';
comment on column tests.trans_visiter.trans_container_id is 'コンテナid';
comment on column tests.trans_visiter.status is '状態';
comment on column tests.trans_visiter.quantity is '数量';
comment on column tests.trans_visiter.remarks is '備考';
comment on column tests.trans_visiter.update_at is '更新日時';
comment on column tests.trans_visiter.update_user_id is '更新者id';
comment on column tests.trans_visiter.update_user_history_id is '更新者履歴id';
comment on column tests.trans_visiter.remove is '削除';
comment on table tests.mstr_item_size is '品目大きさマスタ';
comment on column tests.mstr_item_size.mstr_item_size_id is '大きさid';
comment on column tests.mstr_item_size.mstr_item_id is '品目id';
comment on column tests.mstr_item_size.mstr_item_size_kind_id is '品目大きさ区分id';
comment on column tests.mstr_item_size.size_value is '大きさ';
comment on column tests.mstr_item_size.detail is '詳細';
comment on column tests.mstr_item_size.revision is 'レビジョン';
comment on column tests.mstr_item_size.remarks is '備考';
comment on column tests.mstr_item_size.update_at is '更新日時';
comment on column tests.mstr_item_size.update_user_id is '更新者id';
comment on column tests.mstr_item_size.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_item_size.remove is '削除';
comment on table tests.trans_file is 'ファイル';
comment on column tests.trans_file.trans_file_id is 'ファイルid';
comment on column tests.trans_file.binary_data is 'バイナリ';
comment on column tests.trans_file.name is 'ファイル名';
comment on column tests.trans_file.number is '番号';
comment on column tests.trans_file.title is 'タイトル';
comment on column tests.trans_file.detail is '詳細';
comment on column tests.trans_file.remarks is '備考';
comment on column tests.trans_file.update_at is '更新日時';
comment on column tests.trans_file.update_user_id is '更新者id';
comment on column tests.trans_file.update_user_history_id is '更新者履歴id';
comment on column tests.trans_file.remove is '削除';
comment on table tests.mstr_operation_task is '工程運用課題';
comment on column tests.mstr_operation_task.mstr_operation_task_id is '工程運用課題id';
comment on column tests.mstr_operation_task.mstr_operation_id is '工程運用マスタID';
comment on column tests.mstr_operation_task.mstr_task_id is '工程id';
comment on column tests.mstr_operation_task.sequence is '順';
comment on column tests.mstr_operation_task.control_code is '管理コード';
comment on column tests.mstr_operation_task.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_operation_task.detail is '詳細';
comment on column tests.mstr_operation_task.revision is 'レビジョン';
comment on column tests.mstr_operation_task.remarks is '備考';
comment on column tests.mstr_operation_task.update_at is '更新日時';
comment on column tests.mstr_operation_task.update_user_id is '更新者id';
comment on column tests.mstr_operation_task.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_operation_task.remove is '削除';
comment on table tests.mstr_operation is '工程運用マスタ';
comment on column tests.mstr_operation.mstr_operation_id is '工程運用マスタID';
comment on column tests.mstr_operation.name is '名前';
comment on column tests.mstr_operation.control_code is '管理コード';
comment on column tests.mstr_operation.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_operation.detail is '詳細';
comment on column tests.mstr_operation.revision is 'レビジョン';
comment on column tests.mstr_operation.remarks is '備考';
comment on column tests.mstr_operation.update_at is '更新日時';
comment on column tests.mstr_operation.update_user_id is '更新者id';
comment on column tests.mstr_operation.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_operation.remove is '削除';
comment on table tests.trans_convey is '受払実績';
comment on column tests.trans_convey.trans_convey_id is '受払id';
comment on column tests.trans_convey.trans_visiter_id is '棚ビジターID';
comment on column tests.trans_convey.receive is '受入';
comment on column tests.trans_convey.convey_at is '受払日時';
comment on column tests.trans_convey.quantity is '受払数量';
comment on column tests.trans_convey.history_id is '場所履歴id';
comment on column tests.trans_convey.mstr_location_id is '場所id';
comment on column tests.trans_convey.staff_history_id is '作業担当者履歴id';
comment on column tests.trans_convey.info_staff_id is '作業担当者id';
comment on column tests.trans_convey.remarks is '備考';
comment on column tests.trans_convey.update_at is '更新日時';
comment on column tests.trans_convey.update_user_id is '更新者id';
comment on column tests.trans_convey.update_user_history_id is '更新者履歴id';
comment on column tests.trans_convey.remove is '削除';
comment on table tests.trans_work_record_certificate is '作業成績書';
comment on column tests.trans_work_record_certificate.trans_work_record_certificate_id is '作業実績id';
comment on column tests.trans_work_record_certificate.trans_certificate_id is '成績書ID';
comment on column tests.trans_work_record_certificate.remarks is '備考';
comment on column tests.trans_work_record_certificate.update_at is '更新日時';
comment on column tests.trans_work_record_certificate.update_user_id is '更新者id';
comment on column tests.trans_work_record_certificate.update_user_history_id is '更新者履歴id';
comment on column tests.trans_work_record_certificate.remove is '削除';
comment on table tests.trans_certificate is '成績書';
comment on column tests.trans_certificate.trans_certificate_id is '成績書id';
comment on column tests.trans_certificate.serial is 'シリアル番号';
comment on column tests.trans_certificate.name is '成績署名';
comment on column tests.trans_certificate.class is '区分';
comment on column tests.trans_certificate.trans_file_id is 'ファイルID';
comment on column tests.trans_certificate.remarks is '備考';
comment on column tests.trans_certificate.update_at is '更新日時';
comment on column tests.trans_certificate.update_user_id is '更新者id';
comment on column tests.trans_certificate.update_user_history_id is '更新者履歴id';
comment on column tests.trans_certificate.remove is '削除';
comment on table tests.trans_purchase_rec is '受入実績';
comment on column tests.trans_purchase_rec.trans_purchase_rec_id is '受入実績id';
comment on column tests.trans_purchase_rec.trans_purchase_detail_id is '発注明細ID';
comment on column tests.trans_purchase_rec.receive_at is '受入日時';
comment on column tests.trans_purchase_rec.quantity is '数量';
comment on column tests.trans_purchase_rec.remarks is '備考';
comment on column tests.trans_purchase_rec.update_at is '更新日時';
comment on column tests.trans_purchase_rec.update_user_id is '更新者id';
comment on column tests.trans_purchase_rec.update_user_history_id is '更新者履歴id';
comment on column tests.trans_purchase_rec.remove is '削除';
comment on table tests.trans_purchase_certification is '発注成績書';
comment on column tests.trans_purchase_certification.trans_purchase_certification_id is '発注成績書id';
comment on column tests.trans_purchase_certification.trans_purchase_rec_id is '受入実績ID';
comment on column tests.trans_purchase_certification.trans_purchase_detail_id is '発注明細';
comment on column tests.trans_purchase_certification.trans_certificate_id is '成績書ID';
comment on column tests.trans_purchase_certification.remarks is '備考';
comment on column tests.trans_purchase_certification.update_at is '更新日時';
comment on column tests.trans_purchase_certification.update_user_id is '更新者id';
comment on column tests.trans_purchase_certification.update_user_history_id is '更新者履歴id';
comment on column tests.trans_purchase_certification.remove is '削除';
comment on table tests.trans_purchase_rez is '購買引き当て予約';
comment on column tests.trans_purchase_rez.trans_purchase_rez_id is '購買引当予約id';
comment on column tests.trans_purchase_rez.trans_purchase_id is '発注ID';
comment on column tests.trans_purchase_rez.trans_purchase_detail_id is '発注明細ID';
comment on column tests.trans_purchase_rez.quantity is '引当数量';
comment on column tests.trans_purchase_rez.remarks is '備考';
comment on column tests.trans_purchase_rez.update_at is '更新日時';
comment on column tests.trans_purchase_rez.update_user_id is '更新者id';
comment on column tests.trans_purchase_rez.update_user_history_id is '更新者履歴id';
comment on column tests.trans_purchase_rez.remove is '削除';
comment on table tests.trans_purchase_detail is '発注明細';
comment on column tests.trans_purchase_detail.trans_purchase_detail_id is '発注明細id';
comment on column tests.trans_purchase_detail.trans_purchase_id is '発注ID';
comment on column tests.trans_purchase_detail.trans_resorce_plan_id is '資材計画ID';
comment on column tests.trans_purchase_detail.restocking_purchase is '在庫発注';
comment on column tests.trans_purchase_detail.quantity is '数量';
comment on column tests.trans_purchase_detail.period is '納期';
comment on column tests.trans_purchase_detail.history_id is '品目履歴id';
comment on column tests.trans_purchase_detail.mstr_item_id is '品目id';
comment on column tests.trans_purchase_detail.remarks is '備考';
comment on column tests.trans_purchase_detail.update_at is '更新日時';
comment on column tests.trans_purchase_detail.update_user_id is '更新者id';
comment on column tests.trans_purchase_detail.update_user_history_id is '更新者履歴id';
comment on column tests.trans_purchase_detail.remove is '削除';
comment on table tests.trans_order_detail is '受注明細';
comment on column tests.trans_order_detail.trans_order_detail_id is '受注明細id';
comment on column tests.trans_order_detail.trans_order_id is '受注ID';
comment on column tests.trans_order_detail.quantity is '数量';
comment on column tests.trans_order_detail.cost is '単価';
comment on column tests.trans_order_detail.history_mstr_item_id is '品目履歴id';
comment on column tests.trans_order_detail.remarks is '備考';
comment on column tests.trans_order_detail.update_at is '更新日時';
comment on column tests.trans_order_detail.update_user_id is '更新者id';
comment on column tests.trans_order_detail.update_user_history_id is '更新者履歴id';
comment on column tests.trans_order_detail.remove is '削除';
comment on table tests.trans_shipping_record is '出荷実績';
comment on column tests.trans_shipping_record.trans_shipping_detail_id is '出荷明細id';
comment on column tests.trans_shipping_record.trans_shipping_id is '出荷ID';
comment on column tests.trans_shipping_record.trans_order_id is '受注ID';
comment on column tests.trans_shipping_record.trans_order_detail_id is '受注明細ID';
comment on column tests.trans_shipping_record.shpping_date is '出荷日時';
comment on column tests.trans_shipping_record.shipping_quantity is '出荷数量';
comment on column tests.trans_shipping_record.remarks is '備考';
comment on column tests.trans_shipping_record.update_at is '更新日時';
comment on column tests.trans_shipping_record.update_user_id is '更新者id';
comment on column tests.trans_shipping_record.update_user_history_id is '更新者履歴id';
comment on column tests.trans_shipping_record.remove is '削除';
comment on table tests.trans_ship_order is '出荷オーダー';
comment on column tests.trans_ship_order.trans_shipping_id is '出荷id';
comment on column tests.trans_ship_order.trans_order_id is '受注id';
comment on column tests.trans_ship_order.edtimated_shipping_date is '出荷予定日';
comment on column tests.trans_ship_order.code is '出荷オーダーコード';
comment on column tests.trans_ship_order.estimated_arrival_date is '到着予定日';
comment on column tests.trans_ship_order.history_mstr_stakeholder_id is '履歴利害関係者id';
comment on column tests.trans_ship_order.remarks is '備考';
comment on column tests.trans_ship_order.update_at is '更新日時';
comment on column tests.trans_ship_order.update_user_id is '更新者id';
comment on column tests.trans_ship_order.update_user_history_id is '更新者履歴id';
comment on column tests.trans_ship_order.remove is '削除';
comment on table tests.trans_work_record is '作業実績';
comment on column tests.trans_work_record.trans_work_record_id is '作業実績id';
comment on column tests.trans_work_record.trans_product_detail_id is '生産計画詳細id';
comment on column tests.trans_work_record.trans_product_id is '生産計画ID';
comment on column tests.trans_work_record.nth_time is '回数';
comment on column tests.trans_work_record.start_at is '開始';
comment on column tests.trans_work_record.stop_at is '終了';
comment on column tests.trans_work_record.qty is '作業数量';
comment on column tests.trans_work_record.staff_history_id is '作業担当者履歴id';
comment on column tests.trans_work_record.info_staff_id is '作業担当者id';
comment on column tests.trans_work_record.equipment_history_id is '設備履歴id';
comment on column tests.trans_work_record.mstr_equipment_id is '設備id';
comment on column tests.trans_work_record.remarks is '備考';
comment on column tests.trans_work_record.update_at is '更新日時';
comment on column tests.trans_work_record.update_user_id is '更新者id';
comment on column tests.trans_work_record.update_user_history_id is '更新者履歴id';
comment on column tests.trans_work_record.remove is '削除';
comment on table tests.trans_inventory_apply is '引き当て';
comment on column tests.trans_inventory_apply.trans_inventory_apply_id is '引当id';
comment on column tests.trans_inventory_apply.register_at is '引当日';
comment on column tests.trans_inventory_apply.trans_inventory_rez_id is '予約ID';
comment on column tests.trans_inventory_apply.convey_id is '受払実績ID';
comment on column tests.trans_inventory_apply.staff_history_id is '作業担当履歴id';
comment on column tests.trans_inventory_apply.info_staff_id is '作業担当者id';
comment on column tests.trans_inventory_apply.remarks is '備考';
comment on column tests.trans_inventory_apply.update_at is '更新日時';
comment on column tests.trans_inventory_apply.update_user_id is '更新者id';
comment on column tests.trans_inventory_apply.update_user_history_id is '更新者履歴id';
comment on column tests.trans_inventory_apply.remove is '削除';
comment on table tests.trans_product_detail is '生産計画明細';
comment on column tests.trans_product_detail.trans_product_detail_id is '生産計画詳細id';
comment on column tests.trans_product_detail.trans_product_id is '生産計画ID';
comment on column tests.trans_product_detail.mstr_task_id is '工程ID';
comment on column tests.trans_product_detail.interval_plan is '予定作業時間';
comment on column tests.trans_product_detail.start_at is '開始予定';
comment on column tests.trans_product_detail.completion_at is '完了予定';
comment on column tests.trans_product_detail.remarks is '備考';
comment on column tests.trans_product_detail.update_at is '更新日時';
comment on column tests.trans_product_detail.update_user_id is '更新者id';
comment on column tests.trans_product_detail.update_user_history_id is '更新者履歴id';
comment on column tests.trans_product_detail.remove is '削除';
comment on table tests.trans_product is '生産計画';
comment on column tests.trans_product.trans_product_id is '生産計画id';
comment on column tests.trans_product.trans_resorce_plan_id is '資材計画ID';
comment on column tests.trans_product.deadline is '完了期限';
comment on column tests.trans_product.remarks is '備考';
comment on column tests.trans_product.update_at is '更新日時';
comment on column tests.trans_product.update_user_id is '更新者id';
comment on column tests.trans_product.update_user_history_id is '更新者履歴id';
comment on column tests.trans_product.remove is '削除';
comment on table tests.trans_resorce_plan is '資材計画';
comment on column tests.trans_resorce_plan.trans_resorce_plan_id is '資材計画id';
comment on column tests.trans_resorce_plan.trans_order_detail_id is '受注明細ID';
comment on column tests.trans_resorce_plan.trans_unrecognized_detail_id is '非計上明細id';
comment on column tests.trans_resorce_plan.register_at is '登録日時';
comment on column tests.trans_resorce_plan.quantity is '数量';
comment on column tests.trans_resorce_plan.inventory_resavation is '在庫数量';
comment on column tests.trans_resorce_plan.deadline is '期限';
comment on column tests.trans_resorce_plan.history_id is '品目履歴id';
comment on column tests.trans_resorce_plan.mstr_item_id is '品目id';
comment on column tests.trans_resorce_plan.remarks is '備考';
comment on column tests.trans_resorce_plan.update_at is '更新日時';
comment on column tests.trans_resorce_plan.update_user_id is '更新者id';
comment on column tests.trans_resorce_plan.update_user_history_id is '更新者履歴id';
comment on column tests.trans_resorce_plan.remove is '削除';
comment on table tests.trans_purchase is '発注';
comment on column tests.trans_purchase.trans_purchase_id is '発注id';
comment on column tests.trans_purchase.mstr_stakeholder_id is '発注先id';
comment on column tests.trans_purchase.supplier_history_id is '発注先履歴id';
comment on column tests.trans_purchase.contact_history_id is '発注先窓口履歴id';
comment on column tests.trans_purchase.mstr_stakeholder_contact_id is '発注先窓口id';
comment on column tests.trans_purchase.purchase_ctrl_1 is '発注管理コード1';
comment on column tests.trans_purchase.purchase_ctrl_2 is '発注管理コード2';
comment on column tests.trans_purchase.purchase_ctrl_3 is '発注管理コード3';
comment on column tests.trans_purchase.register_at is '登録日';
comment on column tests.trans_purchase.purchase_order_date is '発注日';
comment on column tests.trans_purchase.deadline is '発注期限';
comment on column tests.trans_purchase.remarks is '備考';
comment on column tests.trans_purchase.update_at is '更新日時';
comment on column tests.trans_purchase.update_user_id is '更新者id';
comment on column tests.trans_purchase.update_user_history_id is '更新者履歴id';
comment on column tests.trans_purchase.remove is '削除';
comment on table tests.trans_order is '受注';
comment on column tests.trans_order.trans_order_id is '受注id';
comment on column tests.trans_order.order_number is '注文番号';
comment on column tests.trans_order.customer_order_number is '顧客発注番号';
comment on column tests.trans_order.customer_history_id is '顧客履歴id';
comment on column tests.trans_order.contact_history_id is '顧客窓口履歴id';
comment on column tests.trans_order.control_code_1 is '管理コード1';
comment on column tests.trans_order.control_code_2 is '管理コード2';
comment on column tests.trans_order.control_code_3 is '管理コード3';
comment on column tests.trans_order.order_processing_date is '受注日';
comment on column tests.trans_order.deadline is '納期';
comment on column tests.trans_order.expected_completion_date is '完了予定日';
comment on column tests.trans_order.planned_shipping_date is '出荷予定日';
comment on column tests.trans_order.remarks is '備考';
comment on column tests.trans_order.update_at is '更新日時';
comment on column tests.trans_order.update_user_id is '更新者id';
comment on column tests.trans_order.update_user_history_id is '更新者履歴id';
comment on column tests.trans_order.remove is '削除';
comment on table tests.mstr_item_operation_task is '品目工程運用課題マスタ';
comment on column tests.mstr_item_operation_task.mstr_item_operation_task_id is '品目工程運用課題マスタID';
comment on column tests.mstr_item_operation_task.mstr_item_id is '品目id';
comment on column tests.mstr_item_operation_task.mstr_operation_task_id is '工程運用課題id';
comment on column tests.mstr_item_operation_task.mstr_operation_id is '工程運用マスタID';
comment on column tests.mstr_item_operation_task.mstr_task_id is '工程ID';
comment on column tests.mstr_item_operation_task.sequence is '順';
comment on column tests.mstr_item_operation_task.mstr_item_operation_id is '品目工程運用マスタID';
comment on column tests.mstr_item_operation_task.default_interval is '標準時間';
comment on column tests.mstr_item_operation_task.revision is 'レビジョン';
comment on column tests.mstr_item_operation_task.remarks is '備考';
comment on column tests.mstr_item_operation_task.update_at is '更新日時';
comment on column tests.mstr_item_operation_task.update_user_id is '更新者id';
comment on column tests.mstr_item_operation_task.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_item_operation_task.remove is '削除';
comment on table tests.mstr_item_tree is '品目体系マスタ';
comment on column tests.mstr_item_tree.mstr_item_tree_id is '品目体系id';
comment on column tests.mstr_item_tree.mstr_item_id is '自品目ID';
comment on column tests.mstr_item_tree.parent_mstr_item_id is '親品目ID';
comment on column tests.mstr_item_tree.code is '品目体系コード';
comment on column tests.mstr_item_tree.control_code is '管理コード';
comment on column tests.mstr_item_tree.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_item_tree.quantity is '数量';
comment on column tests.mstr_item_tree.detail is '詳細';
comment on column tests.mstr_item_tree.revision is 'レビジョン';
comment on column tests.mstr_item_tree.remarks is '備考';
comment on column tests.mstr_item_tree.update_at is '更新日時';
comment on column tests.mstr_item_tree.update_user_id is '更新者id';
comment on column tests.mstr_item_tree.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_item_tree.remove is '削除';
comment on table tests.shared_unit is '単位';
comment on column tests.shared_unit.shared_unit_id is '単位id';
comment on column tests.shared_unit.shared_appellations_id is '呼称セットid';
comment on column tests.shared_unit.description is '詳細';
comment on column tests.shared_unit.revision is 'レビジョン';
comment on column tests.shared_unit.remarks is '備考';
comment on column tests.shared_unit.update_at is '更新日時';
comment on column tests.shared_unit.update_user_id is '更新者id';
comment on column tests.shared_unit.update_user_history_id is '更新者履歴id';
comment on column tests.shared_unit.remove is '削除';
comment on table tests.mstr_item is '品目マスタ';
comment on column tests.mstr_item.mstr_item_id is '品目id';
comment on column tests.mstr_item.mstr_item_kind_id is '品目種類id';
comment on column tests.mstr_item.code is '品目コード';
comment on column tests.mstr_item.identification is '識別コード';
comment on column tests.mstr_item.control_code is '管理コード';
comment on column tests.mstr_item.mstr_manufacturer_id is '製造元id';
comment on column tests.mstr_item.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_item.label_code is '表示コード';
comment on column tests.mstr_item.description is '詳細';
comment on column tests.mstr_item.shared_unit_id is '単位id';
comment on column tests.mstr_item.increment is '刻み';
comment on column tests.mstr_item.lot is 'ロット';
comment on column tests.mstr_item.stock_quantity is '最少在庫数量';
comment on column tests.mstr_item.revision is 'レビジョン';
comment on column tests.mstr_item.remarks is '備考';
comment on column tests.mstr_item.update_at is '更新日時';
comment on column tests.mstr_item.update_user_id is '更新者id';
comment on column tests.mstr_item.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_item.remove is '削除';
comment on table tests.mstr_task_tree is '工程体系マスタ';
comment on column tests.mstr_task_tree.mstr_task_tree_id is '工程体系id';
comment on column tests.mstr_task_tree.mstr_task_id is '自工程マスタid';
comment on column tests.mstr_task_tree.parent_mstr_task_id is '親工程マスタid';
comment on column tests.mstr_task_tree.code is '工程体系コード';
comment on column tests.mstr_task_tree.control_code is '管理コード';
comment on column tests.mstr_task_tree.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_task_tree.detail is '詳細';
comment on column tests.mstr_task_tree.revision is 'レビジョン';
comment on column tests.mstr_task_tree.remarks is '備考';
comment on column tests.mstr_task_tree.update_at is '更新日時';
comment on column tests.mstr_task_tree.update_user_id is '更新者id';
comment on column tests.mstr_task_tree.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_task_tree.remove is '削除';
comment on table tests.mstr_task is '工程マスタ';
comment on column tests.mstr_task.mstr_task_id is '工程id';
comment on column tests.mstr_task.mstr_task_group_id is '工程グループid';
comment on column tests.mstr_task.code is '工程コード';
comment on column tests.mstr_task.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_task.detail is '詳細';
comment on column tests.mstr_task.class is '区分';
comment on column tests.mstr_task.default_time is '標準時間';
comment on column tests.mstr_task.revision is 'レビジョン';
comment on column tests.mstr_task.remarks is '備考';
comment on column tests.mstr_task.update_at is '更新日時';
comment on column tests.mstr_task.update_user_id is '更新者id';
comment on column tests.mstr_task.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_task.remove is '削除';
comment on table tests.mstr_location is '場所マスタ';
comment on column tests.mstr_location.mstr_location_id is '場所id';
comment on column tests.mstr_location.code is '場所コード';
comment on column tests.mstr_location.info_department_id is '組織情報id';
comment on column tests.mstr_location.control_code is '管理コード';
comment on column tests.mstr_location.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_location.info_address_id is '住所id';
comment on column tests.mstr_location.available is '使用';
comment on column tests.mstr_location.revision is 'レビジョン';
comment on column tests.mstr_location.remarks is '備考';
comment on column tests.mstr_location.update_at is '更新日時';
comment on column tests.mstr_location.update_user_id is '更新者id';
comment on column tests.mstr_location.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_location.remove is '削除';
comment on table tests.mstr_equipment is '設備マスタ';
comment on column tests.mstr_equipment.mstr_equipment_id is '設備id';
comment on column tests.mstr_equipment.mstr_item_id is '品目id';
comment on column tests.mstr_equipment.mstr_equipment_category_id is '設備分類id';
comment on column tests.mstr_equipment.code is '設備コード';
comment on column tests.mstr_equipment.control_code is '管理コード';
comment on column tests.mstr_equipment.label_code is '表示コード';
comment on column tests.mstr_equipment.mstr_location_id is '場所ID';
comment on column tests.mstr_equipment.revision is 'レビジョン';
comment on column tests.mstr_equipment.remarks is '備考';
comment on column tests.mstr_equipment.update_at is '更新日時';
comment on column tests.mstr_equipment.update_user_id is '更新者id';
comment on column tests.mstr_equipment.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_equipment.remove is '削除';
comment on table tests.mstr_stakeholder_contact is '利害関係者窓口マスタ';
comment on column tests.mstr_stakeholder_contact.mstr_stakeholder_contact_id is '窓口id';
comment on column tests.mstr_stakeholder_contact.mstr_stakeholder_id is '利害関係者ID';
comment on column tests.mstr_stakeholder_contact.code is '利害関係者コード';
comment on column tests.mstr_stakeholder_contact.office_name is '事業所名';
comment on column tests.mstr_stakeholder_contact.department_name is '部署名';
comment on column tests.mstr_stakeholder_contact.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_stakeholder_contact.private_phone is 'メール';
comment on column tests.mstr_stakeholder_contact.info_address_id is '住所id';
comment on column tests.mstr_stakeholder_contact.mstr_shipping_kind_id is '配送区分id';
comment on column tests.mstr_stakeholder_contact.revision is 'レビジョン';
comment on column tests.mstr_stakeholder_contact.remarks is '備考';
comment on column tests.mstr_stakeholder_contact.update_at is '更新日時';
comment on column tests.mstr_stakeholder_contact.update_user_id is '更新者id';
comment on column tests.mstr_stakeholder_contact.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_stakeholder_contact.remove is '削除';
comment on table tests.mstr_stakeholder is '利害関係者マスタ';
comment on column tests.mstr_stakeholder.mstr_stakeholder_id is '利害関係者id';
comment on column tests.mstr_stakeholder.is_customer is '顧客';
comment on column tests.mstr_stakeholder.is_supplier is '外部供給者';
comment on column tests.mstr_stakeholder.is_logistics is '配送サービサー';
comment on column tests.mstr_stakeholder.code is '利害関係者コード';
comment on column tests.mstr_stakeholder.control_code is '管理コード';
comment on column tests.mstr_stakeholder.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_stakeholder.mail is 'メール';
comment on column tests.mstr_stakeholder.info_address_id is '住所id';
comment on column tests.mstr_stakeholder.mstr_shipping_kind_id is '配送区分id';
comment on column tests.mstr_stakeholder.revision is 'レビジョン';
comment on column tests.mstr_stakeholder.remarks is '備考';
comment on column tests.mstr_stakeholder.update_at is '更新日時';
comment on column tests.mstr_stakeholder.update_user_id is '更新者id';
comment on column tests.mstr_stakeholder.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_stakeholder.remove is '削除';
comment on table tests.mstr_staff_license is '担当者資格マスタ';
comment on column tests.mstr_staff_license.mstr_staff_license_id is '担当者資格id';
comment on column tests.mstr_staff_license.info_staff_id is '担当者id';
comment on column tests.mstr_staff_license.mstr_license_id is '資格ID';
comment on column tests.mstr_staff_license.start_at is '適用開始';
comment on column tests.mstr_staff_license.stop_at is '適用終了';
comment on column tests.mstr_staff_license.abeyance is '停止';
comment on column tests.mstr_staff_license.abeyance_at is '停止日時';
comment on column tests.mstr_staff_license.revocation is '取り消し';
comment on column tests.mstr_staff_license.revocation_at is '取り消し日時';
comment on column tests.mstr_staff_license.revision is 'レビジョン';
comment on column tests.mstr_staff_license.remarks is '備考';
comment on column tests.mstr_staff_license.update_at is '更新日時';
comment on column tests.mstr_staff_license.update_user_id is '更新者id';
comment on column tests.mstr_staff_license.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_staff_license.remove is '削除';
comment on table tests.mstr_staff_capability is '担当者力量マスタ';
comment on column tests.mstr_staff_capability.mstr_staff_capability_id is '担当者力量id';
comment on column tests.mstr_staff_capability.info_staff_id is '担当者ID';
comment on column tests.mstr_staff_capability.mstr_capability_id is '力量ID';
comment on column tests.mstr_staff_capability.value is '値';
comment on column tests.mstr_staff_capability.stop is '停止';
comment on column tests.mstr_staff_capability.revision is 'レビジョン';
comment on column tests.mstr_staff_capability.remarks is '備考';
comment on column tests.mstr_staff_capability.update_at is '更新日時';
comment on column tests.mstr_staff_capability.update_user_id is '更新者id';
comment on column tests.mstr_staff_capability.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_staff_capability.remove is '削除';
comment on table tests.mstr_sign is 'サインマスタ';
comment on column tests.mstr_sign.mstr_sign_id is 'サインid';
comment on column tests.mstr_sign.info_staff_id is '担当者ID';
comment on column tests.mstr_sign.auth_subject_id is 'OICD認証ID';
comment on column tests.mstr_sign.code is 'サインコード';
comment on column tests.mstr_sign.mail is 'メールアドレス';
comment on column tests.mstr_sign.role is '権限';
comment on column tests.mstr_sign.revision is 'レビジョン';
comment on column tests.mstr_sign.remarks is '備考';
comment on column tests.mstr_sign.update_at is '更新日時';
comment on column tests.mstr_sign.update_user_id is '更新者id';
comment on column tests.mstr_sign.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_sign.remove is '削除';
comment on table tests.mstr_license is '資格マスタ';
comment on column tests.mstr_license.mstr_license_id is '資格id';
comment on column tests.mstr_license.code is '資格コード';
comment on column tests.mstr_license.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_license.detail is '詳細';
comment on column tests.mstr_license.public_license is '公的';
comment on column tests.mstr_license.customer_license is '顧客';
comment on column tests.mstr_license.organization_license is '内部';
comment on column tests.mstr_license.update_interval is '更新間隔';
comment on column tests.mstr_license.revision is 'レビジョン';
comment on column tests.mstr_license.remarks is '備考';
comment on column tests.mstr_license.update_at is '更新日時';
comment on column tests.mstr_license.update_user_id is '更新者id';
comment on column tests.mstr_license.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_license.remove is '削除';
comment on table tests.mstr_capability is '力量マスタ';
comment on column tests.mstr_capability.mstr_capability_id is '力量id';
comment on column tests.mstr_capability.code is '力量コード';
comment on column tests.mstr_capability.shared_appellations_id is '呼称セットid';
comment on column tests.mstr_capability.detail is '力量詳細';
comment on column tests.mstr_capability.reference_value is '基準';
comment on column tests.mstr_capability.max is '最大';
comment on column tests.mstr_capability.min is '最小';
comment on column tests.mstr_capability.step is '刻み';
comment on column tests.mstr_capability.revision is 'レビジョン';
comment on column tests.mstr_capability.remarks is '備考';
comment on column tests.mstr_capability.update_at is '更新日時';
comment on column tests.mstr_capability.update_user_id is '更新者id';
comment on column tests.mstr_capability.update_user_history_id is '更新者履歴id';
comment on column tests.mstr_capability.remove is '削除';
comment on table tests.info_staff is '担当者情報';
comment on column tests.info_staff.info_staff_id is '担当者id';
comment on column tests.info_staff.info_company_id is '会社id';
comment on column tests.info_staff.info_office_id is '事業所ID';
comment on column tests.info_staff.code is '担当者コード';
comment on column tests.info_staff.shared_appellations_id is '呼称セットid';
comment on column tests.info_staff.sex is '性別';
comment on column tests.info_staff.phone is '電話';
comment on column tests.info_staff.private_phone is '緊急電話';
comment on column tests.info_staff.revision is 'レビジョン';
comment on column tests.info_staff.remarks is '備考';
comment on column tests.info_staff.update_at is '更新日時';
comment on column tests.info_staff.update_user_id is '更新者id';
comment on column tests.info_staff.update_user_history_id is '更新者履歴id';
comment on column tests.info_staff.remove is '削除';
comment on table tests.info_department is '組織情報';
comment on column tests.info_department.info_department_id is '組織情報id';
comment on column tests.info_department.info_company_id is '会社id';
comment on column tests.info_department.info_office_id is '事業所id';
comment on column tests.info_department.code is '組織コード';
comment on column tests.info_department.shared_appellations_id is '呼称セットid';
comment on column tests.info_department.category1 is '組織区分1';
comment on column tests.info_department.category2 is '組織区分2';
comment on column tests.info_department.category3 is '組織区分3';
comment on column tests.info_department.info_address_id is '住所id';
comment on column tests.info_department.revision is 'レビジョン';
comment on column tests.info_department.remarks is '備考';
comment on column tests.info_department.update_at is '更新日時';
comment on column tests.info_department.update_user_id is '更新者id';
comment on column tests.info_department.update_user_history_id is '更新者履歴id';
comment on column tests.info_department.remove is '削除';
comment on table tests.info_office is '事業所情報';
comment on column tests.info_office.info_office_id is '事業所id';
comment on column tests.info_office.info_company_id is '会社ID';
comment on column tests.info_office.code is '事業所コード';
comment on column tests.info_office.shared_appellations_id is '呼称セットid';
comment on column tests.info_office.info_address_id is '住所id';
comment on column tests.info_office.revision is 'レビジョン';
comment on column tests.info_office.remarks is '備考';
comment on column tests.info_office.update_at is '更新日時';
comment on column tests.info_office.update_user_id is '更新者id';
comment on column tests.info_office.update_user_history_id is '更新者履歴id';
comment on column tests.info_office.remove is '削除';
--202.add table primary key and index
create unique index history_mstr_shipping_kind_PKI
    on tests.history_mstr_shipping_kind(history_id,mstr_shipping_kind_id);
alter table tests.history_mstr_shipping_kind
    add constraint history_mstr_shipping_kind_PKC primary key (history_id,mstr_shipping_kind_id);
create unique index mstr_shipping_kind_PKI
    on tests.mstr_shipping_kind(mstr_shipping_kind_id);
alter table tests.mstr_shipping_kind
    add constraint mstr_shipping_kind_PKC primary key (mstr_shipping_kind_id);
create unique index history_mstr_item_size_kind_PKI
    on tests.history_mstr_item_size_kind(history_id,mstr_item_size_kind_id);
alter table tests.history_mstr_item_size_kind
    add constraint history_mstr_item_size_kind_PKC primary key (history_id,mstr_item_size_kind_id);
create unique index mstr_item_size_kind_PKI
    on tests.mstr_item_size_kind(mstr_item_size_kind_id);
alter table tests.mstr_item_size_kind
    add constraint mstr_item_size_kind_PKC primary key (mstr_item_size_kind_id);
create unique index mstr_item_size_kind_IX1
     on tests.mstr_item_size_kind(code);create unique index history_mstr_item_kind_PKI
    on tests.history_mstr_item_kind(history_id,mstr_item_kind_id);
alter table tests.history_mstr_item_kind
    add constraint history_mstr_item_kind_PKC primary key (history_id,mstr_item_kind_id);
create unique index mstr_item_kind_PKI
    on tests.mstr_item_kind(mstr_item_kind_id);
alter table tests.mstr_item_kind
    add constraint mstr_item_kind_PKC primary key (mstr_item_kind_id);
create unique index history_shared_appellations_PKI
    on tests.history_shared_appellations(history_id,shared_appellations_id);
alter table tests.history_shared_appellations
    add constraint history_shared_appellations_PKC primary key (history_id,shared_appellations_id);
create unique index shared_appellations_PKI
    on tests.shared_appellations(shared_appellations_id);
alter table tests.shared_appellations
    add constraint shared_appellations_PKC primary key (shared_appellations_id);
create unique index shared_appellations_IX1
     on tests.shared_appellations(shared_appellations_id);create unique index history_shared_dictionary_PKI
    on tests.history_shared_dictionary(history_id,shared_dictionary_id);
alter table tests.history_shared_dictionary
    add constraint history_shared_dictionary_PKC primary key (history_id,shared_dictionary_id);
create unique index shared_dictionary_PKI
    on tests.shared_dictionary(shared_dictionary_id);
alter table tests.shared_dictionary
    add constraint shared_dictionary_PKC primary key (shared_dictionary_id);
create unique index history_mstr_equipment_PKI
    on tests.history_mstr_equipment(history_id,mstr_equipment_id,mstr_item_id);
alter table tests.history_mstr_equipment
    add constraint history_mstr_equipment_PKC primary key (history_id,mstr_equipment_id,mstr_item_id);
create unique index history_mstr_equipmen_kind_PKI
    on tests.history_mstr_equipmen_kind(history_id,mstr_equipment_kind_id);
alter table tests.history_mstr_equipmen_kind
    add constraint history_mstr_equipmen_kind_PKC primary key (history_id,mstr_equipment_kind_id);
create unique index mstr_equipment_kind_PKI
    on tests.mstr_equipment_kind(mstr_equipment_kind_id);
alter table tests.mstr_equipment_kind
    add constraint mstr_equipment_kind_PKC primary key (mstr_equipment_kind_id);
create unique index history_info_staff_icon_PKI
    on tests.history_info_staff_icon(history_id,info_role_id);
alter table tests.history_info_staff_icon
    add constraint history_info_staff_icon_PKC primary key (history_id,info_role_id);
create unique index info_staff_icon_PKI
    on tests.info_staff_icon(info_role_id);
alter table tests.info_staff_icon
    add constraint info_staff_icon_PKC primary key (info_role_id);
create unique index history_mstr_item_hcdcs_PKI
    on tests.history_mstr_item_hcdcs(history_id,mstr_item_hcds_id);
alter table tests.history_mstr_item_hcdcs
    add constraint history_mstr_item_hcdcs_PKC primary key (history_id,mstr_item_hcds_id);
create unique index mstr_item_hcdcs_PKI
    on tests.mstr_item_hcdcs(mstr_item_hcds_id);
alter table tests.mstr_item_hcdcs
    add constraint mstr_item_hcdcs_PKC primary key (mstr_item_hcds_id);
create unique index history_mstr_document_content_tree_PKI
    on tests.history_mstr_document_content_tree(history_id,mstr_document_content_tree_id);
alter table tests.history_mstr_document_content_tree
    add constraint history_mstr_document_content_tree_PKC primary key (history_id,mstr_document_content_tree_id);
create unique index hrchy_mstr_document_content_PKI
    on tests.hrchy_mstr_document_content(hrchy_mstr_location_id);
alter table tests.hrchy_mstr_document_content
    add constraint hrchy_mstr_document_content_PKC primary key (hrchy_mstr_location_id);
create unique index history_mstr_document_content_PKI
    on tests.history_mstr_document_content(history_id,mstr_document_content_id,mstr_document_id);
alter table tests.history_mstr_document_content
    add constraint history_mstr_document_content_PKC primary key (history_id,mstr_document_content_id,mstr_document_id);
create unique index mstr_document_content_tree_PKI
    on tests.mstr_document_content_tree(mstr_document_content_tree_id);
alter table tests.mstr_document_content_tree
    add constraint mstr_document_content_tree_PKC primary key (mstr_document_content_tree_id);
create unique index mstr_document_content_PKI
    on tests.mstr_document_content(mstr_document_content_id,mstr_document_id);
alter table tests.mstr_document_content
    add constraint mstr_document_content_PKC primary key (mstr_document_content_id,mstr_document_id);
create unique index history_mstr_document_tier_PKI
    on tests.history_mstr_document_tier(history_id,mstr_document_tier_id);
alter table tests.history_mstr_document_tier
    add constraint history_mstr_document_tier_PKC primary key (history_id,mstr_document_tier_id);
create unique index mstr_document_tier_PKI
    on tests.mstr_document_tier(mstr_document_tier_id);
alter table tests.mstr_document_tier
    add constraint mstr_document_tier_PKC primary key (mstr_document_tier_id);
create unique index history_mstr_document_tree_PKI
    on tests.history_mstr_document_tree(history_id,mstr_document_tree_id);
alter table tests.history_mstr_document_tree
    add constraint history_mstr_document_tree_PKC primary key (history_id,mstr_document_tree_id);
create unique index hrchy_mstr_documet_PKI
    on tests.hrchy_mstr_documet(hrchy_mstr_document_id);
alter table tests.hrchy_mstr_documet
    add constraint hrchy_mstr_documet_PKC primary key (hrchy_mstr_document_id);
create unique index mstr_document_tree_PKI
    on tests.mstr_document_tree(mstr_document_tree_id);
alter table tests.mstr_document_tree
    add constraint mstr_document_tree_PKC primary key (mstr_document_tree_id);
create unique index history_mstr_document_PKI
    on tests.history_mstr_document(history_id,mstr_document_id);
alter table tests.history_mstr_document
    add constraint history_mstr_document_PKC primary key (history_id,mstr_document_id);
create unique index mstr_document_PKI
    on tests.mstr_document(mstr_document_id);
alter table tests.mstr_document
    add constraint mstr_document_PKC primary key (mstr_document_id);
create unique index trans_container_tree_PKI
    on tests.trans_container_tree(trans_container_tree_id);
alter table tests.trans_container_tree
    add constraint trans_container_tree_PKC primary key (trans_container_tree_id);
create unique index history_mstr_location_tree_PKI
    on tests.history_mstr_location_tree(history_id,mstr_location_tree_id);
alter table tests.history_mstr_location_tree
    add constraint history_mstr_location_tree_PKC primary key (history_id,mstr_location_tree_id);
create unique index mstr_location_tree_PKI
    on tests.mstr_location_tree(mstr_location_tree_id);
alter table tests.mstr_location_tree
    add constraint mstr_location_tree_PKC primary key (mstr_location_tree_id);
create unique index history_info_department_tree_PKI
    on tests.history_info_department_tree(history_id,info_department_tree_id);
alter table tests.history_info_department_tree
    add constraint history_info_department_tree_PKC primary key (history_id,info_department_tree_id);
create unique index info_department_tree_PKI
    on tests.info_department_tree(info_department_tree_id);
alter table tests.info_department_tree
    add constraint info_department_tree_PKC primary key (info_department_tree_id);
alter table tests.info_department_tree
     add constraint info_department_tree_IX1 unique (info_department_id,parent_info_department_id);
create unique index hrchy_mstr_task_PKI
    on tests.hrchy_mstr_task(hrchy_mstr_task_id);
alter table tests.hrchy_mstr_task
    add constraint hrchy_mstr_task_PKC primary key (hrchy_mstr_task_id);
create unique index hrchy_mstr_item_PKI
    on tests.hrchy_mstr_item(hrchy_mstr_item_id);
alter table tests.hrchy_mstr_item
    add constraint hrchy_mstr_item_PKC primary key (hrchy_mstr_item_id);
create unique index history_mstr_inspection_operation_PKI
    on tests.history_mstr_inspection_operation(history_id,mstr_inspection_operation_id,mstr_operation_id,mstr_equipment_id,mstr_item_id);
alter table tests.history_mstr_inspection_operation
    add constraint history_mstr_inspection_operation_PKC primary key (history_id,mstr_inspection_operation_id,mstr_operation_id,mstr_equipment_id,mstr_item_id);
create unique index mstr_inspection_operation_PKI
    on tests.mstr_inspection_operation(mstr_inspection_operation_id,mstr_operation_id,mstr_equipment_id,mstr_item_id);
alter table tests.mstr_inspection_operation
    add constraint mstr_inspection_operation_PKC primary key (mstr_inspection_operation_id,mstr_operation_id,mstr_equipment_id,mstr_item_id);
create unique index history_mstr_inspection_operation_task_PKI
    on tests.history_mstr_inspection_operation_task(history_id,mstr_inspection_operation_task_id,mstr_operation_task_id,mstr_operation_id,mstr_task_id,sequence);
alter table tests.history_mstr_inspection_operation_task
    add constraint history_mstr_inspection_operation_task_PKC primary key (history_id,mstr_inspection_operation_task_id,mstr_operation_task_id,mstr_operation_id,mstr_task_id,sequence);
create unique index mstr_inspection_operation_task_PKI
    on tests.mstr_inspection_operation_task(mstr_inspection_operation_task_id,mstr_operation_task_id,mstr_operation_id,mstr_task_id,sequence);
alter table tests.mstr_inspection_operation_task
    add constraint mstr_inspection_operation_task_PKC primary key (mstr_inspection_operation_task_id,mstr_operation_task_id,mstr_operation_id,mstr_task_id,sequence);
create unique index history_info_department_access_permission_PKI
    on tests.history_info_department_access_permission(history_id,info_department_access_permission_id,info_access_path_id,info_app_id,info_department_id);
alter table tests.history_info_department_access_permission
    add constraint history_info_department_access_permission_PKC primary key (history_id,info_department_access_permission_id,info_access_path_id,info_app_id,info_department_id);
create unique index info_department_access_permission_PKI
    on tests.info_department_access_permission(info_department_access_permission_id,info_access_path_id,info_app_id,info_department_id);
alter table tests.info_department_access_permission
    add constraint info_department_access_permission_PKC primary key (info_department_access_permission_id,info_access_path_id,info_app_id,info_department_id);
create unique index history_info_assign_PKI
    on tests.history_info_assign(history_id,info_assign_id);
alter table tests.history_info_assign
    add constraint history_info_assign_PKC primary key (history_id,info_assign_id);
create unique index mstr_item_provision_PKI
    on tests.mstr_item_provision(mstr_item_provision_id);
alter table tests.mstr_item_provision
    add constraint mstr_item_provision_PKC primary key (mstr_item_provision_id);
create unique index history_mstr_item_provision_PKI
    on tests.history_mstr_item_provision(history_id,mstr_item_provision_id);
alter table tests.history_mstr_item_provision
    add constraint history_mstr_item_provision_PKC primary key (history_id,mstr_item_provision_id);
create unique index history_mstr_equipment_provision_PKI
    on tests.history_mstr_equipment_provision(history_id,mstr_equipment_provision_id);
alter table tests.history_mstr_equipment_provision
    add constraint history_mstr_equipment_provision_PKC primary key (history_id,mstr_equipment_provision_id);
create unique index mstr_equipment_provision_PKI
    on tests.mstr_equipment_provision(mstr_equipment_provision_id);
alter table tests.mstr_equipment_provision
    add constraint mstr_equipment_provision_PKC primary key (mstr_equipment_provision_id);
create unique index hrchy_trans_container_PKI
    on tests.hrchy_trans_container(hrchy_trans_container_id);
alter table tests.hrchy_trans_container
    add constraint hrchy_trans_container_PKC primary key (hrchy_trans_container_id);
create unique index trans_container_PKI
    on tests.trans_container(trans_container_id);
alter table tests.trans_container
    add constraint trans_container_PKC primary key (trans_container_id);
create unique index hrchy_info_department_PKI
    on tests.hrchy_info_department(hrchy_info_department_id);
alter table tests.hrchy_info_department
    add constraint hrchy_info_department_PKC primary key (hrchy_info_department_id);
alter table tests.hrchy_info_department
     add constraint hrchy_info_department_IX1 unique (ancestor_info_department_id,descendant_info_department_id);
create unique index history_info_app_status_PKI
    on tests.history_info_app_status(history_id,info_app_status_id);
alter table tests.history_info_app_status
    add constraint history_info_app_status_PKC primary key (history_id,info_app_status_id);
create unique index info_app_status_PKI
    on tests.info_app_status(info_app_status_id);
alter table tests.info_app_status
    add constraint info_app_status_PKC primary key (info_app_status_id);
create unique index trans_announcement _PKI
    on tests.trans_announcement (trans_authtoken_id,to_info_staff_id);
alter table tests.trans_announcement 
    add constraint trans_announcement _PKC primary key (trans_authtoken_id,to_info_staff_id);
create unique index history_mstr_operation_task_PKI
    on tests.history_mstr_operation_task(history_id,mstr_operation_task_id,mstr_operation_id,mstr_task_id,sequence);
alter table tests.history_mstr_operation_task
    add constraint history_mstr_operation_task_PKC primary key (history_id,mstr_operation_task_id,mstr_operation_id,mstr_task_id,sequence);
create unique index history_mstr_report_PKI
    on tests.history_mstr_report(history_id,mstr_report_id);
alter table tests.history_mstr_report
    add constraint history_mstr_report_PKC primary key (history_id,mstr_report_id);
create unique index history_mstr_item_operation_task_PKI
    on tests.history_mstr_item_operation_task(history_id,mstr_item_operation_task_id,mstr_item_id,mstr_operation_task_id,mstr_operation_id,mstr_task_id,sequence);
alter table tests.history_mstr_item_operation_task
    add constraint history_mstr_item_operation_task_PKC primary key (history_id,mstr_item_operation_task_id,mstr_item_id,mstr_operation_task_id,mstr_operation_id,mstr_task_id,sequence);
create unique index history_mstr_item_operation_PKI
    on tests.history_mstr_item_operation(history_id,mstr_item_operation_id,mstr_item_id,mstr_operation_id);
alter table tests.history_mstr_item_operation
    add constraint history_mstr_item_operation_PKC primary key (history_id,mstr_item_operation_id,mstr_item_id,mstr_operation_id);
create unique index history_mstr_task_tree_PKI
    on tests.history_mstr_task_tree(history_id,mstr_task_tree_id);
alter table tests.history_mstr_task_tree
    add constraint history_mstr_task_tree_PKC primary key (history_id,mstr_task_tree_id);
create unique index history_mstr_outsource_available_PKI
    on tests.history_mstr_outsource_available(history_id,mstr_outsource_available_id,mstr_task_location_id,mstr_task_id);
alter table tests.history_mstr_outsource_available
    add constraint history_mstr_outsource_available_PKC primary key (history_id,mstr_outsource_available_id,mstr_task_location_id,mstr_task_id);
create unique index history_mstr_equipment_available_PKI
    on tests.history_mstr_equipment_available(history_id,mstr_equipment_available_id,mstr_task_location_id,mstr_task_id);
alter table tests.history_mstr_equipment_available
    add constraint history_mstr_equipment_available_PKC primary key (history_id,mstr_equipment_available_id,mstr_task_location_id,mstr_task_id);
create unique index history_mstr_task_PKI
    on tests.history_mstr_task(history_id,mstr_task_id);
alter table tests.history_mstr_task
    add constraint history_mstr_task_PKC primary key (history_id,mstr_task_id);
create unique index history_mstr_task_location_PKI
    on tests.history_mstr_task_location(history_id,mstr_task_location_id,mstr_task_id);
alter table tests.history_mstr_task_location
    add constraint history_mstr_task_location_PKC primary key (history_id,mstr_task_location_id,mstr_task_id);
create unique index mstr_task_location_PKI
    on tests.mstr_task_location(mstr_task_location_id,mstr_task_id);
alter table tests.mstr_task_location
    add constraint mstr_task_location_PKC primary key (mstr_task_location_id,mstr_task_id);
create unique index history_mstr_task_group_PKI
    on tests.history_mstr_task_group(history_id,mstr_task_group_id);
alter table tests.history_mstr_task_group
    add constraint history_mstr_task_group_PKC primary key (history_id,mstr_task_group_id);
create unique index history_mstr_operation_PKI
    on tests.history_mstr_operation(history_id,mstr_operation_id);
alter table tests.history_mstr_operation
    add constraint history_mstr_operation_PKC primary key (history_id,mstr_operation_id);
create unique index history_mstr_manufacturer_PKI
    on tests.history_mstr_manufacturer(history_id,mstr_manufacturer_id);
alter table tests.history_mstr_manufacturer
    add constraint history_mstr_manufacturer_PKC primary key (history_id,mstr_manufacturer_id);
create unique index history_mstr_inspection_PKI
    on tests.history_mstr_inspection(history_id,mstr_inspection_id,mstr_task_id);
alter table tests.history_mstr_inspection
    add constraint history_mstr_inspection_PKC primary key (history_id,mstr_inspection_id,mstr_task_id);
create unique index history_mstr_inspection_formula_PKI
    on tests.history_mstr_inspection_formula(history_id,mstr_inspection_formula_id);
alter table tests.history_mstr_inspection_formula
    add constraint history_mstr_inspection_formula_PKC primary key (history_id,mstr_inspection_formula_id);
create unique index history_mstr_item_size_PKI
    on tests.history_mstr_item_size(history_id,mstr_item_size_id,mstr_item_id);
alter table tests.history_mstr_item_size
    add constraint history_mstr_item_size_PKC primary key (history_id,mstr_item_size_id,mstr_item_id);
create unique index history_mstr_item_tree_PKI
    on tests.history_mstr_item_tree(history_id,mstr_item_tree_id);
alter table tests.history_mstr_item_tree
    add constraint history_mstr_item_tree_PKC primary key (history_id,mstr_item_tree_id);
create unique index history_mstr_item_PKI
    on tests.history_mstr_item(history_id,mstr_item_id);
alter table tests.history_mstr_item
    add constraint history_mstr_item_PKC primary key (history_id,mstr_item_id);
create unique index history_mstr_audit_std_checkitem_PKI
    on tests.history_mstr_audit_std_checkitem(history_id,mstr_audit_std_checkitem_id,mstr_audit_std_id);
alter table tests.history_mstr_audit_std_checkitem
    add constraint history_mstr_audit_std_checkitem_PKC primary key (history_id,mstr_audit_std_checkitem_id,mstr_audit_std_id);
create unique index history_mstr_audit_std_PKI
    on tests.history_mstr_audit_std(history_id,mstr_audit_std_id);
alter table tests.history_mstr_audit_std
    add constraint history_mstr_audit_std_PKC primary key (history_id,mstr_audit_std_id);
create unique index history_mstr_location_PKI
    on tests.history_mstr_location(history_id,mstr_location_id);
alter table tests.history_mstr_location
    add constraint history_mstr_location_PKC primary key (history_id,mstr_location_id);
create unique index history_mstr_equipment_tag_PKI
    on tests.history_mstr_equipment_tag(history_id,mstr_equipment_tag_id);
alter table tests.history_mstr_equipment_tag
    add constraint history_mstr_equipment_tag_PKC primary key (history_id,mstr_equipment_tag_id);
create unique index history_mstr_stakeholder_contact_PKI
    on tests.history_mstr_stakeholder_contact(history_id,mstr_stakeholder_contact_id,mstr_stakeholder_id);
alter table tests.history_mstr_stakeholder_contact
    add constraint history_mstr_stakeholder_contact_PKC primary key (history_id,mstr_stakeholder_contact_id,mstr_stakeholder_id);
create unique index history_mstr_stakeholder_provision_PKI
    on tests.history_mstr_stakeholder_provision(history_id,mstr_stakeholder_provision_id,mstr_stakeholder_id);
alter table tests.history_mstr_stakeholder_provision
    add constraint history_mstr_stakeholder_provision_PKC primary key (history_id,mstr_stakeholder_provision_id,mstr_stakeholder_id);
create unique index history_mstr_stakeholder_PKI
    on tests.history_mstr_stakeholder(history_id,mstr_stakeholder_id);
alter table tests.history_mstr_stakeholder
    add constraint history_mstr_stakeholder_PKC primary key (history_id,mstr_stakeholder_id);
create unique index history_mstr_staff_license_PKI
    on tests.history_mstr_staff_license(history_id,mstr_staff_license_id,info_staff_id,mstr_license_id);
alter table tests.history_mstr_staff_license
    add constraint history_mstr_staff_license_PKC primary key (history_id,mstr_staff_license_id,info_staff_id,mstr_license_id);
create unique index history_mstr_license_PKI
    on tests.history_mstr_license(history_id,mstr_license_id);
alter table tests.history_mstr_license
    add constraint history_mstr_license_PKC primary key (history_id,mstr_license_id);
create unique index history_info_staff_access_permission_PKI
    on tests.history_info_staff_access_permission(history_id,info_staff_access_permission_id);
alter table tests.history_info_staff_access_permission
    add constraint history_info_staff_access_permission_PKC primary key (history_id,info_staff_access_permission_id);
create unique index historymstr_approval_scope_pattern_PKI
    on tests.historymstr_approval_scope_pattern(history_id,mstr_approval_scope_pattern_id);
alter table tests.historymstr_approval_scope_pattern
    add constraint historymstr_approval_scope_pattern_PKC primary key (history_id,mstr_approval_scope_pattern_id);
create unique index history_mstr_approval_pattern_PKI
    on tests.history_mstr_approval_pattern(history_id,mstr_approval_pattern_id);
alter table tests.history_mstr_approval_pattern
    add constraint history_mstr_approval_pattern_PKC primary key (history_id,mstr_approval_pattern_id);
create unique index history_mstr_capability_PKI
    on tests.history_mstr_capability(history_id,mstr_capability_id);
alter table tests.history_mstr_capability
    add constraint history_mstr_capability_PKC primary key (history_id,mstr_capability_id);
create unique index history_mstr_approval_pattern_detail_PKI
    on tests.history_mstr_approval_pattern_detail(history_id,mstr_approval_pattern_detail_id);
alter table tests.history_mstr_approval_pattern_detail
    add constraint history_mstr_approval_pattern_detail_PKC primary key (history_id,mstr_approval_pattern_detail_id);
create unique index history_mstr_approval_PKI
    on tests.history_mstr_approval(history_id,mstr_approval_id);
alter table tests.history_mstr_approval
    add constraint history_mstr_approval_PKC primary key (history_id,mstr_approval_id);
create unique index history_info_role_PKI
    on tests.history_info_role(history_id,info_role_id);
alter table tests.history_info_role
    add constraint history_info_role_PKC primary key (history_id,info_role_id);
create unique index history_mstr_staff_capability_PKI
    on tests.history_mstr_staff_capability(history_id,mstr_staff_capability_id,info_staff_id);
alter table tests.history_mstr_staff_capability
    add constraint history_mstr_staff_capability_PKC primary key (history_id,mstr_staff_capability_id,info_staff_id);
create unique index history_mstr_sign_PKI
    on tests.history_mstr_sign(history_id,mstr_sign_id,info_staff_id);
alter table tests.history_mstr_sign
    add constraint history_mstr_sign_PKC primary key (history_id,mstr_sign_id,info_staff_id);
create unique index history_info_staff_PKI
    on tests.history_info_staff(history_id,info_staff_id);
alter table tests.history_info_staff
    add constraint history_info_staff_PKC primary key (history_id,info_staff_id);
create unique index history_info_provision_PKI
    on tests.history_info_provision(history_id,info_provision_id);
alter table tests.history_info_provision
    add constraint history_info_provision_PKC primary key (history_id,info_provision_id);
create unique index history_info_address_PKI
    on tests.history_info_address(history_id,info_address_id);
alter table tests.history_info_address
    add constraint history_info_address_PKC primary key (history_id,info_address_id);
create unique index history_shared_unit_PKI
    on tests.history_shared_unit(history_id,shared_unit_id);
alter table tests.history_shared_unit
    add constraint history_shared_unit_PKC primary key (history_id,shared_unit_id);
create unique index history_info_office_PKI
    on tests.history_info_office(history_id,info_office_id);
alter table tests.history_info_office
    add constraint history_info_office_PKC primary key (history_id,info_office_id);
create unique index history_info_department_PKI
    on tests.history_info_department(history_id,info_department_id);
alter table tests.history_info_department
    add constraint history_info_department_PKC primary key (history_id,info_department_id);
create unique index history_info_access_path_approval_PKI
    on tests.history_info_access_path_approval(history_id,info_access_path_approval_id);
alter table tests.history_info_access_path_approval
    add constraint history_info_access_path_approval_PKC primary key (history_id,info_access_path_approval_id);
create unique index history_info_access_path_PKI
    on tests.history_info_access_path(history_id,info_access_path_id,info_app_id);
alter table tests.history_info_access_path
    add constraint history_info_access_path_PKC primary key (history_id,info_access_path_id,info_app_id);
create unique index history_info_company_PKI
    on tests.history_info_company(history_id,info_company_id);
alter table tests.history_info_company
    add constraint history_info_company_PKC primary key (history_id,info_company_id);
create unique index info_company_PKI
    on tests.info_company(info_company_id);
alter table tests.info_company
    add constraint info_company_PKC primary key (info_company_id);
create unique index history_info_app_PKI
    on tests.history_info_app(history_id,info_app_id);
alter table tests.history_info_app
    add constraint history_info_app_PKC primary key (history_id,info_app_id);
alter table tests.history_info_app
     add constraint history_info_app_IX1 unique (name);
create unique index trans_anonymouse_PKI
    on tests.trans_anonymouse(trans_anonymouse_id);
alter table tests.trans_anonymouse
    add constraint trans_anonymouse_PKC primary key (trans_anonymouse_id);
create unique index trans_file_reminder_PKI
    on tests.trans_file_reminder(trans_file_reminder_id);
alter table tests.trans_file_reminder
    add constraint trans_file_reminder_PKC primary key (trans_file_reminder_id);
create unique index mstr_equipment_available_PKI
    on tests.mstr_equipment_available(mstr_equipment_available_id,mstr_task_location_id,mstr_task_id);
alter table tests.mstr_equipment_available
    add constraint mstr_equipment_available_PKC primary key (mstr_equipment_available_id,mstr_task_location_id,mstr_task_id);
create unique index mstr_outsource_available_PKI
    on tests.mstr_outsource_available(mstr_outsource_available_id,mstr_task_location_id,mstr_task_id);
alter table tests.mstr_outsource_available
    add constraint mstr_outsource_available_PKC primary key (mstr_outsource_available_id,mstr_task_location_id,mstr_task_id);
create unique index mstr_task_group_PKI
    on tests.mstr_task_group(mstr_task_group_id);
alter table tests.mstr_task_group
    add constraint mstr_task_group_PKC primary key (mstr_task_group_id);
create unique index trans_unrecognized_detail_PKI
    on tests.trans_unrecognized_detail(trans_unrecognized_detail_id,trans_unrecognized_id);
alter table tests.trans_unrecognized_detail
    add constraint trans_unrecognized_detail_PKC primary key (trans_unrecognized_detail_id,trans_unrecognized_id);
create unique index trans_unrecognized_PKI
    on tests.trans_unrecognized(trans_unrecognized_id);
alter table tests.trans_unrecognized
    add constraint trans_unrecognized_PKC primary key (trans_unrecognized_id);
create unique index mstr_stakeholder_provision_PKI
    on tests.mstr_stakeholder_provision(mstr_stakeholder_provision_id,mstr_stakeholder_id);
alter table tests.mstr_stakeholder_provision
    add constraint mstr_stakeholder_provision_PKC primary key (mstr_stakeholder_provision_id,mstr_stakeholder_id);
create unique index info_provision_PKI
    on tests.info_provision(info_provision_id);
alter table tests.info_provision
    add constraint info_provision_PKC primary key (info_provision_id);
create unique index mstr_inspection_formula_PKI
    on tests.mstr_inspection_formula(mstr_inspection_formula_id);
alter table tests.mstr_inspection_formula
    add constraint mstr_inspection_formula_PKC primary key (mstr_inspection_formula_id);
create unique index mstr_manufacturer_PKI
    on tests.mstr_manufacturer(mstr_manufacturer_id);
alter table tests.mstr_manufacturer
    add constraint mstr_manufacturer_PKC primary key (mstr_manufacturer_id);
create unique index mstr_approval_scope_pattern_PKI
    on tests.mstr_approval_scope_pattern(mstr_approval_scope_pattern_id);
alter table tests.mstr_approval_scope_pattern
    add constraint mstr_approval_scope_pattern_PKC primary key (mstr_approval_scope_pattern_id);
create unique index mstr_approval_pattern_detail_PKI
    on tests.mstr_approval_pattern_detail(mstr_approval_pattern_detail_id);
alter table tests.mstr_approval_pattern_detail
    add constraint mstr_approval_pattern_detail_PKC primary key (mstr_approval_pattern_detail_id);
create unique index info_address_PKI
    on tests.info_address(info_address_id);
alter table tests.info_address
    add constraint info_address_PKC primary key (info_address_id);
create unique index trans_inspection_report_PKI
    on tests.trans_inspection_report(trans_inspection_report_id,trans_inspect_sch_detail_id);
alter table tests.trans_inspection_report
    add constraint trans_inspection_report_PKC primary key (trans_inspection_report_id,trans_inspect_sch_detail_id);
create unique index mstr_report_PKI
    on tests.mstr_report(mstr_report_id);
alter table tests.mstr_report
    add constraint mstr_report_PKC primary key (mstr_report_id);
create unique index mstr_equipment_tag_PKI
    on tests.mstr_equipment_tag(mstr_equipment_tag_id);
alter table tests.mstr_equipment_tag
    add constraint mstr_equipment_tag_PKC primary key (mstr_equipment_tag_id);
create unique index info_access_path_approval_PKI
    on tests.info_access_path_approval(info_access_path_approval_id);
alter table tests.info_access_path_approval
    add constraint info_access_path_approval_PKC primary key (info_access_path_approval_id);
create unique index trans_approved_PKI
    on tests.trans_approved(trans_approved_id);
alter table tests.trans_approved
    add constraint trans_approved_PKC primary key (trans_approved_id);
create unique index mstr_approval_PKI
    on tests.mstr_approval(mstr_approval_id);
alter table tests.mstr_approval
    add constraint mstr_approval_PKC primary key (mstr_approval_id);
create unique index info_role_PKI
    on tests.info_role(info_role_id);
alter table tests.info_role
    add constraint info_role_PKC primary key (info_role_id);
create unique index mstr_approval_pattern_PKI
    on tests.mstr_approval_pattern(mstr_approval_pattern_id);
alter table tests.mstr_approval_pattern
    add constraint mstr_approval_pattern_PKC primary key (mstr_approval_pattern_id);
create unique index trans_approval_PKI
    on tests.trans_approval(trans_approval_id,trans_approval_gr_id,mstr_approval_pattern_id,trans_approved_id);
alter table tests.trans_approval
    add constraint trans_approval_PKC primary key (trans_approval_id,trans_approval_gr_id,mstr_approval_pattern_id,trans_approved_id);
create unique index trans_approval_gr_PKI
    on tests.trans_approval_gr(trans_approval_gr_id,mstr_approval_pattern_id,trans_approved_id);
alter table tests.trans_approval_gr
    add constraint trans_approval_gr_PKC primary key (trans_approval_gr_id,mstr_approval_pattern_id,trans_approved_id);
create unique index trans_audit_member_PKI
    on tests.trans_audit_member(trans_audit_member_id,trans_audit_id,audit_history_id,mstr_audit_std_id);
alter table tests.trans_audit_member
    add constraint trans_audit_member_PKC primary key (trans_audit_member_id,trans_audit_id,audit_history_id,mstr_audit_std_id);
create unique index trans_auditor_PKI
    on tests.trans_auditor(trans_auditor_id,trans_audit_id,audit_history_id,mstr_audit_std_id);
alter table tests.trans_auditor
    add constraint trans_auditor_PKC primary key (trans_auditor_id,trans_audit_id,audit_history_id,mstr_audit_std_id);
create unique index trans_audit_team_PKI
    on tests.trans_audit_team(trans_audit_team_id,trans_audit_id,audit_history_id,mstr_audit_std_id);
alter table tests.trans_audit_team
    add constraint trans_audit_team_PKC primary key (trans_audit_team_id,trans_audit_id,audit_history_id,mstr_audit_std_id);
create unique index trans_audit_PKI
    on tests.trans_audit(trans_audit_id,audit_history_id,mstr_audit_std_id);
alter table tests.trans_audit
    add constraint trans_audit_PKC primary key (trans_audit_id,audit_history_id,mstr_audit_std_id);
create unique index trans_task_risk_PKI
    on tests.trans_task_risk(trans_task_risk_id);
alter table tests.trans_task_risk
    add constraint trans_task_risk_PKC primary key (trans_task_risk_id);
create unique index trans_order_detail_risk_PKI
    on tests.trans_order_detail_risk(trans_order_detail_risk_id);
alter table tests.trans_order_detail_risk
    add constraint trans_order_detail_risk_PKC primary key (trans_order_detail_risk_id);
create unique index trans_prevetion_detail_PKI
    on tests.trans_prevetion_detail(trans_prevetion_detail_id,risk_id,trans_prevention_id,info_company_id,info_department_id);
alter table tests.trans_prevetion_detail
    add constraint trans_prevetion_detail_PKC primary key (trans_prevetion_detail_id,risk_id,trans_prevention_id,info_company_id,info_department_id);
create unique index trans_prevention_PKI
    on tests.trans_prevention(trans_prevention_id,risk_id);
alter table tests.trans_prevention
    add constraint trans_prevention_PKC primary key (trans_prevention_id,risk_id);
create unique index trans_order_risk_PKI
    on tests.trans_order_risk(trans_order_risk_id);
alter table tests.trans_order_risk
    add constraint trans_order_risk_PKC primary key (trans_order_risk_id);
create unique index trans_equipment_lent_PKI
    on tests.trans_equipment_lent(trans_equipment_lent_id,mstr_equipment_id);
alter table tests.trans_equipment_lent
    add constraint trans_equipment_lent_PKC primary key (trans_equipment_lent_id,mstr_equipment_id);
create unique index mstr_item_operation_PKI
    on tests.mstr_item_operation(mstr_item_operation_id,mstr_item_id,mstr_operation_id);
alter table tests.mstr_item_operation
    add constraint mstr_item_operation_PKC primary key (mstr_item_operation_id,mstr_item_id,mstr_operation_id);
create unique index hrchy_mstr_location_PKI
    on tests.hrchy_mstr_location(hrchy_mstr_location_id);
alter table tests.hrchy_mstr_location
    add constraint hrchy_mstr_location_PKC primary key (hrchy_mstr_location_id);
create unique index trans_disposal_detail_PKI
    on tests.trans_disposal_detail(trans_disposal_detail_id,trans_disposal_id,trans_complaint_id);
alter table tests.trans_disposal_detail
    add constraint trans_disposal_detail_PKC primary key (trans_disposal_detail_id,trans_disposal_id,trans_complaint_id);
create unique index mstr_audit_std_checkitem_PKI
    on tests.mstr_audit_std_checkitem(mstr_audit_std_checkitem_id,mstr_audit_std_id);
alter table tests.mstr_audit_std_checkitem
    add constraint mstr_audit_std_checkitem_PKC primary key (mstr_audit_std_checkitem_id,mstr_audit_std_id);
create unique index mstr_audit_std_PKI
    on tests.mstr_audit_std(mstr_audit_std_id);
alter table tests.mstr_audit_std
    add constraint mstr_audit_std_PKC primary key (mstr_audit_std_id);
create unique index trans_risk_PKI
    on tests.trans_risk(trans_risk_id);
alter table tests.trans_risk
    add constraint trans_risk_PKC primary key (trans_risk_id);
create unique index trans_observer_preventive_PKI
    on tests.trans_observer_preventive(trans_observer_preventive_id,trans_complaint_id,trans_disposal_id,trans_recurrence_prevention_id,trans_observer_disposal_id);
alter table tests.trans_observer_preventive
    add constraint trans_observer_preventive_PKC primary key (trans_observer_preventive_id,trans_complaint_id,trans_disposal_id,trans_recurrence_prevention_id,trans_observer_disposal_id);
create unique index trans_observer_disposal_PKI
    on tests.trans_observer_disposal(trans_observer_disposal_id);
alter table tests.trans_observer_disposal
    add constraint trans_observer_disposal_PKC primary key (trans_observer_disposal_id);
create unique index trans_complaint_stakeholder_adapter_PKI
    on tests.trans_complaint_stakeholder_adapter(trans_complaint_stakeholder_adapter_id,trans_order_id,adapter_id);
alter table tests.trans_complaint_stakeholder_adapter
    add constraint trans_complaint_stakeholder_adapter_PKC primary key (trans_complaint_stakeholder_adapter_id,trans_order_id,adapter_id);
create unique index trans_complaint_equipment_adapter_PKI
    on tests.trans_complaint_equipment_adapter(trans_complaint_equipment_adapter_id,trans_order_id,adapter_id);
alter table tests.trans_complaint_equipment_adapter
    add constraint trans_complaint_equipment_adapter_PKC primary key (trans_complaint_equipment_adapter_id,trans_order_id,adapter_id);
create unique index trans_complaint_process_adapter_PKI
    on tests.trans_complaint_process_adapter(trans_complaint_process_adapter_id,process_id,adapter_id);
alter table tests.trans_complaint_process_adapter
    add constraint trans_complaint_process_adapter_PKC primary key (trans_complaint_process_adapter_id,process_id,adapter_id);
create unique index trans_complaint_order_adapter_PKI
    on tests.trans_complaint_order_adapter(trans_complaint_order_adapter_id,trans_order_id,adapter_id);
alter table tests.trans_complaint_order_adapter
    add constraint trans_complaint_order_adapter_PKC primary key (trans_complaint_order_adapter_id,trans_order_id,adapter_id);
create unique index trans_disposal_PKI
    on tests.trans_disposal(trans_disposal_id,trans_complaint_id);
alter table tests.trans_disposal
    add constraint trans_disposal_PKC primary key (trans_disposal_id,trans_complaint_id);
create unique index trans_recurrence_prevention_PKI
    on tests.trans_recurrence_prevention(trans_recurrence_prevention_id,trans_complaint_id,trans_disposal_id);
alter table tests.trans_recurrence_prevention
    add constraint trans_recurrence_prevention_PKC primary key (trans_recurrence_prevention_id,trans_complaint_id,trans_disposal_id);
create unique index trans_complaint_PKI
    on tests.trans_complaint(trans_complaint_id);
alter table tests.trans_complaint
    add constraint trans_complaint_PKC primary key (trans_complaint_id);
create unique index trans_inspect_imp_file_PKI
    on tests.trans_inspect_imp_file(trans_inspect_imp_file_id,trans_inspect_record_id,inspect_sch_id);
alter table tests.trans_inspect_imp_file
    add constraint trans_inspect_imp_file_PKC primary key (trans_inspect_imp_file_id,trans_inspect_record_id,inspect_sch_id);
create unique index trans_inspect_record_PKI
    on tests.trans_inspect_record(trans_inspect_record_id,trans_inspect_sch_detail_id);
alter table tests.trans_inspect_record
    add constraint trans_inspect_record_PKC primary key (trans_inspect_record_id,trans_inspect_sch_detail_id);
create unique index trans_inspect_sch_detail_PKI
    on tests.trans_inspect_sch_detail(trans_inspect_sch_detail_id,trans_inspect_sch_id);
alter table tests.trans_inspect_sch_detail
    add constraint trans_inspect_sch_detail_PKC primary key (trans_inspect_sch_detail_id,trans_inspect_sch_id);
create unique index trans_inspect_sch_PKI
    on tests.trans_inspect_sch(trans_inspect_sch_id);
alter table tests.trans_inspect_sch
    add constraint trans_inspect_sch_PKC primary key (trans_inspect_sch_id);
create unique index mstr_inspection_PKI
    on tests.mstr_inspection(mstr_inspection_id,mstr_task_id);
alter table tests.mstr_inspection
    add constraint mstr_inspection_PKC primary key (mstr_inspection_id,mstr_task_id);
create unique index info_assign_PKI
    on tests.info_assign(info_assign_id);
alter table tests.info_assign
    add constraint info_assign_PKC primary key (info_assign_id);
create unique index info_staff_access_permission_PKI
    on tests.info_staff_access_permission(info_staff_access_permission_id);
alter table tests.info_staff_access_permission
    add constraint info_staff_access_permission_PKC primary key (info_staff_access_permission_id);
create unique index info_app_PKI
    on tests.info_app(info_app_id);
alter table tests.info_app
    add constraint info_app_PKC primary key (info_app_id);
alter table tests.info_app
     add constraint info_app_IX1 unique (name);
create unique index info_access_path_PKI
    on tests.info_access_path(info_access_path_id,info_app_id);
alter table tests.info_access_path
    add constraint info_access_path_PKC primary key (info_access_path_id,info_app_id);
create unique index trans_inventory_request_PKI
    on tests.trans_inventory_request(trans_inventory_request_id);
alter table tests.trans_inventory_request
    add constraint trans_inventory_request_PKC primary key (trans_inventory_request_id);
create unique index trans_product_rez_PKI
    on tests.trans_product_rez(trans_product_rez_id,trans_product_detail_id,trans_product_id);
alter table tests.trans_product_rez
    add constraint trans_product_rez_PKC primary key (trans_product_rez_id,trans_product_detail_id,trans_product_id);
create unique index trans_work_record_visiter_PKI
    on tests.trans_work_record_visiter(trans_work_record_visiter_id,trans_work_record_id);
alter table tests.trans_work_record_visiter
    add constraint trans_work_record_visiter_PKC primary key (trans_work_record_visiter_id,trans_work_record_id);
create unique index trans_purchase_rec_visiter_PKI
    on tests.trans_purchase_rec_visiter(trans_purchase_rec_visiter_id);
alter table tests.trans_purchase_rec_visiter
    add constraint trans_purchase_rec_visiter_PKC primary key (trans_purchase_rec_visiter_id);
create unique index trans_visiter_PKI
    on tests.trans_visiter(trans_visiter_id);
alter table tests.trans_visiter
    add constraint trans_visiter_PKC primary key (trans_visiter_id);
create unique index mstr_item_size_PKI
    on tests.mstr_item_size(mstr_item_size_id,mstr_item_id);
alter table tests.mstr_item_size
    add constraint mstr_item_size_PKC primary key (mstr_item_size_id,mstr_item_id);
create unique index trans_file_PKI
    on tests.trans_file(trans_file_id);
alter table tests.trans_file
    add constraint trans_file_PKC primary key (trans_file_id);
create unique index mstr_operation_task_PKI
    on tests.mstr_operation_task(mstr_operation_task_id,mstr_operation_id,mstr_task_id,sequence);
alter table tests.mstr_operation_task
    add constraint mstr_operation_task_PKC primary key (mstr_operation_task_id,mstr_operation_id,mstr_task_id,sequence);
create unique index mstr_operation_PKI
    on tests.mstr_operation(mstr_operation_id);
alter table tests.mstr_operation
    add constraint mstr_operation_PKC primary key (mstr_operation_id);
create unique index trans_convey_PKI
    on tests.trans_convey(trans_convey_id,trans_visiter_id);
alter table tests.trans_convey
    add constraint trans_convey_PKC primary key (trans_convey_id,trans_visiter_id);
create unique index trans_work_record_certificate_PKI
    on tests.trans_work_record_certificate(trans_work_record_certificate_id,trans_certificate_id);
alter table tests.trans_work_record_certificate
    add constraint trans_work_record_certificate_PKC primary key (trans_work_record_certificate_id,trans_certificate_id);
create unique index trans_certificate_PKI
    on tests.trans_certificate(trans_certificate_id);
alter table tests.trans_certificate
    add constraint trans_certificate_PKC primary key (trans_certificate_id);
create unique index trans_purchase_rec_PKI
    on tests.trans_purchase_rec(trans_purchase_rec_id,trans_purchase_detail_id);
alter table tests.trans_purchase_rec
    add constraint trans_purchase_rec_PKC primary key (trans_purchase_rec_id,trans_purchase_detail_id);
create unique index trans_purchase_certification_PKI
    on tests.trans_purchase_certification(trans_purchase_certification_id,trans_purchase_rec_id,trans_purchase_detail_id);
alter table tests.trans_purchase_certification
    add constraint trans_purchase_certification_PKC primary key (trans_purchase_certification_id,trans_purchase_rec_id,trans_purchase_detail_id);
create unique index trans_purchase_rez_PKI
    on tests.trans_purchase_rez(trans_purchase_rez_id);
alter table tests.trans_purchase_rez
    add constraint trans_purchase_rez_PKC primary key (trans_purchase_rez_id);
create unique index trans_purchase_detail_PKI
    on tests.trans_purchase_detail(trans_purchase_detail_id);
alter table tests.trans_purchase_detail
    add constraint trans_purchase_detail_PKC primary key (trans_purchase_detail_id);
create unique index trans_order_detail_PKI
    on tests.trans_order_detail(trans_order_detail_id,trans_order_id);
alter table tests.trans_order_detail
    add constraint trans_order_detail_PKC primary key (trans_order_detail_id,trans_order_id);
create unique index trans_shipping_record_PKI
    on tests.trans_shipping_record(trans_shipping_detail_id,trans_shipping_id,trans_order_id,trans_order_detail_id);
alter table tests.trans_shipping_record
    add constraint trans_shipping_record_PKC primary key (trans_shipping_detail_id,trans_shipping_id,trans_order_id,trans_order_detail_id);
create unique index trans_ship_order_PKI
    on tests.trans_ship_order(trans_shipping_id,trans_order_id);
alter table tests.trans_ship_order
    add constraint trans_ship_order_PKC primary key (trans_shipping_id,trans_order_id);
create unique index trans_work_record_PKI
    on tests.trans_work_record(trans_work_record_id,trans_product_detail_id,trans_product_id);
alter table tests.trans_work_record
    add constraint trans_work_record_PKC primary key (trans_work_record_id,trans_product_detail_id,trans_product_id);
create unique index trans_inventory_apply_PKI
    on tests.trans_inventory_apply(trans_inventory_apply_id);
alter table tests.trans_inventory_apply
    add constraint trans_inventory_apply_PKC primary key (trans_inventory_apply_id);
create unique index trans_product_detail_PKI
    on tests.trans_product_detail(trans_product_detail_id,trans_product_id);
alter table tests.trans_product_detail
    add constraint trans_product_detail_PKC primary key (trans_product_detail_id,trans_product_id);
create unique index trans_product_PKI
    on tests.trans_product(trans_product_id);
alter table tests.trans_product
    add constraint trans_product_PKC primary key (trans_product_id);
create unique index trans_resorce_plan_PKI
    on tests.trans_resorce_plan(trans_resorce_plan_id);
alter table tests.trans_resorce_plan
    add constraint trans_resorce_plan_PKC primary key (trans_resorce_plan_id);
create unique index trans_purchase_PKI
    on tests.trans_purchase(trans_purchase_id);
alter table tests.trans_purchase
    add constraint trans_purchase_PKC primary key (trans_purchase_id);
create unique index trans_order_PKI
    on tests.trans_order(trans_order_id);
alter table tests.trans_order
    add constraint trans_order_PKC primary key (trans_order_id);
create unique index mstr_item_operation_task_PKI
    on tests.mstr_item_operation_task(mstr_item_operation_task_id,mstr_item_id,mstr_operation_task_id,mstr_operation_id,mstr_task_id,sequence);
alter table tests.mstr_item_operation_task
    add constraint mstr_item_operation_task_PKC primary key (mstr_item_operation_task_id,mstr_item_id,mstr_operation_task_id,mstr_operation_id,mstr_task_id,sequence);
create unique index mstr_item_tree_PKI
    on tests.mstr_item_tree(mstr_item_tree_id);
alter table tests.mstr_item_tree
    add constraint mstr_item_tree_PKC primary key (mstr_item_tree_id);
alter table tests.mstr_item_tree
     add constraint mstr_item_tree_IX1 unique (mstr_item_id);
create unique index shared_unit_PKI
    on tests.shared_unit(shared_unit_id);
alter table tests.shared_unit
    add constraint shared_unit_PKC primary key (shared_unit_id);
create unique index mstr_item_PKI
    on tests.mstr_item(mstr_item_id);
alter table tests.mstr_item
    add constraint mstr_item_PKC primary key (mstr_item_id);
create unique index mstr_task_tree_PKI
    on tests.mstr_task_tree(mstr_task_tree_id);
alter table tests.mstr_task_tree
    add constraint mstr_task_tree_PKC primary key (mstr_task_tree_id);
create unique index mstr_task_PKI
    on tests.mstr_task(mstr_task_id);
alter table tests.mstr_task
    add constraint mstr_task_PKC primary key (mstr_task_id);
create unique index mstr_location_PKI
    on tests.mstr_location(mstr_location_id);
alter table tests.mstr_location
    add constraint mstr_location_PKC primary key (mstr_location_id);
create unique index mstr_equipment_PKI
    on tests.mstr_equipment(mstr_equipment_id,mstr_item_id);
alter table tests.mstr_equipment
    add constraint mstr_equipment_PKC primary key (mstr_equipment_id,mstr_item_id);
create unique index mstr_stakeholder_contact_PKI
    on tests.mstr_stakeholder_contact(mstr_stakeholder_contact_id,mstr_stakeholder_id);
alter table tests.mstr_stakeholder_contact
    add constraint mstr_stakeholder_contact_PKC primary key (mstr_stakeholder_contact_id,mstr_stakeholder_id);
create unique index mstr_stakeholder_PKI
    on tests.mstr_stakeholder(mstr_stakeholder_id);
alter table tests.mstr_stakeholder
    add constraint mstr_stakeholder_PKC primary key (mstr_stakeholder_id);
create unique index mstr_staff_license_PKI
    on tests.mstr_staff_license(mstr_staff_license_id,info_staff_id,mstr_license_id);
alter table tests.mstr_staff_license
    add constraint mstr_staff_license_PKC primary key (mstr_staff_license_id,info_staff_id,mstr_license_id);
alter table tests.mstr_staff_license
     add constraint mstr_staff_license_IX1 unique (mstr_license_id);
create unique index mstr_staff_capability_PKI
    on tests.mstr_staff_capability(mstr_staff_capability_id,info_staff_id);
alter table tests.mstr_staff_capability
    add constraint mstr_staff_capability_PKC primary key (mstr_staff_capability_id,info_staff_id);
create unique index mstr_sign_PKI
    on tests.mstr_sign(mstr_sign_id,info_staff_id);
alter table tests.mstr_sign
    add constraint mstr_sign_PKC primary key (mstr_sign_id,info_staff_id);
create unique index mstr_license_PKI
    on tests.mstr_license(mstr_license_id);
alter table tests.mstr_license
    add constraint mstr_license_PKC primary key (mstr_license_id);
create unique index mstr_capability_PKI
    on tests.mstr_capability(mstr_capability_id);
alter table tests.mstr_capability
    add constraint mstr_capability_PKC primary key (mstr_capability_id);
create unique index info_staff_PKI
    on tests.info_staff(info_staff_id);
alter table tests.info_staff
    add constraint info_staff_PKC primary key (info_staff_id);
create unique index info_department_PKI
    on tests.info_department(info_department_id);
alter table tests.info_department
    add constraint info_department_PKC primary key (info_department_id);
create unique index info_office_PKI
    on tests.info_office(info_office_id);
alter table tests.info_office
    add constraint info_office_PKC primary key (info_office_id);
--202.add table foreign key
alter table tests.history_mstr_shipping_kind add constraint history_mstr_shipping_kind_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_shipping_kind add constraint mstr_shipping_kind_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_shipping_kind add constraint mstr_shipping_kind_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_item_size_kind add constraint history_mstr_item_size_kind_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_item_size_kind add constraint mstr_item_size_kind_FK2 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_item_size_kind add constraint mstr_item_size_kind_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_item_kind add constraint history_mstr_item_kind_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_item_kind add constraint history_mstr_item_kind_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_item_kind add constraint mstr_item_kind_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_item_kind add constraint mstr_item_kind_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_shared_appellations add constraint history_shared_appellations_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_shared_appellations add constraint history_shared_appellations_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.shared_appellations add constraint shared_appellations_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_shared_dictionary add constraint history_shared_dictionary_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.shared_dictionary add constraint shared_dictionary_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_equipment add constraint history_mstr_equipment_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_equipmen_kind add constraint history_mstr_equipmen_kind_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_equipment_kind add constraint mstr_equipment_kind_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_equipment_kind add constraint mstr_equipment_kind_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_staff_icon add constraint history_info_staff_icon_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_staff_icon add constraint info_staff_icon_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_item_hcdcs add constraint history_mstr_item_hcdcs_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_item_hcdcs add constraint mstr_item_hcdcs_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_document_content_tree add constraint history_mstr_document_content_tree_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_document_content add constraint history_mstr_document_content_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_document_content_tree add constraint mstr_document_content_tree_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_document_content add constraint mstr_document_content_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_document_tier add constraint history_mstr_document_tier_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_document_tier add constraint mstr_document_tier_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_document_tree add constraint history_mstr_document_tree_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_document_tree add constraint mstr_document_tree_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_document add constraint history_mstr_document_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_document add constraint mstr_document_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_container_tree add constraint trans_container_tree_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_location_tree add constraint history_mstr_location_tree_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_location_tree add constraint mstr_location_tree_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_department_tree add constraint history_info_department_tree_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_department_tree add constraint info_department_tree_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_inspection_operation add constraint history_mstr_inspection_operation_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_inspection_operation add constraint mstr_inspection_operation_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_inspection_operation_task add constraint history_mstr_inspection_operation_task_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_inspection_operation_task add constraint mstr_inspection_operation_task_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_department_access_permission add constraint history_info_department_access_permission_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_department_access_permission add constraint info_department_access_permission_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_assign add constraint history_info_assign_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_item_provision add constraint mstr_item_provision_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_item_provision add constraint history_mstr_item_provision_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_equipment_provision add constraint history_mstr_equipment_provision_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_equipment_provision add constraint mstr_equipment_provision_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_container add constraint trans_container_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_app_status add constraint history_info_app_status_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_app_status add constraint info_app_status_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_announcement  add constraint trans_announcement _updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_operation_task add constraint history_mstr_operation_task_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_report add constraint history_mstr_report_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_item_operation_task add constraint history_mstr_item_operation_task_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_item_operation add constraint history_mstr_item_operation_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_task_tree add constraint history_mstr_task_tree_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_outsource_available add constraint history_mstr_outsource_available_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_equipment_available add constraint history_mstr_equipment_available_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_task add constraint history_mstr_task_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_task_location add constraint history_mstr_task_location_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_task_location add constraint mstr_task_location_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_task_group add constraint history_mstr_task_group_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_operation add constraint history_mstr_operation_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_manufacturer add constraint history_mstr_manufacturer_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_inspection add constraint history_mstr_inspection_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_inspection_formula add constraint history_mstr_inspection_formula_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_item_size add constraint history_mstr_item_size_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_item_tree add constraint history_mstr_item_tree_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_item add constraint history_mstr_item_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_audit_std_checkitem add constraint history_mstr_audit_std_checkitem_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_audit_std add constraint history_mstr_audit_std_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_location add constraint history_mstr_location_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_equipment_tag add constraint history_mstr_equipment_tag_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_stakeholder_contact add constraint history_mstr_stakeholder_contact_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_stakeholder_provision add constraint history_mstr_stakeholder_provision_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_stakeholder add constraint history_mstr_stakeholder_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_staff_license add constraint history_mstr_staff_license_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_license add constraint history_mstr_license_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_staff_access_permission add constraint history_info_staff_access_permission_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.historymstr_approval_scope_pattern add constraint historymstr_approval_scope_pattern_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_approval_pattern add constraint history_mstr_approval_pattern_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_capability add constraint history_mstr_capability_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_approval_pattern_detail add constraint history_mstr_approval_pattern_detail_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_approval add constraint history_mstr_approval_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_role add constraint history_info_role_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_staff_capability add constraint history_mstr_staff_capability_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_mstr_sign add constraint history_mstr_sign_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_staff add constraint history_info_staff_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_provision add constraint history_info_provision_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_address add constraint history_info_address_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_shared_unit add constraint history_shared_unit_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_office add constraint history_info_office_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_department add constraint history_info_department_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_access_path_approval add constraint history_info_access_path_approval_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_access_path add constraint history_info_access_path_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_company add constraint history_info_company_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_company add constraint info_company_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_company add constraint info_company_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.history_info_app add constraint history_info_app_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_anonymouse add constraint trans_anonymouse_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_file_reminder add constraint trans_file_reminder_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_equipment_available add constraint mstr_equipment_available_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_outsource_available add constraint mstr_outsource_available_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_task_group add constraint mstr_task_group_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_task_group add constraint mstr_task_group_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_unrecognized_detail add constraint trans_unrecognized_detail_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_unrecognized add constraint trans_unrecognized_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_stakeholder_provision add constraint mstr_stakeholder_provision_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_provision add constraint info_provision_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_provision add constraint info_provision_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_inspection_formula add constraint mstr_inspection_formula_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_manufacturer add constraint mstr_manufacturer_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_manufacturer add constraint mstr_manufacturer_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_approval_scope_pattern add constraint mstr_approval_scope_pattern_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_approval_pattern_detail add constraint mstr_approval_pattern_detail_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_address add constraint info_address_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_inspection_report add constraint trans_inspection_report_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_report add constraint mstr_report_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_equipment_tag add constraint mstr_equipment_tag_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_access_path_approval add constraint info_access_path_approval_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_approved add constraint trans_approved_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_approval add constraint mstr_approval_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_approval add constraint mstr_approval_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_role add constraint info_role_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_approval_pattern add constraint mstr_approval_pattern_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_approval_pattern add constraint mstr_approval_pattern_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_approval add constraint trans_approval_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_approval_gr add constraint trans_approval_gr_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_audit_member add constraint trans_audit_member_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_auditor add constraint trans_auditor_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_audit_team add constraint trans_audit_team_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_audit add constraint trans_audit_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_task_risk add constraint trans_task_risk_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_order_detail_risk add constraint trans_order_detail_risk_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_prevetion_detail add constraint trans_prevetion_detail_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_prevention add constraint trans_prevention_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_order_risk add constraint trans_order_risk_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_equipment_lent add constraint trans_equipment_lent_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_item_operation add constraint mstr_item_operation_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_disposal_detail add constraint trans_disposal_detail_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_audit_std_checkitem add constraint mstr_audit_std_checkitem_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_audit_std_checkitem add constraint mstr_audit_std_checkitem_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_audit_std add constraint mstr_audit_std_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_audit_std add constraint mstr_audit_std_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_risk add constraint trans_risk_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_observer_preventive add constraint trans_observer_preventive_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_observer_disposal add constraint trans_observer_disposal_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_complaint_stakeholder_adapter add constraint trans_complaint_stakeholder_adapter_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_complaint_equipment_adapter add constraint trans_complaint_equipment_adapter_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_complaint_process_adapter add constraint trans_complaint_process_adapter_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_complaint_order_adapter add constraint trans_complaint_order_adapter_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_disposal add constraint trans_disposal_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_recurrence_prevention add constraint trans_recurrence_prevention_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_complaint add constraint trans_complaint_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_inspect_imp_file add constraint trans_inspect_imp_file_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_inspect_record add constraint trans_inspect_record_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_inspect_sch_detail add constraint trans_inspect_sch_detail_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_inspect_sch add constraint trans_inspect_sch_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_inspection add constraint mstr_inspection_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_assign add constraint info_assign_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_staff_access_permission add constraint info_staff_access_permission_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_app add constraint info_app_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_access_path add constraint info_access_path_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_inventory_request add constraint trans_inventory_request_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_product_rez add constraint trans_product_rez_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_work_record_visiter add constraint trans_work_record_visiter_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_purchase_rec_visiter add constraint trans_purchase_rec_visiter_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_visiter add constraint trans_visiter_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_item_size add constraint mstr_item_size_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_file add constraint trans_file_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_operation_task add constraint mstr_operation_task_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_operation_task add constraint mstr_operation_task_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_operation add constraint mstr_operation_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_operation add constraint mstr_operation_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_convey add constraint trans_convey_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_work_record_certificate add constraint trans_work_record_certificate_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_certificate add constraint trans_certificate_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_purchase_rec add constraint trans_purchase_rec_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_purchase_certification add constraint trans_purchase_certification_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_purchase_rez add constraint trans_purchase_rez_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_purchase_detail add constraint trans_purchase_detail_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_order_detail add constraint trans_order_detail_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_shipping_record add constraint trans_shipping_record_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_ship_order add constraint trans_ship_order_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_work_record add constraint trans_work_record_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_inventory_apply add constraint trans_inventory_apply_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_product_detail add constraint trans_product_detail_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_product add constraint trans_product_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_resorce_plan add constraint trans_resorce_plan_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_purchase add constraint trans_purchase_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_order add constraint trans_order_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_item_operation_task add constraint mstr_item_operation_task_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_item_tree add constraint mstr_item_tree_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_item_tree add constraint mstr_item_tree_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.shared_unit add constraint shared_unit_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.shared_unit add constraint shared_unit_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_item add constraint mstr_item_FK2 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_item add constraint mstr_item_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_task_tree add constraint mstr_task_tree_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_task_tree add constraint mstr_task_tree_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_task add constraint mstr_task_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_task add constraint mstr_task_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_location add constraint mstr_location_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_location add constraint mstr_location_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_equipment add constraint mstr_equipment_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_stakeholder_contact add constraint mstr_stakeholder_contact_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_stakeholder_contact add constraint mstr_stakeholder_contact_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_stakeholder add constraint mstr_stakeholder_FK2 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_stakeholder add constraint mstr_stakeholder_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_staff_license add constraint mstr_staff_license_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_staff_capability add constraint mstr_staff_capability_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_sign add constraint mstr_sign_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_license add constraint mstr_license_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_license add constraint mstr_license_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_capability add constraint mstr_capability_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.mstr_capability add constraint mstr_capability_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_staff add constraint info_staff_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_staff add constraint info_staff_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_department add constraint info_department_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_department add constraint info_department_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_office add constraint info_office_FK1 foreign key (shared_appellations_id) references tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.info_office add constraint info_office_updater_FK foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
--202.add table trigger
-- history_mstr_shipping_kind update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_shipping_kind() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_shipping_kind BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_shipping_kind FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_shipping_kind();

-- mstr_shipping_kind history trigger
-- mstr_shipping_kind update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_shipping_kind() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_shipping_kind_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_shipping_kind BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_shipping_kind FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_shipping_kind();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_shipping_kind() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_shipping_kind WHERE mstr_shipping_kind_id=NEW.mstr_shipping_kind_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_shipping_kind (
            mstr_shipping_kind_id,
            code,
            shared_appellations_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_shipping_kind_id,
            NEW.code,
            NEW.shared_appellations_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_shipping_kind BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_shipping_kind FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_shipping_kind();

-- history_mstr_item_size_kind update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_item_size_kind() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_item_size_kind BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_item_size_kind FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_item_size_kind();

-- mstr_item_size_kind history trigger
-- mstr_item_size_kind update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_item_size_kind() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_item_size_kind_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_item_size_kind BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_size_kind FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_item_size_kind();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_item_size_kind() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_item_size_kind WHERE mstr_item_size_kind_id=NEW.mstr_item_size_kind_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_item_size_kind (
            mstr_item_size_kind_id,
            code,
            shared_appellations_id,
            shared_unit_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_item_size_kind_id,
            NEW.code,
            NEW.shared_appellations_id,
            NEW.shared_unit_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_item_size_kind BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_size_kind FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_item_size_kind();

-- history_mstr_item_kind update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_item_kind() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_item_kind BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_item_kind FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_item_kind();

-- mstr_item_kind history trigger
-- mstr_item_kind update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_item_kind() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_item_kind_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_item_kind BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_kind FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_item_kind();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_item_kind() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_item_kind WHERE mstr_item_kind_id=NEW.mstr_item_kind_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_item_kind (
            mstr_item_kind_id,
            code,
            shared_appellations_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_item_kind_id,
            NEW.code,
            NEW.shared_appellations_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_item_kind BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_kind FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_item_kind();

-- history_shared_appellations update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_shared_appellations() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_shared_appellations BEFORE INSERT OR UPDATE OR DELETE ON tests.history_shared_appellations FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_shared_appellations();

-- shared_appellations history trigger
-- shared_appellations update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_shared_appellations() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.shared_appellations_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_shared_appellations BEFORE INSERT OR UPDATE OR DELETE ON tests.shared_appellations FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_shared_appellations();


CREATE OR REPLACE FUNCTION tests.trg_02_history_shared_appellations() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_shared_appellations WHERE shared_appellations_id=NEW.shared_appellations_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_shared_appellations (
            shared_appellations_id,
            name,
            pronunciation,
            nickname,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.shared_appellations_id,
            NEW.name,
            NEW.pronunciation,
            NEW.nickname,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_shared_appellations BEFORE INSERT OR UPDATE OR DELETE ON tests.shared_appellations FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_shared_appellations();

-- history_shared_dictionary update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_shared_dictionary() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_shared_dictionary BEFORE INSERT OR UPDATE OR DELETE ON tests.history_shared_dictionary FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_shared_dictionary();

-- shared_dictionary history trigger
-- shared_dictionary update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_shared_dictionary() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.shared_dictionary_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_shared_dictionary BEFORE INSERT OR UPDATE OR DELETE ON tests.shared_dictionary FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_shared_dictionary();


CREATE OR REPLACE FUNCTION tests.trg_02_history_shared_dictionary() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_shared_dictionary WHERE shared_dictionary_id=NEW.shared_dictionary_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_shared_dictionary (
            shared_dictionary_id,
            ja,
            en,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.shared_dictionary_id,
            NEW.ja,
            NEW.en,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_shared_dictionary BEFORE INSERT OR UPDATE OR DELETE ON tests.shared_dictionary FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_shared_dictionary();

-- history_mstr_equipment update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_equipment() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_equipment BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_equipment FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_equipment();

-- history_mstr_equipmen_kind update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_equipmen_kind() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_equipmen_kind BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_equipmen_kind FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_equipmen_kind();

-- mstr_equipment_kind update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_equipment_kind() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_equipment_kind_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_equipment_kind BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_equipment_kind FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_equipment_kind();

-- history_info_staff_icon update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_staff_icon() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_staff_icon BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_staff_icon FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_staff_icon();

-- info_staff_icon history trigger
-- info_staff_icon update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_staff_icon() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_role_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_staff_icon BEFORE INSERT OR UPDATE OR DELETE ON tests.info_staff_icon FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_staff_icon();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_staff_icon() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_staff_icon WHERE info_role_id=NEW.info_role_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_staff_icon (
            info_role_id,
            trans_file_id,
            info_staff_id,
            info_staff_history_id,
            name,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_role_id,
            NEW.trans_file_id,
            NEW.info_staff_id,
            NEW.info_staff_history_id,
            NEW.name,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_staff_icon BEFORE INSERT OR UPDATE OR DELETE ON tests.info_staff_icon FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_staff_icon();

-- history_mstr_item_hcdcs update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_item_hcdcs() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_item_hcdcs BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_item_hcdcs FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_item_hcdcs();

-- mstr_item_hcdcs history trigger
-- mstr_item_hcdcs update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_item_hcdcs() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_item_hcds_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_item_hcdcs BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_hcdcs FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_item_hcdcs();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_item_hcdcs() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_item_hcdcs WHERE mstr_item_hcds_id=NEW.mstr_item_hcds_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_item_hcdcs (
            mstr_item_hcds_id,
            mstr_item_id,
            iso3166_3,
            code,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_item_hcds_id,
            NEW.mstr_item_id,
            NEW.iso3166_3,
            NEW.code,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_item_hcdcs BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_hcdcs FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_item_hcdcs();

-- history_mstr_document_content_tree update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_document_content_tree() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_document_content_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_document_content_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_document_content_tree();

-- hrchy_mstr_document_content update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_hrchy_mstr_document_content() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.hrchy_mstr_location_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_hrchy_mstr_document_content BEFORE INSERT OR UPDATE OR DELETE ON tests.hrchy_mstr_document_content FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_hrchy_mstr_document_content();

-- history_mstr_document_content update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_document_content() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_document_content BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_document_content FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_document_content();

-- mstr_document_content_tree history trigger
-- mstr_document_content_tree update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_document_content_tree() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_document_content_tree_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_document_content_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_document_content_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_document_content_tree();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_document_content_tree() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_document_content_tree WHERE mstr_document_content_tree_id=NEW.mstr_document_content_tree_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_document_content_tree (
            mstr_document_content_tree_id,
            mstr_document_content_id,
            parent_mstr_document_content_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_document_content_tree_id,
            NEW.mstr_document_content_id,
            NEW.parent_mstr_document_content_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_document_content_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_document_content_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_document_content_tree();

-- mstr_document_content history trigger
-- mstr_document_content update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_document_content() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_document_content_id := gen_random_uuid();
        NEW.mstr_document_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_document_content BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_document_content FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_document_content();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_document_content() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_document_content WHERE mstr_document_content_id=NEW.mstr_document_content_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_document_content (
            mstr_document_content_id,
            mstr_document_id,
            code,
            name,
            sequence,
            title,
            content,
            image_content,
            trans_file_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_document_content_id,
            NEW.mstr_document_id,
            NEW.code,
            NEW.name,
            NEW.sequence,
            NEW.title,
            NEW.content,
            NEW.image_content,
            NEW.trans_file_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_document_content BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_document_content FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_document_content();

-- history_mstr_document_tier update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_document_tier() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_document_tier BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_document_tier FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_document_tier();

-- mstr_document_tier history trigger
-- mstr_document_tier update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_document_tier() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_document_tier_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_document_tier BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_document_tier FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_document_tier();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_document_tier() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_document_tier WHERE mstr_document_tier_id=NEW.mstr_document_tier_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_document_tier (
            mstr_document_tier_id,
            code,
            name,
            trans_file_id,
            attributive_noun,
            Identifier,
            tier_number,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_document_tier_id,
            NEW.code,
            NEW.name,
            NEW.trans_file_id,
            NEW.attributive_noun,
            NEW.Identifier,
            NEW.tier_number,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_document_tier BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_document_tier FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_document_tier();

-- history_mstr_document_tree update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_document_tree() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_document_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_document_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_document_tree();

-- hrchy_mstr_documet update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_hrchy_mstr_documet() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.hrchy_mstr_document_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_hrchy_mstr_documet BEFORE INSERT OR UPDATE OR DELETE ON tests.hrchy_mstr_documet FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_hrchy_mstr_documet();

-- mstr_document_tree history trigger
-- mstr_document_tree update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_document_tree() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_document_tree_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_document_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_document_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_document_tree();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_document_tree() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_document_tree WHERE mstr_document_tree_id=NEW.mstr_document_tree_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_document_tree (
            mstr_document_tree_id,
            mstr_document_id,
            parent_mstr_document_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_document_tree_id,
            NEW.mstr_document_id,
            NEW.parent_mstr_document_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_document_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_document_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_document_tree();

-- history_mstr_document update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_document() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_document BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_document FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_document();

-- mstr_document history trigger
-- mstr_document update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_document() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_document_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_document BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_document FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_document();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_document() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_document WHERE mstr_document_id=NEW.mstr_document_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_document (
            mstr_document_id,
            code,
            name,
            mstr_document_tier_id,
            trans_file_id,
            title,
            control_number,
            version_code,
            version_name,
            trans_approved_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_document_id,
            NEW.code,
            NEW.name,
            NEW.mstr_document_tier_id,
            NEW.trans_file_id,
            NEW.title,
            NEW.control_number,
            NEW.version_code,
            NEW.version_name,
            NEW.trans_approved_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_document BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_document FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_document();

-- trans_container_tree update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_container_tree() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_container_tree_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_container_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_container_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_container_tree();

-- history_mstr_location_tree update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_location_tree() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_location_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_location_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_location_tree();

-- mstr_location_tree history trigger
-- mstr_location_tree update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_location_tree() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_location_tree_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_location_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_location_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_location_tree();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_location_tree() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_location_tree WHERE mstr_location_tree_id=NEW.mstr_location_tree_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_location_tree (
            mstr_location_tree_id,
            mstr_location_id,
            parent_mstr_location_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_location_tree_id,
            NEW.mstr_location_id,
            NEW.parent_mstr_location_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_location_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_location_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_location_tree();

-- history_info_department_tree update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_department_tree() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_department_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_department_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_department_tree();

-- info_department_tree history trigger
-- info_department_tree update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_department_tree() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_department_tree_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_department_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.info_department_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_department_tree();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_department_tree() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_department_tree WHERE info_department_tree_id=NEW.info_department_tree_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_department_tree (
            info_department_tree_id,
            info_department_id,
            parent_info_department_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_department_tree_id,
            NEW.info_department_id,
            NEW.parent_info_department_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_department_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.info_department_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_department_tree();

-- hrchy_mstr_task update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_hrchy_mstr_task() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.hrchy_mstr_task_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_hrchy_mstr_task BEFORE INSERT OR UPDATE OR DELETE ON tests.hrchy_mstr_task FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_hrchy_mstr_task();

-- hrchy_mstr_item update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_hrchy_mstr_item() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.hrchy_mstr_item_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_hrchy_mstr_item BEFORE INSERT OR UPDATE OR DELETE ON tests.hrchy_mstr_item FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_hrchy_mstr_item();

-- history_mstr_inspection_operation update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_inspection_operation() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_inspection_operation BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_inspection_operation FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_inspection_operation();

-- mstr_inspection_operation history trigger
-- mstr_inspection_operation update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_inspection_operation() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_inspection_operation_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_inspection_operation BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_inspection_operation FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_inspection_operation();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_inspection_operation() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_inspection_operation WHERE mstr_inspection_operation_id=NEW.mstr_inspection_operation_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_inspection_operation (
            mstr_inspection_operation_id,
            mstr_operation_id,
            mstr_equipment_id,
            mstr_item_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_inspection_operation_id,
            NEW.mstr_operation_id,
            NEW.mstr_equipment_id,
            NEW.mstr_item_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_inspection_operation BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_inspection_operation FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_inspection_operation();

-- history_mstr_inspection_operation_task update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_inspection_operation_task() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_inspection_operation_task BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_inspection_operation_task FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_inspection_operation_task();

-- mstr_inspection_operation_task history trigger
-- mstr_inspection_operation_task update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_inspection_operation_task() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_inspection_operation_task_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_inspection_operation_task BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_inspection_operation_task FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_inspection_operation_task();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_inspection_operation_task() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_inspection_operation_task WHERE mstr_inspection_operation_task_id=NEW.mstr_inspection_operation_task_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_inspection_operation_task (
            mstr_inspection_operation_task_id,
            mstr_operation_task_id,
            mstr_operation_id,
            mstr_task_id,
            sequence,
            mstr_inspection_operation_id,
            commencement_date,
            time_interval,
            mstr_inspection_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_inspection_operation_task_id,
            NEW.mstr_operation_task_id,
            NEW.mstr_operation_id,
            NEW.mstr_task_id,
            NEW.sequence,
            NEW.mstr_inspection_operation_id,
            NEW.commencement_date,
            NEW.time_interval,
            NEW.mstr_inspection_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_inspection_operation_task BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_inspection_operation_task FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_inspection_operation_task();

-- history_info_department_access_permission update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_department_access_permission() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_department_access_permission BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_department_access_permission FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_department_access_permission();

-- info_department_access_permission history trigger
-- info_department_access_permission update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_department_access_permission() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_department_access_permission_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_department_access_permission BEFORE INSERT OR UPDATE OR DELETE ON tests.info_department_access_permission FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_department_access_permission();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_department_access_permission() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_department_access_permission WHERE info_department_access_permission_id=NEW.info_department_access_permission_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_department_access_permission (
            info_department_access_permission_id,
            info_access_path_id,
            info_app_id,
            info_department_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_department_access_permission_id,
            NEW.info_access_path_id,
            NEW.info_app_id,
            NEW.info_department_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_department_access_permission BEFORE INSERT OR UPDATE OR DELETE ON tests.info_department_access_permission FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_department_access_permission();

-- history_info_assign update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_assign() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_assign BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_assign FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_assign();

-- mstr_item_provision history trigger
-- mstr_item_provision update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_item_provision() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_item_provision_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_item_provision BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_provision FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_item_provision();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_item_provision() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_item_provision WHERE mstr_item_provision_id=NEW.mstr_item_provision_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_item_provision (
            mstr_item_provision_id,
            info_provision_id,
            mstr_item_id,
            start_at,
            stop_at,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_item_provision_id,
            NEW.info_provision_id,
            NEW.mstr_item_id,
            NEW.start_at,
            NEW.stop_at,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_item_provision BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_provision FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_item_provision();

-- history_mstr_item_provision update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_item_provision() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_item_provision BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_item_provision FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_item_provision();

-- history_mstr_equipment_provision update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_equipment_provision() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_equipment_provision BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_equipment_provision FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_equipment_provision();

-- mstr_equipment_provision history trigger
-- mstr_equipment_provision update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_equipment_provision() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_equipment_provision_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_equipment_provision BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_equipment_provision FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_equipment_provision();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_equipment_provision() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_equipment_provision WHERE mstr_equipment_provision_id=NEW.mstr_equipment_provision_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_equipment_provision (
            mstr_equipment_provision_id,
            info_provision_id,
            mstr_equipment_id,
            start_at,
            stop_at,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_equipment_provision_id,
            NEW.info_provision_id,
            NEW.mstr_equipment_id,
            NEW.start_at,
            NEW.stop_at,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_equipment_provision BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_equipment_provision FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_equipment_provision();

-- hrchy_trans_container update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_hrchy_trans_container() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.hrchy_trans_container_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_hrchy_trans_container BEFORE INSERT OR UPDATE OR DELETE ON tests.hrchy_trans_container FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_hrchy_trans_container();

-- trans_container update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_container() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_container_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_container BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_container FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_container();

-- hrchy_info_department update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_hrchy_info_department() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.hrchy_info_department_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_hrchy_info_department BEFORE INSERT OR UPDATE OR DELETE ON tests.hrchy_info_department FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_hrchy_info_department();

-- history_info_app_status update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_app_status() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_app_status BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_app_status FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_app_status();

-- info_app_status history trigger
-- info_app_status update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_app_status() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_app_status_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_app_status BEFORE INSERT OR UPDATE OR DELETE ON tests.info_app_status FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_app_status();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_app_status() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_app_status WHERE info_app_status_id=NEW.info_app_status_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_app_status (
            info_app_status_id,
            info_app_id,
            status,
            plan_date,
            start_date,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_app_status_id,
            NEW.info_app_id,
            NEW.status,
            NEW.plan_date,
            NEW.start_date,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_app_status BEFORE INSERT OR UPDATE OR DELETE ON tests.info_app_status FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_app_status();

-- trans_announcement  update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_announcement () RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_authtoken_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_announcement  BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_announcement  FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_announcement ();

-- history_mstr_operation_task update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_operation_task() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_operation_task BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_operation_task FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_operation_task();

-- history_mstr_report update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_report() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_report BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_report FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_report();

-- history_mstr_item_operation_task update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_item_operation_task() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_item_operation_task BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_item_operation_task FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_item_operation_task();

-- history_mstr_item_operation update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_item_operation() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_item_operation BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_item_operation FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_item_operation();

-- history_mstr_task_tree update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_task_tree() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_task_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_task_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_task_tree();

-- history_mstr_outsource_available update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_outsource_available() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_outsource_available BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_outsource_available FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_outsource_available();

-- history_mstr_equipment_available update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_equipment_available() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_equipment_available BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_equipment_available FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_equipment_available();

-- history_mstr_task update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_task() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_task BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_task FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_task();

-- history_mstr_task_location update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_task_location() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_task_location BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_task_location FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_task_location();

-- mstr_task_location history trigger
-- mstr_task_location update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_task_location() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_task_location_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_task_location BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_task_location FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_task_location();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_task_location() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_task_location WHERE mstr_task_location_id=NEW.mstr_task_location_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_task_location (
            mstr_task_location_id,
            mstr_task_id,
            info_department_id,
            info_company_id,
            mstr_location_id,
            mstr_equipment_id,
            mstr_stakeholder_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_task_location_id,
            NEW.mstr_task_id,
            NEW.info_department_id,
            NEW.info_company_id,
            NEW.mstr_location_id,
            NEW.mstr_equipment_id,
            NEW.mstr_stakeholder_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_task_location BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_task_location FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_task_location();

-- history_mstr_task_group update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_task_group() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_task_group BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_task_group FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_task_group();

-- history_mstr_operation update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_operation() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_operation BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_operation FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_operation();

-- history_mstr_manufacturer update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_manufacturer() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_manufacturer BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_manufacturer FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_manufacturer();

-- history_mstr_inspection update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_inspection() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_inspection BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_inspection FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_inspection();

-- history_mstr_inspection_formula update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_inspection_formula() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_inspection_formula BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_inspection_formula FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_inspection_formula();

-- history_mstr_item_size update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_item_size() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_item_size BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_item_size FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_item_size();

-- history_mstr_item_tree update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_item_tree() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_item_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_item_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_item_tree();

-- history_mstr_item update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_item() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_item BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_item FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_item();

-- history_mstr_audit_std_checkitem update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_audit_std_checkitem() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_audit_std_checkitem BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_audit_std_checkitem FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_audit_std_checkitem();

-- history_mstr_audit_std update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_audit_std() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_audit_std BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_audit_std FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_audit_std();

-- history_mstr_location update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_location() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_location BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_location FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_location();

-- history_mstr_equipment_tag update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_equipment_tag() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_equipment_tag BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_equipment_tag FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_equipment_tag();

-- history_mstr_stakeholder_contact update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_stakeholder_contact() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_stakeholder_contact BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_stakeholder_contact FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_stakeholder_contact();

-- history_mstr_stakeholder_provision update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_stakeholder_provision() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_stakeholder_provision BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_stakeholder_provision FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_stakeholder_provision();

-- history_mstr_stakeholder update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_stakeholder() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_stakeholder BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_stakeholder FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_stakeholder();

-- history_mstr_staff_license update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_staff_license() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_staff_license BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_staff_license FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_staff_license();

-- history_mstr_license update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_license() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_license BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_license FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_license();

-- history_info_staff_access_permission update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_staff_access_permission() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_staff_access_permission BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_staff_access_permission FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_staff_access_permission();

-- historymstr_approval_scope_pattern update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_historymstr_approval_scope_pattern() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_historymstr_approval_scope_pattern BEFORE INSERT OR UPDATE OR DELETE ON tests.historymstr_approval_scope_pattern FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_historymstr_approval_scope_pattern();

-- history_mstr_approval_pattern update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_approval_pattern() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_approval_pattern BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_approval_pattern FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_approval_pattern();

-- history_mstr_capability update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_capability() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_capability BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_capability FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_capability();

-- history_mstr_approval_pattern_detail update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_approval_pattern_detail() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_approval_pattern_detail BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_approval_pattern_detail FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_approval_pattern_detail();

-- history_mstr_approval update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_approval() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_approval BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_approval FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_approval();

-- history_info_role update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_role() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_role BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_role FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_role();

-- history_mstr_staff_capability update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_staff_capability() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_staff_capability BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_staff_capability FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_staff_capability();

-- history_mstr_sign update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_sign() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_mstr_sign BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_sign FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_mstr_sign();

-- history_info_staff update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_staff() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_staff BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_staff FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_staff();

-- history_info_provision update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_provision() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_provision BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_provision FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_provision();

-- history_info_address update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_address() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_address BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_address FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_address();

-- history_shared_unit update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_shared_unit() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_shared_unit BEFORE INSERT OR UPDATE OR DELETE ON tests.history_shared_unit FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_shared_unit();

-- history_info_office update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_office() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_office BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_office FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_office();

-- history_info_department update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_department() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_department BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_department FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_department();

-- history_info_access_path_approval update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_access_path_approval() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_access_path_approval BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_access_path_approval FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_access_path_approval();

-- history_info_access_path update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_access_path() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_access_path BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_access_path FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_access_path();

-- history_info_company update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_company() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_company BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_company FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_company();

-- info_company history trigger
-- info_company update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_company() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_company_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_company BEFORE INSERT OR UPDATE OR DELETE ON tests.info_company FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_company();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_company() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_company WHERE info_company_id=NEW.info_company_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_company (
            info_company_id,
            shared_appellations_id,
            info_address_id,
            web_page,
            ceo,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_company_id,
            NEW.shared_appellations_id,
            NEW.info_address_id,
            NEW.web_page,
            NEW.ceo,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_company BEFORE INSERT OR UPDATE OR DELETE ON tests.info_company FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_company();

-- history_info_app update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_info_app() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_history_info_app BEFORE INSERT OR UPDATE OR DELETE ON tests.history_info_app FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_history_info_app();

-- trans_anonymouse update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_anonymouse() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_anonymouse_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_anonymouse BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_anonymouse FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_anonymouse();

-- trans_file_reminder update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_file_reminder() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_file_reminder_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_file_reminder BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_file_reminder FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_file_reminder();

-- mstr_equipment_available history trigger
-- mstr_equipment_available update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_equipment_available() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_equipment_available_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_equipment_available BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_equipment_available FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_equipment_available();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_equipment_available() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_equipment_available WHERE mstr_equipment_available_id=NEW.mstr_equipment_available_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_equipment_available (
            mstr_equipment_available_id,
            mstr_task_location_id,
            mstr_task_id,
            mstr_equipment_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_equipment_available_id,
            NEW.mstr_task_location_id,
            NEW.mstr_task_id,
            NEW.mstr_equipment_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_equipment_available BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_equipment_available FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_equipment_available();

-- mstr_outsource_available history trigger
-- mstr_outsource_available update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_outsource_available() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_outsource_available_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_outsource_available BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_outsource_available FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_outsource_available();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_outsource_available() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_outsource_available WHERE mstr_outsource_available_id=NEW.mstr_outsource_available_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_outsource_available (
            mstr_outsource_available_id,
            mstr_task_location_id,
            mstr_task_id,
            mstr_stakeholder_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_outsource_available_id,
            NEW.mstr_task_location_id,
            NEW.mstr_task_id,
            NEW.mstr_stakeholder_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_outsource_available BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_outsource_available FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_outsource_available();

-- mstr_task_group history trigger
-- mstr_task_group update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_task_group() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_task_group_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_task_group BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_task_group FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_task_group();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_task_group() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_task_group WHERE mstr_task_group_id=NEW.mstr_task_group_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_task_group (
            mstr_task_group_id,
            code,
            shared_appellations_id,
            details,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_task_group_id,
            NEW.code,
            NEW.shared_appellations_id,
            NEW.details,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_task_group BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_task_group FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_task_group();

-- trans_unrecognized_detail update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_unrecognized_detail() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_unrecognized_detail_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_unrecognized_detail BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_unrecognized_detail FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_unrecognized_detail();

-- trans_unrecognized update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_unrecognized() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_unrecognized_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_unrecognized BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_unrecognized FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_unrecognized();

-- mstr_stakeholder_provision history trigger
-- mstr_stakeholder_provision update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_stakeholder_provision() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_stakeholder_provision_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_stakeholder_provision BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_stakeholder_provision FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_stakeholder_provision();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_stakeholder_provision() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_stakeholder_provision WHERE mstr_stakeholder_provision_id=NEW.mstr_stakeholder_provision_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_stakeholder_provision (
            mstr_stakeholder_provision_id,
            mstr_stakeholder_id,
            info_provision_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_stakeholder_provision_id,
            NEW.mstr_stakeholder_id,
            NEW.info_provision_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_stakeholder_provision BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_stakeholder_provision FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_stakeholder_provision();

-- info_provision history trigger
-- info_provision update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_provision() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_provision_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_provision BEFORE INSERT OR UPDATE OR DELETE ON tests.info_provision FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_provision();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_provision() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_provision WHERE info_provision_id=NEW.info_provision_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_provision (
            info_provision_id,
            info_company_id,
            code,
            shared_appellations_id,
            details,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_provision_id,
            NEW.info_company_id,
            NEW.code,
            NEW.shared_appellations_id,
            NEW.details,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_provision BEFORE INSERT OR UPDATE OR DELETE ON tests.info_provision FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_provision();

-- mstr_inspection_formula history trigger
-- mstr_inspection_formula update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_inspection_formula() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_inspection_formula_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_inspection_formula BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_inspection_formula FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_inspection_formula();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_inspection_formula() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_inspection_formula WHERE mstr_inspection_formula_id=NEW.mstr_inspection_formula_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_inspection_formula (
            mstr_inspection_formula_id,
            formula_class,
            arg_class,
            type_class,
            format_class,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_inspection_formula_id,
            NEW.formula_class,
            NEW.arg_class,
            NEW.type_class,
            NEW.format_class,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_inspection_formula BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_inspection_formula FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_inspection_formula();

-- mstr_manufacturer history trigger
-- mstr_manufacturer update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_manufacturer() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_manufacturer_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_manufacturer BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_manufacturer FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_manufacturer();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_manufacturer() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_manufacturer WHERE mstr_manufacturer_id=NEW.mstr_manufacturer_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_manufacturer (
            mstr_manufacturer_id,
            code,
            shared_appellations_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_manufacturer_id,
            NEW.code,
            NEW.shared_appellations_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_manufacturer BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_manufacturer FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_manufacturer();

-- mstr_approval_scope_pattern update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_approval_scope_pattern() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_approval_scope_pattern_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_approval_scope_pattern BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_approval_scope_pattern FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_approval_scope_pattern();

-- mstr_approval_pattern_detail history trigger
-- mstr_approval_pattern_detail update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_approval_pattern_detail() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_approval_pattern_detail_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_approval_pattern_detail BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_approval_pattern_detail FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_approval_pattern_detail();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_approval_pattern_detail() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_approval_pattern_detail WHERE mstr_approval_pattern_detail_id=NEW.mstr_approval_pattern_detail_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_approval_pattern_detail (
            mstr_approval_pattern_detail_id,
            mstr_approval_id,
            mstr_approval_pattern_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_approval_pattern_detail_id,
            NEW.mstr_approval_id,
            NEW.mstr_approval_pattern_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_approval_pattern_detail BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_approval_pattern_detail FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_approval_pattern_detail();

-- info_address history trigger
-- info_address update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_address() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_address_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_address BEFORE INSERT OR UPDATE OR DELETE ON tests.info_address FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_address();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_address() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_address WHERE info_address_id=NEW.info_address_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_address (
            info_address_id,
            iso3166_3,
            zip_code,
            address1,
            address2,
            bill,
            phone,
            fax_number,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_address_id,
            NEW.iso3166_3,
            NEW.zip_code,
            NEW.address1,
            NEW.address2,
            NEW.bill,
            NEW.phone,
            NEW.fax_number,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_address BEFORE INSERT OR UPDATE OR DELETE ON tests.info_address FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_address();

-- trans_inspection_report update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_inspection_report() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_inspection_report BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_inspection_report FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_inspection_report();

-- mstr_report history trigger
-- mstr_report update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_report() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_report_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_report BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_report FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_report();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_report() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_report WHERE mstr_report_id=NEW.mstr_report_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_report (
            mstr_report_id,
            trans_file_id,
            name,
            code,
            is_default,
            info_access_path_id,
            info_app_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_report_id,
            NEW.trans_file_id,
            NEW.name,
            NEW.code,
            NEW.is_default,
            NEW.info_access_path_id,
            NEW.info_app_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_report BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_report FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_report();

-- mstr_equipment_tag history trigger
-- mstr_equipment_tag update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_equipment_tag() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_equipment_tag_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_equipment_tag BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_equipment_tag FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_equipment_tag();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_equipment_tag() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_equipment_tag WHERE mstr_equipment_tag_id=NEW.mstr_equipment_tag_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_equipment_tag (
            mstr_equipment_tag_id,
            trans_file_id,
            name,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_equipment_tag_id,
            NEW.trans_file_id,
            NEW.name,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_equipment_tag BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_equipment_tag FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_equipment_tag();

-- info_access_path_approval history trigger
-- info_access_path_approval update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_access_path_approval() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_access_path_approval_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_access_path_approval BEFORE INSERT OR UPDATE OR DELETE ON tests.info_access_path_approval FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_access_path_approval();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_access_path_approval() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_access_path_approval WHERE info_access_path_approval_id=NEW.info_access_path_approval_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_access_path_approval (
            info_access_path_approval_id,
            info_access_path_id,
            name,
            kana,
            tag,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_access_path_approval_id,
            NEW.info_access_path_id,
            NEW.name,
            NEW.kana,
            NEW.tag,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_access_path_approval BEFORE INSERT OR UPDATE OR DELETE ON tests.info_access_path_approval FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_access_path_approval();

-- trans_approved update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_approved() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_approved BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_approved FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_approved();

-- mstr_approval history trigger
-- mstr_approval update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_approval() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_approval_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_approval BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_approval FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_approval();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_approval() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_approval WHERE mstr_approval_id=NEW.mstr_approval_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_approval (
            mstr_approval_id,
            info_company_id,
            info_department_id,
            info_role_id,
            priority,
            shared_appellations_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_approval_id,
            NEW.info_company_id,
            NEW.info_department_id,
            NEW.info_role_id,
            NEW.priority,
            NEW.shared_appellations_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_approval BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_approval FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_approval();

-- info_role history trigger
-- info_role update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_role() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_role_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_role BEFORE INSERT OR UPDATE OR DELETE ON tests.info_role FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_role();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_role() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_role WHERE info_role_id=NEW.info_role_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_role (
            info_role_id,
            priority,
            name,
            kana,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_role_id,
            NEW.priority,
            NEW.name,
            NEW.kana,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_role BEFORE INSERT OR UPDATE OR DELETE ON tests.info_role FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_role();

-- mstr_approval_pattern history trigger
-- mstr_approval_pattern update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_approval_pattern() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_approval_pattern_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_approval_pattern BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_approval_pattern FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_approval_pattern();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_approval_pattern() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_approval_pattern WHERE mstr_approval_pattern_id=NEW.mstr_approval_pattern_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_approval_pattern (
            mstr_approval_pattern_id,
            shared_appellations_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_approval_pattern_id,
            NEW.shared_appellations_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_approval_pattern BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_approval_pattern FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_approval_pattern();

-- trans_approval update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_approval() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_approval_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_approval BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_approval FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_approval();

-- trans_approval_gr update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_approval_gr() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_approval_gr_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_approval_gr BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_approval_gr FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_approval_gr();

-- trans_audit_member update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_audit_member() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_audit_member_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_audit_member BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_audit_member FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_audit_member();

-- trans_auditor update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_auditor() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_auditor_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_auditor BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_auditor FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_auditor();

-- trans_audit_team update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_audit_team() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_audit_team_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_audit_team BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_audit_team FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_audit_team();

-- trans_audit update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_audit() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_audit_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_audit BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_audit FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_audit();

-- trans_task_risk update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_task_risk() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_task_risk_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_task_risk BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_task_risk FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_task_risk();

-- trans_order_detail_risk update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_order_detail_risk() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_order_detail_risk_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_order_detail_risk BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_order_detail_risk FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_order_detail_risk();

-- trans_prevetion_detail update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_prevetion_detail() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_prevetion_detail_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_prevetion_detail BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_prevetion_detail FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_prevetion_detail();

-- trans_prevention update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_prevention() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_prevention_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_prevention BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_prevention FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_prevention();

-- trans_order_risk update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_order_risk() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_order_risk_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_order_risk BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_order_risk FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_order_risk();

-- trans_equipment_lent update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_equipment_lent() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_equipment_lent_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_equipment_lent BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_equipment_lent FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_equipment_lent();

-- mstr_item_operation history trigger
-- mstr_item_operation update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_item_operation() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_item_operation_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_item_operation BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_operation FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_item_operation();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_item_operation() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_item_operation WHERE mstr_item_operation_id=NEW.mstr_item_operation_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_item_operation (
            mstr_item_operation_id,
            mstr_item_id,
            mstr_operation_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_item_operation_id,
            NEW.mstr_item_id,
            NEW.mstr_operation_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_item_operation BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_operation FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_item_operation();

-- hrchy_mstr_location update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_hrchy_mstr_location() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.hrchy_mstr_location_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_hrchy_mstr_location BEFORE INSERT OR UPDATE OR DELETE ON tests.hrchy_mstr_location FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_hrchy_mstr_location();

-- trans_disposal_detail update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_disposal_detail() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_disposal_detail_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_disposal_detail BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_disposal_detail FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_disposal_detail();

-- mstr_audit_std_checkitem history trigger
-- mstr_audit_std_checkitem update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_audit_std_checkitem() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_audit_std_checkitem_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_audit_std_checkitem BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_audit_std_checkitem FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_audit_std_checkitem();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_audit_std_checkitem() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_audit_std_checkitem WHERE mstr_audit_std_checkitem_id=NEW.mstr_audit_std_checkitem_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_audit_std_checkitem (
            mstr_audit_std_checkitem_id,
            mstr_audit_std_id,
            code,
            control_code,
            shared_appellations_id,
            detail,
            conformance,
            min,
            max,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_audit_std_checkitem_id,
            NEW.mstr_audit_std_id,
            NEW.code,
            NEW.control_code,
            NEW.shared_appellations_id,
            NEW.detail,
            NEW.conformance,
            NEW.min,
            NEW.max,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_audit_std_checkitem BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_audit_std_checkitem FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_audit_std_checkitem();

-- mstr_audit_std history trigger
-- mstr_audit_std update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_audit_std() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_audit_std_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_audit_std BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_audit_std FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_audit_std();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_audit_std() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_audit_std WHERE mstr_audit_std_id=NEW.mstr_audit_std_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_audit_std (
            mstr_audit_std_id,
            code,
            control_code,
            category,
            shared_appellations_id,
            detail,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_audit_std_id,
            NEW.code,
            NEW.control_code,
            NEW.category,
            NEW.shared_appellations_id,
            NEW.detail,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_audit_std BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_audit_std FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_audit_std();

-- trans_risk update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_risk() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_risk_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_risk BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_risk FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_risk();

-- trans_observer_preventive update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_observer_preventive() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_observer_preventive_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_observer_preventive BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_observer_preventive FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_observer_preventive();

-- trans_observer_disposal update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_observer_disposal() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_observer_disposal_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_observer_disposal BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_observer_disposal FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_observer_disposal();

-- trans_complaint_stakeholder_adapter update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_complaint_stakeholder_adapter() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_complaint_stakeholder_adapter_id := ;
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_complaint_stakeholder_adapter BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_complaint_stakeholder_adapter FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_complaint_stakeholder_adapter();

-- trans_complaint_equipment_adapter update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_complaint_equipment_adapter() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_complaint_equipment_adapter_id := ;
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_complaint_equipment_adapter BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_complaint_equipment_adapter FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_complaint_equipment_adapter();

-- trans_complaint_process_adapter update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_complaint_process_adapter() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_complaint_process_adapter_id := ;
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_complaint_process_adapter BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_complaint_process_adapter FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_complaint_process_adapter();

-- trans_complaint_order_adapter update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_complaint_order_adapter() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_complaint_order_adapter_id := ;
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_complaint_order_adapter BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_complaint_order_adapter FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_complaint_order_adapter();

-- trans_disposal update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_disposal() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_disposal_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_disposal BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_disposal FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_disposal();

-- trans_recurrence_prevention update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_recurrence_prevention() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_recurrence_prevention_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_recurrence_prevention BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_recurrence_prevention FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_recurrence_prevention();

-- trans_complaint update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_complaint() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_complaint_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_complaint BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_complaint FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_complaint();

-- trans_inspect_imp_file update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_inspect_imp_file() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_inspect_imp_file_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_inspect_imp_file BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_inspect_imp_file FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_inspect_imp_file();

-- trans_inspect_record update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_inspect_record() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_inspect_record_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_inspect_record BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_inspect_record FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_inspect_record();

-- trans_inspect_sch_detail update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_inspect_sch_detail() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_inspect_sch_detail_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_inspect_sch_detail BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_inspect_sch_detail FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_inspect_sch_detail();

-- trans_inspect_sch update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_inspect_sch() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_inspect_sch_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_inspect_sch BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_inspect_sch FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_inspect_sch();

-- mstr_inspection history trigger
-- mstr_inspection update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_inspection() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_inspection_id := gen_random_uuid();
        NEW.mstr_task_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_inspection BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_inspection FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_inspection();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_inspection() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_inspection WHERE mstr_inspection_id=NEW.mstr_inspection_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_inspection (
            mstr_inspection_id,
            mstr_task_id,
            mstr_inspection_operation_id,
            code,
            class,
            base_date,
            time_interval,
            stakeholder,
            inspection_formula_id,
            revision,
            item_history_id,
            mstr_item_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_inspection_id,
            NEW.mstr_task_id,
            NEW.mstr_inspection_operation_id,
            NEW.code,
            NEW.class,
            NEW.base_date,
            NEW.time_interval,
            NEW.stakeholder,
            NEW.inspection_formula_id,
            NEW.revision,
            NEW.item_history_id,
            NEW.mstr_item_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_inspection BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_inspection FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_inspection();

-- info_assign history trigger
-- info_assign update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_assign() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_assign_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_assign BEFORE INSERT OR UPDATE OR DELETE ON tests.info_assign FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_assign();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_assign() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_assign WHERE info_assign_id=NEW.info_assign_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_assign (
            info_assign_id,
            info_staff_id,
            info_role_id,
            info_department_id,
            enable,
            priority,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_assign_id,
            NEW.info_staff_id,
            NEW.info_role_id,
            NEW.info_department_id,
            NEW.enable,
            NEW.priority,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_assign BEFORE INSERT OR UPDATE OR DELETE ON tests.info_assign FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_assign();

-- info_staff_access_permission history trigger
-- info_staff_access_permission update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_staff_access_permission() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_staff_access_permission_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_staff_access_permission BEFORE INSERT OR UPDATE OR DELETE ON tests.info_staff_access_permission FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_staff_access_permission();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_staff_access_permission() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_staff_access_permission WHERE info_staff_access_permission_id=NEW.info_staff_access_permission_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_staff_access_permission (
            info_staff_access_permission_id,
            info_access_path_id,
            info_staff_id,
            permit,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_staff_access_permission_id,
            NEW.info_access_path_id,
            NEW.info_staff_id,
            NEW.permit,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_staff_access_permission BEFORE INSERT OR UPDATE OR DELETE ON tests.info_staff_access_permission FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_staff_access_permission();

-- info_app history trigger
-- info_app update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_app() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_app_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_app BEFORE INSERT OR UPDATE OR DELETE ON tests.info_app FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_app();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_app() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_app WHERE info_app_id=NEW.info_app_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_app (
            info_app_id,
            info_company_id,
            name,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_app_id,
            NEW.info_company_id,
            NEW.name,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_app BEFORE INSERT OR UPDATE OR DELETE ON tests.info_app FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_app();

-- info_access_path history trigger
-- info_access_path update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_access_path() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_access_path_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_access_path BEFORE INSERT OR UPDATE OR DELETE ON tests.info_access_path FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_access_path();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_access_path() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_access_path WHERE info_access_path_id=NEW.info_access_path_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_access_path (
            info_access_path_id,
            info_app_id,
            name,
            usecase_path1,
            usecase_path2,
            usecase_path3,
            classes,
            sequence,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_access_path_id,
            NEW.info_app_id,
            NEW.name,
            NEW.usecase_path1,
            NEW.usecase_path2,
            NEW.usecase_path3,
            NEW.classes,
            NEW.sequence,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_access_path BEFORE INSERT OR UPDATE OR DELETE ON tests.info_access_path FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_access_path();

-- trans_inventory_request update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_inventory_request() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_inventory_request_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_inventory_request BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_inventory_request FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_inventory_request();

-- trans_product_rez update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_product_rez() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_product_rez_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_product_rez BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_product_rez FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_product_rez();

-- trans_work_record_visiter update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_work_record_visiter() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_work_record_visiter BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_work_record_visiter FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_work_record_visiter();

-- trans_purchase_rec_visiter update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_purchase_rec_visiter() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_purchase_rec_visiter BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_purchase_rec_visiter FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_purchase_rec_visiter();

-- trans_visiter update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_visiter() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_visiter_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_visiter BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_visiter FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_visiter();

-- mstr_item_size history trigger
-- mstr_item_size update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_item_size() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_item_size_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_item_size BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_size FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_item_size();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_item_size() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_item_size WHERE mstr_item_size_id=NEW.mstr_item_size_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_item_size (
            mstr_item_size_id,
            mstr_item_id,
            mstr_item_size_kind_id,
            size_value,
            detail,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_item_size_id,
            NEW.mstr_item_id,
            NEW.mstr_item_size_kind_id,
            NEW.size_value,
            NEW.detail,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_item_size BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_size FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_item_size();

-- trans_file update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_file() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_file_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_file BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_file FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_file();

-- mstr_operation_task history trigger
-- mstr_operation_task update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_operation_task() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_operation_task_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_operation_task BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_operation_task FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_operation_task();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_operation_task() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_operation_task WHERE mstr_operation_task_id=NEW.mstr_operation_task_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_operation_task (
            mstr_operation_task_id,
            mstr_operation_id,
            mstr_task_id,
            sequence,
            control_code,
            shared_appellations_id,
            detail,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_operation_task_id,
            NEW.mstr_operation_id,
            NEW.mstr_task_id,
            NEW.sequence,
            NEW.control_code,
            NEW.shared_appellations_id,
            NEW.detail,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_operation_task BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_operation_task FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_operation_task();

-- mstr_operation history trigger
-- mstr_operation update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_operation() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_operation_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_operation BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_operation FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_operation();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_operation() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_operation WHERE mstr_operation_id=NEW.mstr_operation_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_operation (
            mstr_operation_id,
            name,
            control_code,
            shared_appellations_id,
            detail,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_operation_id,
            NEW.name,
            NEW.control_code,
            NEW.shared_appellations_id,
            NEW.detail,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_operation BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_operation FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_operation();

-- trans_convey update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_convey() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_convey_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_convey BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_convey FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_convey();

-- trans_work_record_certificate update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_work_record_certificate() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_work_record_certificate BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_work_record_certificate FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_work_record_certificate();

-- trans_certificate update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_certificate() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_certificate_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_certificate BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_certificate FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_certificate();

-- trans_purchase_rec update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_purchase_rec() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_purchase_rec_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_purchase_rec BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_purchase_rec FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_purchase_rec();

-- trans_purchase_certification update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_purchase_certification() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_purchase_certification_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_purchase_certification BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_purchase_certification FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_purchase_certification();

-- trans_purchase_rez update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_purchase_rez() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_purchase_rez_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_purchase_rez BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_purchase_rez FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_purchase_rez();

-- trans_purchase_detail update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_purchase_detail() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_purchase_detail_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_purchase_detail BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_purchase_detail FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_purchase_detail();

-- trans_order_detail update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_order_detail() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_order_detail_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_order_detail BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_order_detail FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_order_detail();

-- trans_shipping_record update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_shipping_record() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_shipping_detail_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_shipping_record BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_shipping_record FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_shipping_record();

-- trans_ship_order update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_ship_order() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_shipping_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_ship_order BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_ship_order FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_ship_order();

-- trans_work_record update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_work_record() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_work_record_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_work_record BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_work_record FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_work_record();

-- trans_inventory_apply update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_inventory_apply() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_inventory_apply_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_inventory_apply BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_inventory_apply FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_inventory_apply();

-- trans_product_detail update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_product_detail() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_product_detail_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_product_detail BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_product_detail FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_product_detail();

-- trans_product update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_product() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_product_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_product BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_product FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_product();

-- trans_resorce_plan update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_resorce_plan() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_resorce_plan_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_resorce_plan BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_resorce_plan FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_resorce_plan();

-- trans_purchase update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_purchase() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_purchase_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_purchase BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_purchase FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_purchase();

-- trans_order update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_order() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_order_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_order BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_order FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_order();

-- mstr_item_operation_task history trigger
-- mstr_item_operation_task update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_item_operation_task() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_item_operation_task_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_item_operation_task BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_operation_task FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_item_operation_task();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_item_operation_task() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_item_operation_task WHERE mstr_item_operation_task_id=NEW.mstr_item_operation_task_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_item_operation_task (
            mstr_item_operation_task_id,
            mstr_item_id,
            mstr_operation_task_id,
            mstr_operation_id,
            mstr_task_id,
            sequence,
            mstr_item_operation_id,
            default_interval,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_item_operation_task_id,
            NEW.mstr_item_id,
            NEW.mstr_operation_task_id,
            NEW.mstr_operation_id,
            NEW.mstr_task_id,
            NEW.sequence,
            NEW.mstr_item_operation_id,
            NEW.default_interval,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_item_operation_task BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_operation_task FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_item_operation_task();

-- mstr_item_tree history trigger
-- mstr_item_tree update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_item_tree() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_item_tree_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_item_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_item_tree();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_item_tree() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_item_tree WHERE mstr_item_tree_id=NEW.mstr_item_tree_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_item_tree (
            mstr_item_tree_id,
            mstr_item_id,
            parent_mstr_item_id,
            code,
            control_code,
            shared_appellations_id,
            quantity,
            detail,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_item_tree_id,
            NEW.mstr_item_id,
            NEW.parent_mstr_item_id,
            NEW.code,
            NEW.control_code,
            NEW.shared_appellations_id,
            NEW.quantity,
            NEW.detail,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_item_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_item_tree();

-- shared_unit history trigger
-- shared_unit update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_shared_unit() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.shared_unit_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_shared_unit BEFORE INSERT OR UPDATE OR DELETE ON tests.shared_unit FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_shared_unit();


CREATE OR REPLACE FUNCTION tests.trg_02_history_shared_unit() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_shared_unit WHERE shared_unit_id=NEW.shared_unit_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_shared_unit (
            shared_unit_id,
            shared_appellations_id,
            description,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.shared_unit_id,
            NEW.shared_appellations_id,
            NEW.description,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_shared_unit BEFORE INSERT OR UPDATE OR DELETE ON tests.shared_unit FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_shared_unit();

-- mstr_item history trigger
-- mstr_item update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_item() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_item_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_item BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_item();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_item() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_item WHERE mstr_item_id=NEW.mstr_item_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_item (
            mstr_item_id,
            mstr_item_kind_id,
            code,
            identification,
            control_code,
            mstr_manufacturer_id,
            shared_appellations_id,
            label_code,
            description,
            shared_unit_id,
            increment,
            lot,
            stock_quantity,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_item_id,
            NEW.mstr_item_kind_id,
            NEW.code,
            NEW.identification,
            NEW.control_code,
            NEW.mstr_manufacturer_id,
            NEW.shared_appellations_id,
            NEW.label_code,
            NEW.description,
            NEW.shared_unit_id,
            NEW.increment,
            NEW.lot,
            NEW.stock_quantity,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_item BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_item FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_item();

-- mstr_task_tree history trigger
-- mstr_task_tree update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_task_tree() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_task_tree_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_task_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_task_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_task_tree();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_task_tree() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_task_tree WHERE mstr_task_tree_id=NEW.mstr_task_tree_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_task_tree (
            mstr_task_tree_id,
            mstr_task_id,
            parent_mstr_task_id,
            code,
            control_code,
            shared_appellations_id,
            detail,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_task_tree_id,
            NEW.mstr_task_id,
            NEW.parent_mstr_task_id,
            NEW.code,
            NEW.control_code,
            NEW.shared_appellations_id,
            NEW.detail,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_task_tree BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_task_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_task_tree();

-- mstr_task history trigger
-- mstr_task update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_task() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_task_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_task BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_task FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_task();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_task() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_task WHERE mstr_task_id=NEW.mstr_task_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_task (
            mstr_task_id,
            mstr_task_group_id,
            code,
            shared_appellations_id,
            detail,
            class,
            default_time,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_task_id,
            NEW.mstr_task_group_id,
            NEW.code,
            NEW.shared_appellations_id,
            NEW.detail,
            NEW.class,
            NEW.default_time,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_task BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_task FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_task();

-- mstr_location history trigger
-- mstr_location update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_location() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_location_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_location BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_location FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_location();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_location() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_location WHERE mstr_location_id=NEW.mstr_location_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_location (
            mstr_location_id,
            code,
            info_department_id,
            control_code,
            shared_appellations_id,
            info_address_id,
            available,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_location_id,
            NEW.code,
            NEW.info_department_id,
            NEW.control_code,
            NEW.shared_appellations_id,
            NEW.info_address_id,
            NEW.available,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_location BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_location FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_location();

-- mstr_equipment history trigger
-- mstr_equipment update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_equipment() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_equipment_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_equipment BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_equipment FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_equipment();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_equipment() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_equipment WHERE mstr_equipment_id=NEW.mstr_equipment_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_equipment (
            mstr_equipment_id,
            mstr_item_id,
            mstr_equipment_category_id,
            code,
            control_code,
            label_code,
            mstr_location_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_equipment_id,
            NEW.mstr_item_id,
            NEW.mstr_equipment_category_id,
            NEW.code,
            NEW.control_code,
            NEW.label_code,
            NEW.mstr_location_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_equipment BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_equipment FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_equipment();

-- mstr_stakeholder_contact history trigger
-- mstr_stakeholder_contact update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_stakeholder_contact() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_stakeholder_contact_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_stakeholder_contact BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_stakeholder_contact FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_stakeholder_contact();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_stakeholder_contact() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_stakeholder_contact WHERE mstr_stakeholder_contact_id=NEW.mstr_stakeholder_contact_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_stakeholder_contact (
            mstr_stakeholder_contact_id,
            mstr_stakeholder_id,
            code,
            office_name,
            department_name,
            shared_appellations_id,
            private_phone,
            info_address_id,
            mstr_shipping_kind_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_stakeholder_contact_id,
            NEW.mstr_stakeholder_id,
            NEW.code,
            NEW.office_name,
            NEW.department_name,
            NEW.shared_appellations_id,
            NEW.private_phone,
            NEW.info_address_id,
            NEW.mstr_shipping_kind_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_stakeholder_contact BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_stakeholder_contact FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_stakeholder_contact();

-- mstr_stakeholder history trigger
-- mstr_stakeholder update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_stakeholder() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_stakeholder_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_stakeholder BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_stakeholder FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_stakeholder();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_stakeholder() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_stakeholder WHERE mstr_stakeholder_id=NEW.mstr_stakeholder_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_stakeholder (
            mstr_stakeholder_id,
            is_customer,
            is_supplier,
            is_logistics,
            code,
            control_code,
            shared_appellations_id,
            mail,
            info_address_id,
            mstr_shipping_kind_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_stakeholder_id,
            NEW.is_customer,
            NEW.is_supplier,
            NEW.is_logistics,
            NEW.code,
            NEW.control_code,
            NEW.shared_appellations_id,
            NEW.mail,
            NEW.info_address_id,
            NEW.mstr_shipping_kind_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_stakeholder BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_stakeholder FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_stakeholder();

-- mstr_staff_license history trigger
-- mstr_staff_license update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_staff_license() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_staff_license_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_staff_license BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_staff_license FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_staff_license();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_staff_license() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_staff_license WHERE mstr_staff_license_id=NEW.mstr_staff_license_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_staff_license (
            mstr_staff_license_id,
            info_staff_id,
            mstr_license_id,
            start_at,
            stop_at,
            abeyance,
            abeyance_at,
            revocation,
            revocation_at,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_staff_license_id,
            NEW.info_staff_id,
            NEW.mstr_license_id,
            NEW.start_at,
            NEW.stop_at,
            NEW.abeyance,
            NEW.abeyance_at,
            NEW.revocation,
            NEW.revocation_at,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_staff_license BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_staff_license FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_staff_license();

-- mstr_staff_capability history trigger
-- mstr_staff_capability update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_staff_capability() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_staff_capability_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_staff_capability BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_staff_capability FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_staff_capability();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_staff_capability() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_staff_capability WHERE mstr_staff_capability_id=NEW.mstr_staff_capability_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_staff_capability (
            mstr_staff_capability_id,
            info_staff_id,
            mstr_capability_id,
            value,
            stop,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_staff_capability_id,
            NEW.info_staff_id,
            NEW.mstr_capability_id,
            NEW.value,
            NEW.stop,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_staff_capability BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_staff_capability FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_staff_capability();

-- mstr_sign history trigger
-- mstr_sign update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_sign() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_sign_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_sign BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_sign FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_sign();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_sign() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_sign WHERE mstr_sign_id=NEW.mstr_sign_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_sign (
            mstr_sign_id,
            info_staff_id,
            auth_subject_id,
            code,
            mail,
            role,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_sign_id,
            NEW.info_staff_id,
            NEW.auth_subject_id,
            NEW.code,
            NEW.mail,
            NEW.role,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_sign BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_sign FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_sign();

-- mstr_license history trigger
-- mstr_license update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_license() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_license_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_license BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_license FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_license();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_license() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_license WHERE mstr_license_id=NEW.mstr_license_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_license (
            mstr_license_id,
            code,
            shared_appellations_id,
            detail,
            public_license,
            customer_license,
            organization_license,
            update_interval,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_license_id,
            NEW.code,
            NEW.shared_appellations_id,
            NEW.detail,
            NEW.public_license,
            NEW.customer_license,
            NEW.organization_license,
            NEW.update_interval,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_license BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_license FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_license();

-- mstr_capability history trigger
-- mstr_capability update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_capability() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_capability_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_mstr_capability BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_capability FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_mstr_capability();


CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_capability() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_capability WHERE mstr_capability_id=NEW.mstr_capability_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_capability (
            mstr_capability_id,
            code,
            shared_appellations_id,
            detail,
            reference_value,
            max,
            min,
            step,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_capability_id,
            NEW.code,
            NEW.shared_appellations_id,
            NEW.detail,
            NEW.reference_value,
            NEW.max,
            NEW.min,
            NEW.step,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_mstr_capability BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_capability FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_mstr_capability();

-- info_staff history trigger
-- info_staff update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_staff() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_staff_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_staff BEFORE INSERT OR UPDATE OR DELETE ON tests.info_staff FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_staff();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_staff() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_staff WHERE info_staff_id=NEW.info_staff_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_staff (
            info_staff_id,
            info_company_id,
            info_office_id,
            code,
            shared_appellations_id,
            sex,
            phone,
            private_phone,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_staff_id,
            NEW.info_company_id,
            NEW.info_office_id,
            NEW.code,
            NEW.shared_appellations_id,
            NEW.sex,
            NEW.phone,
            NEW.private_phone,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_staff BEFORE INSERT OR UPDATE OR DELETE ON tests.info_staff FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_staff();

-- info_department history trigger
-- info_department update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_department() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_department_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_department BEFORE INSERT OR UPDATE OR DELETE ON tests.info_department FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_department();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_department() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_department WHERE info_department_id=NEW.info_department_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_department (
            info_department_id,
            info_company_id,
            info_office_id,
            code,
            shared_appellations_id,
            category1,
            category2,
            category3,
            info_address_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_department_id,
            NEW.info_company_id,
            NEW.info_office_id,
            NEW.code,
            NEW.shared_appellations_id,
            NEW.category1,
            NEW.category2,
            NEW.category3,
            NEW.info_address_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_department BEFORE INSERT OR UPDATE OR DELETE ON tests.info_department FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_department();

-- info_office history trigger
-- info_office update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_info_office() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.info_office_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_info_office BEFORE INSERT OR UPDATE OR DELETE ON tests.info_office FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_info_office();


CREATE OR REPLACE FUNCTION tests.trg_02_history_info_office() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_office WHERE info_office_id=NEW.info_office_id;
        IF (revisions >= 0) THEN
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_office (
            info_office_id,
            info_company_id,
            code,
            shared_appellations_id,
            info_address_id,
            revision,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_office_id,
            NEW.info_company_id,
            NEW.code,
            NEW.shared_appellations_id,
            NEW.info_address_id,
            NEW.revision,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_02_history_info_office BEFORE INSERT OR UPDATE OR DELETE ON tests.info_office FOR EACH ROW EXECUTE
PROCEDURE tests.trg_02_history_info_office();

--7.add hierarchy trigger
-- mstr_document_content_tree hierarchy table after trigger
CREATE OR REPLACE FUNCTION tests.trg_03_hierarchy_mstr_document_content_tree() RETURNS trigger AS
$BODY$
DECLARE
    counter int;
BEGIN
    IF (TG_OP='INSERT') THEN
        INSERT INTO tests.hrchy_mstr_document_content
        (
            ancestor_mstr_document_content_id,
            descendant_mstr_document_content_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_document_content_id,
            NEW.mstr_document_content_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );

        INSERT INTO tests.hrchy_mstr_document_content
        (
            ancestor_mstr_document_content_id,
            descendant_mstr_document_content_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        SELECT
            ancestor_mstr_document_content_id,
            NEW.mstr_document_content_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        FROM
            tests.hrchy_mstr_document_content
        WHERE
            (
                descendant_mstr_document_content_id= NEW.parent_mstr_document_content_id
            )
        AND
            remove=FALSE;

    ELSEIF (TG_OP = 'UPDATE') THEN
        IF (NEW.parent_mstr_document_content_id IS DISTINCT FROM OLD.parent_mstr_document_content_id) THEN --親の付けかえ
            DELETE--子孫削除
            FROM
                tests.hrchy_mstr_document_content h
            WHERE
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_document_content h1
                    WHERE
                    (
                        h1.ancestor_mstr_document_content_id= NEW.mstr_document_content_id
                    )
                    AND
                    (
                        h1.descendant_mstr_document_content_id= h.descendant_mstr_document_content_id
                    )
                )
                AND
                    NOT
                    (
                        h.ancestor_mstr_document_content_id = h.descendant_mstr_document_content_id
                    )
                AND
                    NOT
                    (
                        h.ancestor_mstr_document_content_id = NEW.mstr_document_content_id
                    );
            --挿入
            INSERT INTO tests.hrchy_mstr_document_content
            (
                ancestor_mstr_document_content_id,
                descendant_mstr_document_content_id,
                remarks,
                update_at,
                update_user_id,
                update_user_history_id,
                remove
            )
            SELECT
                h.ancestor_mstr_document_content_id,
                h1.descendant_mstr_document_content_id,
                NEW.remarks,
                NEW.update_at,
                NEW.update_user_id,
                NEW.update_user_history_id,
                NEW.remove
            FROM
                tests.hrchy_mstr_document_content h
            CROSS JOIN
                tests.hrchy_mstr_document_content h1
            WHERE
            (
                h.descendant_mstr_document_content_id= NEW.parent_mstr_document_content_id
            )
            AND
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_document_content h2
                    WHERE
                        (
                            h2.ancestor_mstr_document_content_id = h1.ancestor_mstr_document_content_id
                        )
                        AND
                        (
                            h2.ancestor_mstr_document_content_id= NEW.mstr_document_content_id
                        )
                );
        ELSE
        --子孫共々その他の更新。
            UPDATE
                tests.hrchy_mstr_document_content
            SET
                remarks= NEW.remarks,
                update_at= NEW.update_at,
                update_user_id= NEW.update_user_id,
                update_user_history_id= NEW.update_user_history_id,
                remove= NEW.remove
            WHERE
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_document_content h1
                    WHERE
                        (
                            h1.ancestor_mstr_document_content_id= NEW.mstr_document_content_id
                        )
                        AND
                        (
                            h1.descendant_mstr_document_content_id = hrchy_mstr_document_content.descendant_mstr_document_content_id
                        )
                );
        END IF;
    ELSEIF (TG_OP = 'DELETE') THEN
        DELETE--子孫削除
        FROM
            tests.hrchy_mstr_document_content h
        WHERE
            EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_document_content h1
                WHERE
                    (
                        h1.ancestor_mstr_document_content_id= OLD.mstr_document_content_id
                    )
                    AND
                    (
                        h1.descendant_mstr_document_content_id= h.descendant_mstr_document_content_id
                    )
            );

        SELECT
            COUNT(*) INTO counter
        FROM
            tests.mstr_document_content_tree h
        WHERE
            NOT EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_document_content h1
                WHERE
                    (
                        h1.descendant_mstr_document_content_id= h.mstr_document_content_id
                    )
            );
        IF (counter>0) THEN
            DELETE
            FROM
                tests.mstr_document_content_tree h
            WHERE
            NOT EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_document_content h1
                WHERE
                    (
                        h1.descendant_mstr_document_content_id= h.mstr_document_content_id
                    )
            );
        END IF;
    END IF;
    RETURN NULL;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE OR REPLACE TRIGGER trg_03_hierarchy_mstr_document_content_tree AFTER INSERT OR UPDATE OR DELETE ON tests.mstr_document_content_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_03_hierarchy_mstr_document_content_tree();

-- mstr_document_tree hierarchy table after trigger
CREATE OR REPLACE FUNCTION tests.trg_03_hierarchy_mstr_document_tree() RETURNS trigger AS
$BODY$
DECLARE
    counter int;
BEGIN
    IF (TG_OP='INSERT') THEN
        INSERT INTO tests.hrchy_mstr_documet
        (
            ancestor_mstr_document_id,
            descendant_mstr_document_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_document_id,
            NEW.mstr_document_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );

        INSERT INTO tests.hrchy_mstr_documet
        (
            ancestor_mstr_document_id,
            descendant_mstr_document_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        SELECT
            ancestor_mstr_document_id,
            NEW.mstr_document_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        FROM
            tests.hrchy_mstr_documet
        WHERE
            (
                descendant_mstr_document_id= NEW.parent_mstr_document_id
            )
        AND
            remove=FALSE;

    ELSEIF (TG_OP = 'UPDATE') THEN
        IF (NEW.parent_mstr_document_id IS DISTINCT FROM OLD.parent_mstr_document_id) THEN --親の付けかえ
            DELETE--子孫削除
            FROM
                tests.hrchy_mstr_documet h
            WHERE
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_documet h1
                    WHERE
                    (
                        h1.ancestor_mstr_document_id= NEW.mstr_document_id
                    )
                    AND
                    (
                        h1.descendant_mstr_document_id= h.descendant_mstr_document_id
                    )
                )
                AND
                    NOT
                    (
                        h.ancestor_mstr_document_id = h.descendant_mstr_document_id
                    )
                AND
                    NOT
                    (
                        h.ancestor_mstr_document_id = NEW.mstr_document_id
                    );
            --挿入
            INSERT INTO tests.hrchy_mstr_documet
            (
                ancestor_mstr_document_id,
                descendant_mstr_document_id,
                remarks,
                update_at,
                update_user_id,
                update_user_history_id,
                remove
            )
            SELECT
                h.ancestor_mstr_document_id,
                h1.descendant_mstr_document_id,
                NEW.remarks,
                NEW.update_at,
                NEW.update_user_id,
                NEW.update_user_history_id,
                NEW.remove
            FROM
                tests.hrchy_mstr_documet h
            CROSS JOIN
                tests.hrchy_mstr_documet h1
            WHERE
            (
                h.descendant_mstr_document_id= NEW.parent_mstr_document_id
            )
            AND
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_documet h2
                    WHERE
                        (
                            h2.ancestor_mstr_document_id = h1.ancestor_mstr_document_id
                        )
                        AND
                        (
                            h2.ancestor_mstr_document_id= NEW.mstr_document_id
                        )
                );
        ELSE
        --子孫共々その他の更新。
            UPDATE
                tests.hrchy_mstr_documet
            SET
                remarks= NEW.remarks,
                update_at= NEW.update_at,
                update_user_id= NEW.update_user_id,
                update_user_history_id= NEW.update_user_history_id,
                remove= NEW.remove
            WHERE
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_documet h1
                    WHERE
                        (
                            h1.ancestor_mstr_document_id= NEW.mstr_document_id
                        )
                        AND
                        (
                            h1.descendant_mstr_document_id = hrchy_mstr_documet.descendant_mstr_document_id
                        )
                );
        END IF;
    ELSEIF (TG_OP = 'DELETE') THEN
        DELETE--子孫削除
        FROM
            tests.hrchy_mstr_documet h
        WHERE
            EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_documet h1
                WHERE
                    (
                        h1.ancestor_mstr_document_id= OLD.mstr_document_id
                    )
                    AND
                    (
                        h1.descendant_mstr_document_id= h.descendant_mstr_document_id
                    )
            );

        SELECT
            COUNT(*) INTO counter
        FROM
            tests.mstr_document_tree h
        WHERE
            NOT EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_documet h1
                WHERE
                    (
                        h1.descendant_mstr_document_id= h.mstr_document_id
                    )
            );
        IF (counter>0) THEN
            DELETE
            FROM
                tests.mstr_document_tree h
            WHERE
            NOT EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_documet h1
                WHERE
                    (
                        h1.descendant_mstr_document_id= h.mstr_document_id
                    )
            );
        END IF;
    END IF;
    RETURN NULL;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE OR REPLACE TRIGGER trg_03_hierarchy_mstr_document_tree AFTER INSERT OR UPDATE OR DELETE ON tests.mstr_document_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_03_hierarchy_mstr_document_tree();

-- mstr_task_tree hierarchy table after trigger
CREATE OR REPLACE FUNCTION tests.trg_03_hierarchy_mstr_task_tree() RETURNS trigger AS
$BODY$
DECLARE
    counter int;
BEGIN
    IF (TG_OP='INSERT') THEN
        INSERT INTO tests.hrchy_mstr_task
        (
            ancestor_mstr_task_id,
            descendant_mstr_task_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_task_id,
            NEW.mstr_task_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );

        INSERT INTO tests.hrchy_mstr_task
        (
            ancestor_mstr_task_id,
            descendant_mstr_task_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        SELECT
            ancestor_mstr_task_id,
            NEW.mstr_task_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        FROM
            tests.hrchy_mstr_task
        WHERE
            (
                descendant_mstr_task_id= NEW.parent_mstr_task_id
            )
        AND
            remove=FALSE;

    ELSEIF (TG_OP = 'UPDATE') THEN
        IF (NEW.parent_mstr_task_id IS DISTINCT FROM OLD.parent_mstr_task_id) THEN --親の付けかえ
            DELETE--子孫削除
            FROM
                tests.hrchy_mstr_task h
            WHERE
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_task h1
                    WHERE
                    (
                        h1.ancestor_mstr_task_id= NEW.mstr_task_id
                    )
                    AND
                    (
                        h1.descendant_mstr_task_id= h.descendant_mstr_task_id
                    )
                )
                AND
                    NOT
                    (
                        h.ancestor_mstr_task_id = h.descendant_mstr_task_id
                    )
                AND
                    NOT
                    (
                        h.ancestor_mstr_task_id = NEW.mstr_task_id
                    );
            --挿入
            INSERT INTO tests.hrchy_mstr_task
            (
                ancestor_mstr_task_id,
                descendant_mstr_task_id,
                remarks,
                update_at,
                update_user_id,
                update_user_history_id,
                remove
            )
            SELECT
                h.ancestor_mstr_task_id,
                h1.descendant_mstr_task_id,
                NEW.remarks,
                NEW.update_at,
                NEW.update_user_id,
                NEW.update_user_history_id,
                NEW.remove
            FROM
                tests.hrchy_mstr_task h
            CROSS JOIN
                tests.hrchy_mstr_task h1
            WHERE
            (
                h.descendant_mstr_task_id= NEW.parent_mstr_task_id
            )
            AND
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_task h2
                    WHERE
                        (
                            h2.ancestor_mstr_task_id = h1.ancestor_mstr_task_id
                        )
                        AND
                        (
                            h2.ancestor_mstr_task_id= NEW.mstr_task_id
                        )
                );
        ELSE
        --子孫共々その他の更新。
            UPDATE
                tests.hrchy_mstr_task
            SET
                remarks= NEW.remarks,
                update_at= NEW.update_at,
                update_user_id= NEW.update_user_id,
                update_user_history_id= NEW.update_user_history_id,
                remove= NEW.remove
            WHERE
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_task h1
                    WHERE
                        (
                            h1.ancestor_mstr_task_id= NEW.mstr_task_id
                        )
                        AND
                        (
                            h1.descendant_mstr_task_id = hrchy_mstr_task.descendant_mstr_task_id
                        )
                );
        END IF;
    ELSEIF (TG_OP = 'DELETE') THEN
        DELETE--子孫削除
        FROM
            tests.hrchy_mstr_task h
        WHERE
            EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_task h1
                WHERE
                    (
                        h1.ancestor_mstr_task_id= OLD.mstr_task_id
                    )
                    AND
                    (
                        h1.descendant_mstr_task_id= h.descendant_mstr_task_id
                    )
            );

        SELECT
            COUNT(*) INTO counter
        FROM
            tests.mstr_task_tree h
        WHERE
            NOT EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_task h1
                WHERE
                    (
                        h1.descendant_mstr_task_id= h.mstr_task_id
                    )
            );
        IF (counter>0) THEN
            DELETE
            FROM
                tests.mstr_task_tree h
            WHERE
            NOT EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_task h1
                WHERE
                    (
                        h1.descendant_mstr_task_id= h.mstr_task_id
                    )
            );
        END IF;
    END IF;
    RETURN NULL;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE OR REPLACE TRIGGER trg_03_hierarchy_mstr_task_tree AFTER INSERT OR UPDATE OR DELETE ON tests.mstr_task_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_03_hierarchy_mstr_task_tree();

-- mstr_item_tree hierarchy table after trigger
CREATE OR REPLACE FUNCTION tests.trg_03_hierarchy_mstr_item_tree() RETURNS trigger AS
$BODY$
DECLARE
    counter int;
BEGIN
    IF (TG_OP='INSERT') THEN
        INSERT INTO tests.hrchy_mstr_item
        (
            ancestor_mstr_item_id,
            descendant_mstr_item_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_item_id,
            NEW.mstr_item_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );

        INSERT INTO tests.hrchy_mstr_item
        (
            ancestor_mstr_item_id,
            descendant_mstr_item_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        SELECT
            ancestor_mstr_item_id,
            NEW.mstr_item_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        FROM
            tests.hrchy_mstr_item
        WHERE
            (
                descendant_mstr_item_id= NEW.parent_mstr_item_id
            )
        AND
            remove=FALSE;

    ELSEIF (TG_OP = 'UPDATE') THEN
        IF (NEW.parent_mstr_item_id IS DISTINCT FROM OLD.parent_mstr_item_id) THEN --親の付けかえ
            DELETE--子孫削除
            FROM
                tests.hrchy_mstr_item h
            WHERE
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_item h1
                    WHERE
                    (
                        h1.ancestor_mstr_item_id= NEW.mstr_item_id
                    )
                    AND
                    (
                        h1.descendant_mstr_item_id= h.descendant_mstr_item_id
                    )
                )
                AND
                    NOT
                    (
                        h.ancestor_mstr_item_id = h.descendant_mstr_item_id
                    )
                AND
                    NOT
                    (
                        h.ancestor_mstr_item_id = NEW.mstr_item_id
                    );
            --挿入
            INSERT INTO tests.hrchy_mstr_item
            (
                ancestor_mstr_item_id,
                descendant_mstr_item_id,
                remarks,
                update_at,
                update_user_id,
                update_user_history_id,
                remove
            )
            SELECT
                h.ancestor_mstr_item_id,
                h1.descendant_mstr_item_id,
                NEW.remarks,
                NEW.update_at,
                NEW.update_user_id,
                NEW.update_user_history_id,
                NEW.remove
            FROM
                tests.hrchy_mstr_item h
            CROSS JOIN
                tests.hrchy_mstr_item h1
            WHERE
            (
                h.descendant_mstr_item_id= NEW.parent_mstr_item_id
            )
            AND
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_item h2
                    WHERE
                        (
                            h2.ancestor_mstr_item_id = h1.ancestor_mstr_item_id
                        )
                        AND
                        (
                            h2.ancestor_mstr_item_id= NEW.mstr_item_id
                        )
                );
        ELSE
        --子孫共々その他の更新。
            UPDATE
                tests.hrchy_mstr_item
            SET
                remarks= NEW.remarks,
                update_at= NEW.update_at,
                update_user_id= NEW.update_user_id,
                update_user_history_id= NEW.update_user_history_id,
                remove= NEW.remove
            WHERE
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_item h1
                    WHERE
                        (
                            h1.ancestor_mstr_item_id= NEW.mstr_item_id
                        )
                        AND
                        (
                            h1.descendant_mstr_item_id = hrchy_mstr_item.descendant_mstr_item_id
                        )
                );
        END IF;
    ELSEIF (TG_OP = 'DELETE') THEN
        DELETE--子孫削除
        FROM
            tests.hrchy_mstr_item h
        WHERE
            EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_item h1
                WHERE
                    (
                        h1.ancestor_mstr_item_id= OLD.mstr_item_id
                    )
                    AND
                    (
                        h1.descendant_mstr_item_id= h.descendant_mstr_item_id
                    )
            );

        SELECT
            COUNT(*) INTO counter
        FROM
            tests.mstr_item_tree h
        WHERE
            NOT EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_item h1
                WHERE
                    (
                        h1.descendant_mstr_item_id= h.mstr_item_id
                    )
            );
        IF (counter>0) THEN
            DELETE
            FROM
                tests.mstr_item_tree h
            WHERE
            NOT EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_item h1
                WHERE
                    (
                        h1.descendant_mstr_item_id= h.mstr_item_id
                    )
            );
        END IF;
    END IF;
    RETURN NULL;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE OR REPLACE TRIGGER trg_03_hierarchy_mstr_item_tree AFTER INSERT OR UPDATE OR DELETE ON tests.mstr_item_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_03_hierarchy_mstr_item_tree();

-- trans_container_tree hierarchy table after trigger
CREATE OR REPLACE FUNCTION tests.trg_03_hierarchy_trans_container_tree() RETURNS trigger AS
$BODY$
DECLARE
    counter int;
BEGIN
    IF (TG_OP='INSERT') THEN
        INSERT INTO tests.hrchy_trans_container
        (
            ancestor_trans_container_id,
            descendant_trans_container_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.trans_container_id,
            NEW.trans_container_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );

        INSERT INTO tests.hrchy_trans_container
        (
            ancestor_trans_container_id,
            descendant_trans_container_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        SELECT
            ancestor_trans_container_id,
            NEW.trans_container_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        FROM
            tests.hrchy_trans_container
        WHERE
            (
                descendant_trans_container_id= NEW.parent_trans_container_id
            )
        AND
            remove=FALSE;

    ELSEIF (TG_OP = 'UPDATE') THEN
        IF (NEW.parent_trans_container_id IS DISTINCT FROM OLD.parent_trans_container_id) THEN --親の付けかえ
            DELETE--子孫削除
            FROM
                tests.hrchy_trans_container h
            WHERE
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_trans_container h1
                    WHERE
                    (
                        h1.ancestor_trans_container_id= NEW.trans_container_id
                    )
                    AND
                    (
                        h1.descendant_trans_container_id= h.descendant_trans_container_id
                    )
                )
                AND
                    NOT
                    (
                        h.ancestor_trans_container_id = h.descendant_trans_container_id
                    )
                AND
                    NOT
                    (
                        h.ancestor_trans_container_id = NEW.trans_container_id
                    );
            --挿入
            INSERT INTO tests.hrchy_trans_container
            (
                ancestor_trans_container_id,
                descendant_trans_container_id,
                remarks,
                update_at,
                update_user_id,
                update_user_history_id,
                remove
            )
            SELECT
                h.ancestor_trans_container_id,
                h1.descendant_trans_container_id,
                NEW.remarks,
                NEW.update_at,
                NEW.update_user_id,
                NEW.update_user_history_id,
                NEW.remove
            FROM
                tests.hrchy_trans_container h
            CROSS JOIN
                tests.hrchy_trans_container h1
            WHERE
            (
                h.descendant_trans_container_id= NEW.parent_trans_container_id
            )
            AND
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_trans_container h2
                    WHERE
                        (
                            h2.ancestor_trans_container_id = h1.ancestor_trans_container_id
                        )
                        AND
                        (
                            h2.ancestor_trans_container_id= NEW.trans_container_id
                        )
                );
        ELSE
        --子孫共々その他の更新。
            UPDATE
                tests.hrchy_trans_container
            SET
                remarks= NEW.remarks,
                update_at= NEW.update_at,
                update_user_id= NEW.update_user_id,
                update_user_history_id= NEW.update_user_history_id,
                remove= NEW.remove
            WHERE
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_trans_container h1
                    WHERE
                        (
                            h1.ancestor_trans_container_id= NEW.trans_container_id
                        )
                        AND
                        (
                            h1.descendant_trans_container_id = hrchy_trans_container.descendant_trans_container_id
                        )
                );
        END IF;
    ELSEIF (TG_OP = 'DELETE') THEN
        DELETE--子孫削除
        FROM
            tests.hrchy_trans_container h
        WHERE
            EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_trans_container h1
                WHERE
                    (
                        h1.ancestor_trans_container_id= OLD.trans_container_id
                    )
                    AND
                    (
                        h1.descendant_trans_container_id= h.descendant_trans_container_id
                    )
            );

        SELECT
            COUNT(*) INTO counter
        FROM
            tests.trans_container_tree h
        WHERE
            NOT EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_trans_container h1
                WHERE
                    (
                        h1.descendant_trans_container_id= h.trans_container_id
                    )
            );
        IF (counter>0) THEN
            DELETE
            FROM
                tests.trans_container_tree h
            WHERE
            NOT EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_trans_container h1
                WHERE
                    (
                        h1.descendant_trans_container_id= h.trans_container_id
                    )
            );
        END IF;
    END IF;
    RETURN NULL;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE OR REPLACE TRIGGER trg_03_hierarchy_trans_container_tree AFTER INSERT OR UPDATE OR DELETE ON tests.trans_container_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_03_hierarchy_trans_container_tree();

-- info_department_tree hierarchy table after trigger
CREATE OR REPLACE FUNCTION tests.trg_03_hierarchy_info_department_tree() RETURNS trigger AS
$BODY$
DECLARE
    counter int;
BEGIN
    IF (TG_OP='INSERT') THEN
        INSERT INTO tests.hrchy_info_department
        (
            ancestor_info_department_id,
            descendant_info_department_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_department_id,
            NEW.info_department_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );

        INSERT INTO tests.hrchy_info_department
        (
            ancestor_info_department_id,
            descendant_info_department_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        SELECT
            ancestor_info_department_id,
            NEW.info_department_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        FROM
            tests.hrchy_info_department
        WHERE
            (
                descendant_info_department_id= NEW.parent_info_department_id
            )
        AND
            remove=FALSE;

    ELSEIF (TG_OP = 'UPDATE') THEN
        IF (NEW.parent_info_department_id IS DISTINCT FROM OLD.parent_info_department_id) THEN --親の付けかえ
            DELETE--子孫削除
            FROM
                tests.hrchy_info_department h
            WHERE
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_info_department h1
                    WHERE
                    (
                        h1.ancestor_info_department_id= NEW.info_department_id
                    )
                    AND
                    (
                        h1.descendant_info_department_id= h.descendant_info_department_id
                    )
                )
                AND
                    NOT
                    (
                        h.ancestor_info_department_id = h.descendant_info_department_id
                    )
                AND
                    NOT
                    (
                        h.ancestor_info_department_id = NEW.info_department_id
                    );
            --挿入
            INSERT INTO tests.hrchy_info_department
            (
                ancestor_info_department_id,
                descendant_info_department_id,
                remarks,
                update_at,
                update_user_id,
                update_user_history_id,
                remove
            )
            SELECT
                h.ancestor_info_department_id,
                h1.descendant_info_department_id,
                NEW.remarks,
                NEW.update_at,
                NEW.update_user_id,
                NEW.update_user_history_id,
                NEW.remove
            FROM
                tests.hrchy_info_department h
            CROSS JOIN
                tests.hrchy_info_department h1
            WHERE
            (
                h.descendant_info_department_id= NEW.parent_info_department_id
            )
            AND
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_info_department h2
                    WHERE
                        (
                            h2.ancestor_info_department_id = h1.ancestor_info_department_id
                        )
                        AND
                        (
                            h2.ancestor_info_department_id= NEW.info_department_id
                        )
                );
        ELSE
        --子孫共々その他の更新。
            UPDATE
                tests.hrchy_info_department
            SET
                remarks= NEW.remarks,
                update_at= NEW.update_at,
                update_user_id= NEW.update_user_id,
                update_user_history_id= NEW.update_user_history_id,
                remove= NEW.remove
            WHERE
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_info_department h1
                    WHERE
                        (
                            h1.ancestor_info_department_id= NEW.info_department_id
                        )
                        AND
                        (
                            h1.descendant_info_department_id = hrchy_info_department.descendant_info_department_id
                        )
                );
        END IF;
    ELSEIF (TG_OP = 'DELETE') THEN
        DELETE--子孫削除
        FROM
            tests.hrchy_info_department h
        WHERE
            EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_info_department h1
                WHERE
                    (
                        h1.ancestor_info_department_id= OLD.info_department_id
                    )
                    AND
                    (
                        h1.descendant_info_department_id= h.descendant_info_department_id
                    )
            );

        SELECT
            COUNT(*) INTO counter
        FROM
            tests.info_department_tree h
        WHERE
            NOT EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_info_department h1
                WHERE
                    (
                        h1.descendant_info_department_id= h.info_department_id
                    )
            );
        IF (counter>0) THEN
            DELETE
            FROM
                tests.info_department_tree h
            WHERE
            NOT EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_info_department h1
                WHERE
                    (
                        h1.descendant_info_department_id= h.info_department_id
                    )
            );
        END IF;
    END IF;
    RETURN NULL;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE OR REPLACE TRIGGER trg_03_hierarchy_info_department_tree AFTER INSERT OR UPDATE OR DELETE ON tests.info_department_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_03_hierarchy_info_department_tree();

-- mstr_location_tree hierarchy table after trigger
CREATE OR REPLACE FUNCTION tests.trg_03_hierarchy_mstr_location_tree() RETURNS trigger AS
$BODY$
DECLARE
    counter int;
BEGIN
    IF (TG_OP='INSERT') THEN
        INSERT INTO tests.hrchy_mstr_location
        (
            ancestor_mstr_location_id,
            descendant_mstr_location_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_location_id,
            NEW.mstr_location_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );

        INSERT INTO tests.hrchy_mstr_location
        (
            ancestor_mstr_location_id,
            descendant_mstr_location_id,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        SELECT
            ancestor_mstr_location_id,
            NEW.mstr_location_id,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        FROM
            tests.hrchy_mstr_location
        WHERE
            (
                descendant_mstr_location_id= NEW.parent_mstr_location_id
            )
        AND
            remove=FALSE;

    ELSEIF (TG_OP = 'UPDATE') THEN
        IF (NEW.parent_mstr_location_id IS DISTINCT FROM OLD.parent_mstr_location_id) THEN --親の付けかえ
            DELETE--子孫削除
            FROM
                tests.hrchy_mstr_location h
            WHERE
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_location h1
                    WHERE
                    (
                        h1.ancestor_mstr_location_id= NEW.mstr_location_id
                    )
                    AND
                    (
                        h1.descendant_mstr_location_id= h.descendant_mstr_location_id
                    )
                )
                AND
                    NOT
                    (
                        h.ancestor_mstr_location_id = h.descendant_mstr_location_id
                    )
                AND
                    NOT
                    (
                        h.ancestor_mstr_location_id = NEW.mstr_location_id
                    );
            --挿入
            INSERT INTO tests.hrchy_mstr_location
            (
                ancestor_mstr_location_id,
                descendant_mstr_location_id,
                remarks,
                update_at,
                update_user_id,
                update_user_history_id,
                remove
            )
            SELECT
                h.ancestor_mstr_location_id,
                h1.descendant_mstr_location_id,
                NEW.remarks,
                NEW.update_at,
                NEW.update_user_id,
                NEW.update_user_history_id,
                NEW.remove
            FROM
                tests.hrchy_mstr_location h
            CROSS JOIN
                tests.hrchy_mstr_location h1
            WHERE
            (
                h.descendant_mstr_location_id= NEW.parent_mstr_location_id
            )
            AND
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_location h2
                    WHERE
                        (
                            h2.ancestor_mstr_location_id = h1.ancestor_mstr_location_id
                        )
                        AND
                        (
                            h2.ancestor_mstr_location_id= NEW.mstr_location_id
                        )
                );
        ELSE
        --子孫共々その他の更新。
            UPDATE
                tests.hrchy_mstr_location
            SET
                remarks= NEW.remarks,
                update_at= NEW.update_at,
                update_user_id= NEW.update_user_id,
                update_user_history_id= NEW.update_user_history_id,
                remove= NEW.remove
            WHERE
                EXISTS
                (
                    SELECT
                        1
                    FROM
                        tests.hrchy_mstr_location h1
                    WHERE
                        (
                            h1.ancestor_mstr_location_id= NEW.mstr_location_id
                        )
                        AND
                        (
                            h1.descendant_mstr_location_id = hrchy_mstr_location.descendant_mstr_location_id
                        )
                );
        END IF;
    ELSEIF (TG_OP = 'DELETE') THEN
        DELETE--子孫削除
        FROM
            tests.hrchy_mstr_location h
        WHERE
            EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_location h1
                WHERE
                    (
                        h1.ancestor_mstr_location_id= OLD.mstr_location_id
                    )
                    AND
                    (
                        h1.descendant_mstr_location_id= h.descendant_mstr_location_id
                    )
            );

        SELECT
            COUNT(*) INTO counter
        FROM
            tests.mstr_location_tree h
        WHERE
            NOT EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_location h1
                WHERE
                    (
                        h1.descendant_mstr_location_id= h.mstr_location_id
                    )
            );
        IF (counter>0) THEN
            DELETE
            FROM
                tests.mstr_location_tree h
            WHERE
            NOT EXISTS
            (
                SELECT
                    1
                FROM
                    tests.hrchy_mstr_location h1
                WHERE
                    (
                        h1.descendant_mstr_location_id= h.mstr_location_id
                    )
            );
        END IF;
    END IF;
    RETURN NULL;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE OR REPLACE TRIGGER trg_03_hierarchy_mstr_location_tree AFTER INSERT OR UPDATE OR DELETE ON tests.mstr_location_tree FOR EACH ROW EXECUTE
PROCEDURE tests.trg_03_hierarchy_mstr_location_tree();

--0.create view
