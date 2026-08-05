// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'error_status.dart';

class ErrorStatusMapper extends ClassMapperBase<ErrorStatus> {
  ErrorStatusMapper._();

  static ErrorStatusMapper? _instance;
  static ErrorStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ErrorStatusMapper._());
      ErrorOriginMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ErrorStatus';

  static String? _$className(ErrorStatus v) => v.className;
  static const Field<ErrorStatus, String> _f$className = Field(
    'className',
    _$className,
    opt: true,
  );
  static ErrorOrigin _$erroOrigin(ErrorStatus v) => v.erroOrigin;
  static const Field<ErrorStatus, ErrorOrigin> _f$erroOrigin = Field(
    'erroOrigin',
    _$erroOrigin,
    opt: true,
    def: ErrorOrigin.unknown,
  );
  static String? _$errorCode(ErrorStatus v) => v.errorCode;
  static const Field<ErrorStatus, String> _f$errorCode = Field(
    'errorCode',
    _$errorCode,
    opt: true,
  );
  static String _$message(ErrorStatus v) => v.message;
  static const Field<ErrorStatus, String> _f$message = Field(
    'message',
    _$message,
    opt: true,
    def: '',
  );
  static String? _$trace(ErrorStatus v) => v.trace;
  static const Field<ErrorStatus, String> _f$trace = Field(
    'trace',
    _$trace,
    opt: true,
  );

  @override
  final MappableFields<ErrorStatus> fields = const {
    #className: _f$className,
    #erroOrigin: _f$erroOrigin,
    #errorCode: _f$errorCode,
    #message: _f$message,
    #trace: _f$trace,
  };

  static ErrorStatus _instantiate(DecodingData data) {
    return ErrorStatus(
      className: data.dec(_f$className),
      erroOrigin: data.dec(_f$erroOrigin),
      errorCode: data.dec(_f$errorCode),
      message: data.dec(_f$message),
      trace: data.dec(_f$trace),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ErrorStatus fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ErrorStatus>(map);
  }

  static ErrorStatus fromJson(String json) {
    return ensureInitialized().decodeJson<ErrorStatus>(json);
  }
}

mixin ErrorStatusMappable {
  String toJson() {
    return ErrorStatusMapper.ensureInitialized().encodeJson<ErrorStatus>(
      this as ErrorStatus,
    );
  }

  Map<String, dynamic> toMap() {
    return ErrorStatusMapper.ensureInitialized().encodeMap<ErrorStatus>(
      this as ErrorStatus,
    );
  }

  ErrorStatusCopyWith<ErrorStatus, ErrorStatus, ErrorStatus> get copyWith =>
      _ErrorStatusCopyWithImpl<ErrorStatus, ErrorStatus>(
        this as ErrorStatus,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ErrorStatusMapper.ensureInitialized().stringifyValue(
      this as ErrorStatus,
    );
  }

  @override
  bool operator ==(Object other) {
    return ErrorStatusMapper.ensureInitialized().equalsValue(
      this as ErrorStatus,
      other,
    );
  }

  @override
  int get hashCode {
    return ErrorStatusMapper.ensureInitialized().hashValue(this as ErrorStatus);
  }
}

extension ErrorStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ErrorStatus, $Out> {
  ErrorStatusCopyWith<$R, ErrorStatus, $Out> get $asErrorStatus =>
      $base.as((v, t, t2) => _ErrorStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ErrorStatusCopyWith<$R, $In extends ErrorStatus, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? className,
    ErrorOrigin? erroOrigin,
    String? errorCode,
    String? message,
    String? trace,
  });
  ErrorStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ErrorStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ErrorStatus, $Out>
    implements ErrorStatusCopyWith<$R, ErrorStatus, $Out> {
  _ErrorStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ErrorStatus> $mapper =
      ErrorStatusMapper.ensureInitialized();
  @override
  $R call({
    Object? className = $none,
    ErrorOrigin? erroOrigin,
    Object? errorCode = $none,
    String? message,
    Object? trace = $none,
  }) => $apply(
    FieldCopyWithData({
      if (className != $none) #className: className,
      if (erroOrigin != null) #erroOrigin: erroOrigin,
      if (errorCode != $none) #errorCode: errorCode,
      if (message != null) #message: message,
      if (trace != $none) #trace: trace,
    }),
  );
  @override
  ErrorStatus $make(CopyWithData data) => ErrorStatus(
    className: data.get(#className, or: $value.className),
    erroOrigin: data.get(#erroOrigin, or: $value.erroOrigin),
    errorCode: data.get(#errorCode, or: $value.errorCode),
    message: data.get(#message, or: $value.message),
    trace: data.get(#trace, or: $value.trace),
  );

  @override
  ErrorStatusCopyWith<$R2, ErrorStatus, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ErrorStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

