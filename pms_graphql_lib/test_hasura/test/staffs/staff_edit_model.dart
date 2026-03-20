import 'package:dart_mappable/dart_mappable.dart';
import 'package:pms_graphql_lib/edit_models/_base/iedit_model.dart';

part 'staff_edit_model.mapper.dart';

@MappableClass()
class StaffEditModel with StaffEditModelMappable implements IEditModel {
  String? info_staff_id;
  String? code;
  String? kana;
  String? name;
  String? phone;
  String? private_phone;
  bool? remove;
  int? revision;
  String? sex;
  String? update_at;
  String? update_user_history_id;
  String? update_user_id;
  String? remarks;

  StaffEditModel({
    this.code,
    this.info_staff_id,
    this.kana,
    this.name,
    this.phone,
    this.private_phone,
    this.remarks,
    this.remove,
    this.sex,
  });
  @override
  bool get isNew =>
      info_staff_id == null ||
      info_staff_id!.isEmpty ||
      info_staff_id == '00000000-0000-0000-0000-000000000000' ||
      info_staff_id == 'null';

  @override
  bool get isValid => true;
}
