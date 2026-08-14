// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'manipulation_error.dart';

class ManipulationErrorCodeMapper extends EnumMapper<ManipulationErrorCode> {
  ManipulationErrorCodeMapper._();

  static ManipulationErrorCodeMapper? _instance;
  static ManipulationErrorCodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ManipulationErrorCodeMapper._());
    }
    return _instance!;
  }

  static ManipulationErrorCode fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ManipulationErrorCode decode(dynamic value) {
    switch (value) {
      case r'timeManipulation':
        return ManipulationErrorCode.timeManipulation;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ManipulationErrorCode self) {
    switch (self) {
      case ManipulationErrorCode.timeManipulation:
        return r'timeManipulation';
    }
  }
}

extension ManipulationErrorCodeMapperExtension on ManipulationErrorCode {
  String toValue() {
    ManipulationErrorCodeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ManipulationErrorCode>(this)
        as String;
  }
}

class ManipulationErrorMapper extends ClassMapperBase<ManipulationError> {
  ManipulationErrorMapper._();

  static ManipulationErrorMapper? _instance;
  static ManipulationErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ManipulationErrorMapper._());
      SpecificErrorMapper.ensureInitialized();
      ManipulationErrorCodeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ManipulationError';

  static ManipulationErrorCode _$manipulationErrorCode(ManipulationError v) =>
      v.manipulationErrorCode;
  static const Field<ManipulationError, ManipulationErrorCode>
  _f$manipulationErrorCode = Field(
    'manipulationErrorCode',
    _$manipulationErrorCode,
  );
  static Object? _$exception(ManipulationError v) => v.exception;
  static const Field<ManipulationError, Object> _f$exception = Field(
    'exception',
    _$exception,
    opt: true,
  );
  static String? _$message(ManipulationError v) => v.message;
  static const Field<ManipulationError, String> _f$message = Field(
    'message',
    _$message,
    opt: true,
  );

  @override
  final MappableFields<ManipulationError> fields = const {
    #manipulationErrorCode: _f$manipulationErrorCode,
    #exception: _f$exception,
    #message: _f$message,
  };

  static ManipulationError _instantiate(DecodingData data) {
    return ManipulationError(
      data.dec(_f$manipulationErrorCode),
      exception: data.dec(_f$exception),
      message: data.dec(_f$message),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ManipulationError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ManipulationError>(map);
  }

  static ManipulationError fromJson(String json) {
    return ensureInitialized().decodeJson<ManipulationError>(json);
  }
}

mixin ManipulationErrorMappable {
  String toJson() {
    return ManipulationErrorMapper.ensureInitialized()
        .encodeJson<ManipulationError>(this as ManipulationError);
  }

  Map<String, dynamic> toMap() {
    return ManipulationErrorMapper.ensureInitialized()
        .encodeMap<ManipulationError>(this as ManipulationError);
  }

  ManipulationErrorCopyWith<
    ManipulationError,
    ManipulationError,
    ManipulationError
  >
  get copyWith =>
      _ManipulationErrorCopyWithImpl<ManipulationError, ManipulationError>(
        this as ManipulationError,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ManipulationErrorMapper.ensureInitialized().stringifyValue(
      this as ManipulationError,
    );
  }

  @override
  bool operator ==(Object other) {
    return ManipulationErrorMapper.ensureInitialized().equalsValue(
      this as ManipulationError,
      other,
    );
  }

  @override
  int get hashCode {
    return ManipulationErrorMapper.ensureInitialized().hashValue(
      this as ManipulationError,
    );
  }
}

extension ManipulationErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ManipulationError, $Out> {
  ManipulationErrorCopyWith<$R, ManipulationError, $Out>
  get $asManipulationError => $base.as(
    (v, t, t2) => _ManipulationErrorCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ManipulationErrorCopyWith<
  $R,
  $In extends ManipulationError,
  $Out
>
    implements SpecificErrorCopyWith<$R, $In, $Out> {
  @override
  $R call({
    ManipulationErrorCode? manipulationErrorCode,
    Object? exception,
    String? message,
  });
  ManipulationErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ManipulationErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ManipulationError, $Out>
    implements ManipulationErrorCopyWith<$R, ManipulationError, $Out> {
  _ManipulationErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ManipulationError> $mapper =
      ManipulationErrorMapper.ensureInitialized();
  @override
  $R call({
    ManipulationErrorCode? manipulationErrorCode,
    Object? exception = $none,
    Object? message = $none,
  }) => $apply(
    FieldCopyWithData({
      if (manipulationErrorCode != null)
        #manipulationErrorCode: manipulationErrorCode,
      if (exception != $none) #exception: exception,
      if (message != $none) #message: message,
    }),
  );
  @override
  ManipulationError $make(CopyWithData data) => ManipulationError(
    data.get(#manipulationErrorCode, or: $value.manipulationErrorCode),
    exception: data.get(#exception, or: $value.exception),
    message: data.get(#message, or: $value.message),
  );

  @override
  ManipulationErrorCopyWith<$R2, ManipulationError, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ManipulationErrorCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

