// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'app_error.dart';

class AppErrorCodeMapper extends EnumMapper<AppErrorCode> {
  AppErrorCodeMapper._();

  static AppErrorCodeMapper? _instance;
  static AppErrorCodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppErrorCodeMapper._());
    }
    return _instance!;
  }

  static AppErrorCode fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  AppErrorCode decode(dynamic value) {
    switch (value) {
      case r'standardTimeRelated':
        return AppErrorCode.standardTimeRelated;
      case r'inRouterClassScope':
        return AppErrorCode.inRouterClassScope;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(AppErrorCode self) {
    switch (self) {
      case AppErrorCode.standardTimeRelated:
        return r'standardTimeRelated';
      case AppErrorCode.inRouterClassScope:
        return r'inRouterClassScope';
    }
  }
}

extension AppErrorCodeMapperExtension on AppErrorCode {
  String toValue() {
    AppErrorCodeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<AppErrorCode>(this) as String;
  }
}

class AppErrorMapper extends ClassMapperBase<AppError> {
  AppErrorMapper._();

  static AppErrorMapper? _instance;
  static AppErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppErrorMapper._());
      SpecificErrorMapper.ensureInitialized();
      AppErrorCodeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AppError';

  static AppErrorCode _$appErrorCode(AppError v) => v.appErrorCode;
  static const Field<AppError, AppErrorCode> _f$appErrorCode = Field(
    'appErrorCode',
    _$appErrorCode,
  );
  static Object? _$exception(AppError v) => v.exception;
  static const Field<AppError, Object> _f$exception = Field(
    'exception',
    _$exception,
    opt: true,
  );
  static String? _$message(AppError v) => v.message;
  static const Field<AppError, String> _f$message = Field(
    'message',
    _$message,
    opt: true,
  );

  @override
  final MappableFields<AppError> fields = const {
    #appErrorCode: _f$appErrorCode,
    #exception: _f$exception,
    #message: _f$message,
  };

  static AppError _instantiate(DecodingData data) {
    return AppError(
      data.dec(_f$appErrorCode),
      exception: data.dec(_f$exception),
      message: data.dec(_f$message),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AppError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AppError>(map);
  }

  static AppError fromJson(String json) {
    return ensureInitialized().decodeJson<AppError>(json);
  }
}

mixin AppErrorMappable {
  String toJson() {
    return AppErrorMapper.ensureInitialized().encodeJson<AppError>(
      this as AppError,
    );
  }

  Map<String, dynamic> toMap() {
    return AppErrorMapper.ensureInitialized().encodeMap<AppError>(
      this as AppError,
    );
  }

  AppErrorCopyWith<AppError, AppError, AppError> get copyWith =>
      _AppErrorCopyWithImpl<AppError, AppError>(
        this as AppError,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AppErrorMapper.ensureInitialized().stringifyValue(this as AppError);
  }

  @override
  bool operator ==(Object other) {
    return AppErrorMapper.ensureInitialized().equalsValue(
      this as AppError,
      other,
    );
  }

  @override
  int get hashCode {
    return AppErrorMapper.ensureInitialized().hashValue(this as AppError);
  }
}

extension AppErrorValueCopy<$R, $Out> on ObjectCopyWith<$R, AppError, $Out> {
  AppErrorCopyWith<$R, AppError, $Out> get $asAppError =>
      $base.as((v, t, t2) => _AppErrorCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AppErrorCopyWith<$R, $In extends AppError, $Out>
    implements SpecificErrorCopyWith<$R, $In, $Out> {
  @override
  $R call({AppErrorCode? appErrorCode, Object? exception, String? message});
  AppErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AppErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AppError, $Out>
    implements AppErrorCopyWith<$R, AppError, $Out> {
  _AppErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AppError> $mapper =
      AppErrorMapper.ensureInitialized();
  @override
  $R call({
    AppErrorCode? appErrorCode,
    Object? exception = $none,
    Object? message = $none,
  }) => $apply(
    FieldCopyWithData({
      if (appErrorCode != null) #appErrorCode: appErrorCode,
      if (exception != $none) #exception: exception,
      if (message != $none) #message: message,
    }),
  );
  @override
  AppError $make(CopyWithData data) => AppError(
    data.get(#appErrorCode, or: $value.appErrorCode),
    exception: data.get(#exception, or: $value.exception),
    message: data.get(#message, or: $value.message),
  );

  @override
  AppErrorCopyWith<$R2, AppError, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AppErrorCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

