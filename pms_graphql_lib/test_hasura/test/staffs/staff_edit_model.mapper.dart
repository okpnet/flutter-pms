// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'staff_edit_model.dart';

class StaffEditModelMapper extends ClassMapperBase<StaffEditModel> {
  StaffEditModelMapper._();

  static StaffEditModelMapper? _instance;
  static StaffEditModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StaffEditModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'StaffEditModel';

  static String? _$code(StaffEditModel v) => v.code;
  static const Field<StaffEditModel, String> _f$code = Field(
    'code',
    _$code,
    opt: true,
  );
  static String? _$info_staff_id(StaffEditModel v) => v.info_staff_id;
  static const Field<StaffEditModel, String> _f$info_staff_id = Field(
    'info_staff_id',
    _$info_staff_id,
    opt: true,
  );
  static String? _$kana(StaffEditModel v) => v.kana;
  static const Field<StaffEditModel, String> _f$kana = Field(
    'kana',
    _$kana,
    opt: true,
  );
  static String? _$name(StaffEditModel v) => v.name;
  static const Field<StaffEditModel, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
  );
  static String? _$phone(StaffEditModel v) => v.phone;
  static const Field<StaffEditModel, String> _f$phone = Field(
    'phone',
    _$phone,
    opt: true,
  );
  static String? _$private_phone(StaffEditModel v) => v.private_phone;
  static const Field<StaffEditModel, String> _f$private_phone = Field(
    'private_phone',
    _$private_phone,
    opt: true,
  );
  static String? _$remarks(StaffEditModel v) => v.remarks;
  static const Field<StaffEditModel, String> _f$remarks = Field(
    'remarks',
    _$remarks,
    opt: true,
  );
  static bool? _$remove(StaffEditModel v) => v.remove;
  static const Field<StaffEditModel, bool> _f$remove = Field(
    'remove',
    _$remove,
    opt: true,
  );
  static String? _$sex(StaffEditModel v) => v.sex;
  static const Field<StaffEditModel, String> _f$sex = Field(
    'sex',
    _$sex,
    opt: true,
  );
  static int? _$revision(StaffEditModel v) => v.revision;
  static const Field<StaffEditModel, int> _f$revision = Field(
    'revision',
    _$revision,
    mode: FieldMode.member,
  );
  static String? _$update_at(StaffEditModel v) => v.update_at;
  static const Field<StaffEditModel, String> _f$update_at = Field(
    'update_at',
    _$update_at,
    mode: FieldMode.member,
  );
  static String? _$update_user_history_id(StaffEditModel v) =>
      v.update_user_history_id;
  static const Field<StaffEditModel, String> _f$update_user_history_id = Field(
    'update_user_history_id',
    _$update_user_history_id,
    mode: FieldMode.member,
  );
  static String? _$update_user_id(StaffEditModel v) => v.update_user_id;
  static const Field<StaffEditModel, String> _f$update_user_id = Field(
    'update_user_id',
    _$update_user_id,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<StaffEditModel> fields = const {
    #code: _f$code,
    #info_staff_id: _f$info_staff_id,
    #kana: _f$kana,
    #name: _f$name,
    #phone: _f$phone,
    #private_phone: _f$private_phone,
    #remarks: _f$remarks,
    #remove: _f$remove,
    #sex: _f$sex,
    #revision: _f$revision,
    #update_at: _f$update_at,
    #update_user_history_id: _f$update_user_history_id,
    #update_user_id: _f$update_user_id,
  };

  static StaffEditModel _instantiate(DecodingData data) {
    return StaffEditModel(
      code: data.dec(_f$code),
      info_staff_id: data.dec(_f$info_staff_id),
      kana: data.dec(_f$kana),
      name: data.dec(_f$name),
      phone: data.dec(_f$phone),
      private_phone: data.dec(_f$private_phone),
      remarks: data.dec(_f$remarks),
      remove: data.dec(_f$remove),
      sex: data.dec(_f$sex),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static StaffEditModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StaffEditModel>(map);
  }

  static StaffEditModel fromJson(String json) {
    return ensureInitialized().decodeJson<StaffEditModel>(json);
  }
}

mixin StaffEditModelMappable {
  String toJson() {
    return StaffEditModelMapper.ensureInitialized().encodeJson<StaffEditModel>(
      this as StaffEditModel,
    );
  }

  Map<String, dynamic> toMap() {
    return StaffEditModelMapper.ensureInitialized().encodeMap<StaffEditModel>(
      this as StaffEditModel,
    );
  }

  StaffEditModelCopyWith<StaffEditModel, StaffEditModel, StaffEditModel>
  get copyWith => _StaffEditModelCopyWithImpl<StaffEditModel, StaffEditModel>(
    this as StaffEditModel,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return StaffEditModelMapper.ensureInitialized().stringifyValue(
      this as StaffEditModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return StaffEditModelMapper.ensureInitialized().equalsValue(
      this as StaffEditModel,
      other,
    );
  }

  @override
  int get hashCode {
    return StaffEditModelMapper.ensureInitialized().hashValue(
      this as StaffEditModel,
    );
  }
}

extension StaffEditModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StaffEditModel, $Out> {
  StaffEditModelCopyWith<$R, StaffEditModel, $Out> get $asStaffEditModel =>
      $base.as((v, t, t2) => _StaffEditModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class StaffEditModelCopyWith<$R, $In extends StaffEditModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? code,
    String? info_staff_id,
    String? kana,
    String? name,
    String? phone,
    String? private_phone,
    String? remarks,
    bool? remove,
    String? sex,
  });
  StaffEditModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _StaffEditModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StaffEditModel, $Out>
    implements StaffEditModelCopyWith<$R, StaffEditModel, $Out> {
  _StaffEditModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StaffEditModel> $mapper =
      StaffEditModelMapper.ensureInitialized();
  @override
  $R call({
    Object? code = $none,
    Object? info_staff_id = $none,
    Object? kana = $none,
    Object? name = $none,
    Object? phone = $none,
    Object? private_phone = $none,
    Object? remarks = $none,
    Object? remove = $none,
    Object? sex = $none,
  }) => $apply(
    FieldCopyWithData({
      if (code != $none) #code: code,
      if (info_staff_id != $none) #info_staff_id: info_staff_id,
      if (kana != $none) #kana: kana,
      if (name != $none) #name: name,
      if (phone != $none) #phone: phone,
      if (private_phone != $none) #private_phone: private_phone,
      if (remarks != $none) #remarks: remarks,
      if (remove != $none) #remove: remove,
      if (sex != $none) #sex: sex,
    }),
  );
  @override
  StaffEditModel $make(CopyWithData data) => StaffEditModel(
    code: data.get(#code, or: $value.code),
    info_staff_id: data.get(#info_staff_id, or: $value.info_staff_id),
    kana: data.get(#kana, or: $value.kana),
    name: data.get(#name, or: $value.name),
    phone: data.get(#phone, or: $value.phone),
    private_phone: data.get(#private_phone, or: $value.private_phone),
    remarks: data.get(#remarks, or: $value.remarks),
    remove: data.get(#remove, or: $value.remove),
    sex: data.get(#sex, or: $value.sex),
  );

  @override
  StaffEditModelCopyWith<$R2, StaffEditModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _StaffEditModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

