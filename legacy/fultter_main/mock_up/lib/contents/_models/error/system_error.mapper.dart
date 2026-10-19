// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'system_error.dart';

class SystemErrorCodeMapper extends EnumMapper<SystemErrorCode> {
  SystemErrorCodeMapper._();

  static SystemErrorCodeMapper? _instance;
  static SystemErrorCodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SystemErrorCodeMapper._());
    }
    return _instance!;
  }

  static SystemErrorCode fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SystemErrorCode decode(dynamic value) {
    switch (value) {
      case r'initialize':
        return SystemErrorCode.initialize;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(SystemErrorCode self) {
    switch (self) {
      case SystemErrorCode.initialize:
        return r'initialize';
    }
  }
}

extension SystemErrorCodeMapperExtension on SystemErrorCode {
  String toValue() {
    SystemErrorCodeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SystemErrorCode>(this) as String;
  }
}

class SystemErrorMapper extends ClassMapperBase<SystemError> {
  SystemErrorMapper._();

  static SystemErrorMapper? _instance;
  static SystemErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SystemErrorMapper._());
      SpecificErrorMapper.ensureInitialized();
      SystemErrorCodeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SystemError';

  static SystemErrorCode _$systemErrorCode(SystemError v) => v.systemErrorCode;
  static const Field<SystemError, SystemErrorCode> _f$systemErrorCode = Field(
    'systemErrorCode',
    _$systemErrorCode,
  );
  static Object? _$exception(SystemError v) => v.exception;
  static const Field<SystemError, Object> _f$exception = Field(
    'exception',
    _$exception,
    opt: true,
  );
  static String? _$message(SystemError v) => v.message;
  static const Field<SystemError, String> _f$message = Field(
    'message',
    _$message,
    opt: true,
  );

  @override
  final MappableFields<SystemError> fields = const {
    #systemErrorCode: _f$systemErrorCode,
    #exception: _f$exception,
    #message: _f$message,
  };

  static SystemError _instantiate(DecodingData data) {
    return SystemError(
      data.dec(_f$systemErrorCode),
      exception: data.dec(_f$exception),
      message: data.dec(_f$message),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SystemError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SystemError>(map);
  }

  static SystemError fromJson(String json) {
    return ensureInitialized().decodeJson<SystemError>(json);
  }
}

mixin SystemErrorMappable {
  String toJson() {
    return SystemErrorMapper.ensureInitialized().encodeJson<SystemError>(
      this as SystemError,
    );
  }

  Map<String, dynamic> toMap() {
    return SystemErrorMapper.ensureInitialized().encodeMap<SystemError>(
      this as SystemError,
    );
  }

  SystemErrorCopyWith<SystemError, SystemError, SystemError> get copyWith =>
      _SystemErrorCopyWithImpl<SystemError, SystemError>(
        this as SystemError,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SystemErrorMapper.ensureInitialized().stringifyValue(
      this as SystemError,
    );
  }

  @override
  bool operator ==(Object other) {
    return SystemErrorMapper.ensureInitialized().equalsValue(
      this as SystemError,
      other,
    );
  }

  @override
  int get hashCode {
    return SystemErrorMapper.ensureInitialized().hashValue(this as SystemError);
  }
}

extension SystemErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SystemError, $Out> {
  SystemErrorCopyWith<$R, SystemError, $Out> get $asSystemError =>
      $base.as((v, t, t2) => _SystemErrorCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SystemErrorCopyWith<$R, $In extends SystemError, $Out>
    implements SpecificErrorCopyWith<$R, $In, $Out> {
  @override
  $R call({
    SystemErrorCode? systemErrorCode,
    Object? exception,
    String? message,
  });
  SystemErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SystemErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SystemError, $Out>
    implements SystemErrorCopyWith<$R, SystemError, $Out> {
  _SystemErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SystemError> $mapper =
      SystemErrorMapper.ensureInitialized();
  @override
  $R call({
    SystemErrorCode? systemErrorCode,
    Object? exception = $none,
    Object? message = $none,
  }) => $apply(
    FieldCopyWithData({
      if (systemErrorCode != null) #systemErrorCode: systemErrorCode,
      if (exception != $none) #exception: exception,
      if (message != $none) #message: message,
    }),
  );
  @override
  SystemError $make(CopyWithData data) => SystemError(
    data.get(#systemErrorCode, or: $value.systemErrorCode),
    exception: data.get(#exception, or: $value.exception),
    message: data.get(#message, or: $value.message),
  );

  @override
  SystemErrorCopyWith<$R2, SystemError, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SystemErrorCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

