// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'maintenance_status.dart';

class MaintenanceStatusMapper extends ClassMapperBase<MaintenanceStatus> {
  MaintenanceStatusMapper._();

  static MaintenanceStatusMapper? _instance;
  static MaintenanceStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MaintenanceStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MaintenanceStatus';

  static bool _$isMaintenance(MaintenanceStatus v) => v.isMaintenance;
  static const Field<MaintenanceStatus, bool> _f$isMaintenance = Field(
    'isMaintenance',
    _$isMaintenance,
    opt: true,
    def: false,
  );
  static String _$message(MaintenanceStatus v) => v.message;
  static const Field<MaintenanceStatus, String> _f$message = Field(
    'message',
    _$message,
    opt: true,
    def: '',
  );
  static DateTime? _$maintenanceCompletionTime(MaintenanceStatus v) =>
      v.maintenanceCompletionTime;
  static const Field<MaintenanceStatus, DateTime> _f$maintenanceCompletionTime =
      Field(
        'maintenanceCompletionTime',
        _$maintenanceCompletionTime,
        opt: true,
      );

  @override
  final MappableFields<MaintenanceStatus> fields = const {
    #isMaintenance: _f$isMaintenance,
    #message: _f$message,
    #maintenanceCompletionTime: _f$maintenanceCompletionTime,
  };

  static MaintenanceStatus _instantiate(DecodingData data) {
    return MaintenanceStatus(
      isMaintenance: data.dec(_f$isMaintenance),
      message: data.dec(_f$message),
      maintenanceCompletionTime: data.dec(_f$maintenanceCompletionTime),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MaintenanceStatus fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MaintenanceStatus>(map);
  }

  static MaintenanceStatus fromJson(String json) {
    return ensureInitialized().decodeJson<MaintenanceStatus>(json);
  }
}

mixin MaintenanceStatusMappable {
  String toJson() {
    return MaintenanceStatusMapper.ensureInitialized()
        .encodeJson<MaintenanceStatus>(this as MaintenanceStatus);
  }

  Map<String, dynamic> toMap() {
    return MaintenanceStatusMapper.ensureInitialized()
        .encodeMap<MaintenanceStatus>(this as MaintenanceStatus);
  }

  MaintenanceStatusCopyWith<
    MaintenanceStatus,
    MaintenanceStatus,
    MaintenanceStatus
  >
  get copyWith =>
      _MaintenanceStatusCopyWithImpl<MaintenanceStatus, MaintenanceStatus>(
        this as MaintenanceStatus,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MaintenanceStatusMapper.ensureInitialized().stringifyValue(
      this as MaintenanceStatus,
    );
  }

  @override
  bool operator ==(Object other) {
    return MaintenanceStatusMapper.ensureInitialized().equalsValue(
      this as MaintenanceStatus,
      other,
    );
  }

  @override
  int get hashCode {
    return MaintenanceStatusMapper.ensureInitialized().hashValue(
      this as MaintenanceStatus,
    );
  }
}

extension MaintenanceStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MaintenanceStatus, $Out> {
  MaintenanceStatusCopyWith<$R, MaintenanceStatus, $Out>
  get $asMaintenanceStatus => $base.as(
    (v, t, t2) => _MaintenanceStatusCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MaintenanceStatusCopyWith<
  $R,
  $In extends MaintenanceStatus,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    bool? isMaintenance,
    String? message,
    DateTime? maintenanceCompletionTime,
  });
  MaintenanceStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MaintenanceStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MaintenanceStatus, $Out>
    implements MaintenanceStatusCopyWith<$R, MaintenanceStatus, $Out> {
  _MaintenanceStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MaintenanceStatus> $mapper =
      MaintenanceStatusMapper.ensureInitialized();
  @override
  $R call({
    bool? isMaintenance,
    String? message,
    Object? maintenanceCompletionTime = $none,
  }) => $apply(
    FieldCopyWithData({
      if (isMaintenance != null) #isMaintenance: isMaintenance,
      if (message != null) #message: message,
      if (maintenanceCompletionTime != $none)
        #maintenanceCompletionTime: maintenanceCompletionTime,
    }),
  );
  @override
  MaintenanceStatus $make(CopyWithData data) => MaintenanceStatus(
    isMaintenance: data.get(#isMaintenance, or: $value.isMaintenance),
    message: data.get(#message, or: $value.message),
    maintenanceCompletionTime: data.get(
      #maintenanceCompletionTime,
      or: $value.maintenanceCompletionTime,
    ),
  );

  @override
  MaintenanceStatusCopyWith<$R2, MaintenanceStatus, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MaintenanceStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

