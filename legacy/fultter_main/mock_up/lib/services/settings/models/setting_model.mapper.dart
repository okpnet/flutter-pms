// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'setting_model.dart';

class SettingModelMapper extends ClassMapperBase<SettingModel> {
  SettingModelMapper._();

  static SettingModelMapper? _instance;
  static SettingModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SettingModel';

  static int _$fetchLimit(SettingModel v) => v.fetchLimit;
  static const Field<SettingModel, int> _f$fetchLimit = Field(
    'fetchLimit',
    _$fetchLimit,
    opt: true,
    def: 100,
  );

  @override
  final MappableFields<SettingModel> fields = const {
    #fetchLimit: _f$fetchLimit,
  };

  static SettingModel _instantiate(DecodingData data) {
    return SettingModel(fetchLimit: data.dec(_f$fetchLimit));
  }

  @override
  final Function instantiate = _instantiate;

  static SettingModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SettingModel>(map);
  }

  static SettingModel fromJson(String json) {
    return ensureInitialized().decodeJson<SettingModel>(json);
  }
}

mixin SettingModelMappable {
  String toJson() {
    return SettingModelMapper.ensureInitialized().encodeJson<SettingModel>(
      this as SettingModel,
    );
  }

  Map<String, dynamic> toMap() {
    return SettingModelMapper.ensureInitialized().encodeMap<SettingModel>(
      this as SettingModel,
    );
  }

  SettingModelCopyWith<SettingModel, SettingModel, SettingModel> get copyWith =>
      _SettingModelCopyWithImpl<SettingModel, SettingModel>(
        this as SettingModel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SettingModelMapper.ensureInitialized().stringifyValue(
      this as SettingModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return SettingModelMapper.ensureInitialized().equalsValue(
      this as SettingModel,
      other,
    );
  }

  @override
  int get hashCode {
    return SettingModelMapper.ensureInitialized().hashValue(
      this as SettingModel,
    );
  }
}

extension SettingModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SettingModel, $Out> {
  SettingModelCopyWith<$R, SettingModel, $Out> get $asSettingModel =>
      $base.as((v, t, t2) => _SettingModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SettingModelCopyWith<$R, $In extends SettingModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? fetchLimit});
  SettingModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SettingModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SettingModel, $Out>
    implements SettingModelCopyWith<$R, SettingModel, $Out> {
  _SettingModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SettingModel> $mapper =
      SettingModelMapper.ensureInitialized();
  @override
  $R call({int? fetchLimit}) => $apply(
    FieldCopyWithData({if (fetchLimit != null) #fetchLimit: fetchLimit}),
  );
  @override
  SettingModel $make(CopyWithData data) =>
      SettingModel(fetchLimit: data.get(#fetchLimit, or: $value.fetchLimit));

  @override
  SettingModelCopyWith<$R2, SettingModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SettingModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

