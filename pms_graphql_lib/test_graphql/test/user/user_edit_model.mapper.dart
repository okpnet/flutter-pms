// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_edit_model.dart';

class UserEditModelMapper extends ClassMapperBase<UserEditModel> {
  UserEditModelMapper._();

  static UserEditModelMapper? _instance;
  static UserEditModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserEditModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserEditModel';

  static int _$id(UserEditModel v) => v.id;
  static const Field<UserEditModel, int> _f$id = Field('id', _$id);
  static String _$name(UserEditModel v) => v.name;
  static const Field<UserEditModel, String> _f$name = Field('name', _$name);
  static String _$email(UserEditModel v) => v.email;
  static const Field<UserEditModel, String> _f$email = Field('email', _$email);
  static String _$gender(UserEditModel v) => v.gender;
  static const Field<UserEditModel, String> _f$gender = Field(
    'gender',
    _$gender,
  );
  static String _$status(UserEditModel v) => v.status;
  static const Field<UserEditModel, String> _f$status = Field(
    'status',
    _$status,
  );

  @override
  final MappableFields<UserEditModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #email: _f$email,
    #gender: _f$gender,
    #status: _f$status,
  };

  static UserEditModel _instantiate(DecodingData data) {
    return UserEditModel(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      email: data.dec(_f$email),
      gender: data.dec(_f$gender),
      status: data.dec(_f$status),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserEditModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserEditModel>(map);
  }

  static UserEditModel fromJson(String json) {
    return ensureInitialized().decodeJson<UserEditModel>(json);
  }
}

mixin UserEditModelMappable {
  String toJson() {
    return UserEditModelMapper.ensureInitialized().encodeJson<UserEditModel>(
      this as UserEditModel,
    );
  }

  Map<String, dynamic> toMap() {
    return UserEditModelMapper.ensureInitialized().encodeMap<UserEditModel>(
      this as UserEditModel,
    );
  }

  UserEditModelCopyWith<UserEditModel, UserEditModel, UserEditModel>
  get copyWith => _UserEditModelCopyWithImpl<UserEditModel, UserEditModel>(
    this as UserEditModel,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return UserEditModelMapper.ensureInitialized().stringifyValue(
      this as UserEditModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserEditModelMapper.ensureInitialized().equalsValue(
      this as UserEditModel,
      other,
    );
  }

  @override
  int get hashCode {
    return UserEditModelMapper.ensureInitialized().hashValue(
      this as UserEditModel,
    );
  }
}

extension UserEditModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserEditModel, $Out> {
  UserEditModelCopyWith<$R, UserEditModel, $Out> get $asUserEditModel =>
      $base.as((v, t, t2) => _UserEditModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserEditModelCopyWith<$R, $In extends UserEditModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? name,
    String? email,
    String? gender,
    String? status,
  });
  UserEditModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserEditModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserEditModel, $Out>
    implements UserEditModelCopyWith<$R, UserEditModel, $Out> {
  _UserEditModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserEditModel> $mapper =
      UserEditModelMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? name,
    String? email,
    String? gender,
    String? status,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (email != null) #email: email,
      if (gender != null) #gender: gender,
      if (status != null) #status: status,
    }),
  );
  @override
  UserEditModel $make(CopyWithData data) => UserEditModel(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    email: data.get(#email, or: $value.email),
    gender: data.get(#gender, or: $value.gender),
    status: data.get(#status, or: $value.status),
  );

  @override
  UserEditModelCopyWith<$R2, UserEditModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserEditModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

