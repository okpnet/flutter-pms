// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'server_error.dart';

class ServerTypeCodeMapper extends EnumMapper<ServerTypeCode> {
  ServerTypeCodeMapper._();

  static ServerTypeCodeMapper? _instance;
  static ServerTypeCodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerTypeCodeMapper._());
    }
    return _instance!;
  }

  static ServerTypeCode fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ServerTypeCode decode(dynamic value) {
    switch (value) {
      case r'authorize':
        return ServerTypeCode.authorize;
      case r'ntp':
        return ServerTypeCode.ntp;
      case r'graphQL':
        return ServerTypeCode.graphQL;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ServerTypeCode self) {
    switch (self) {
      case ServerTypeCode.authorize:
        return r'authorize';
      case ServerTypeCode.ntp:
        return r'ntp';
      case ServerTypeCode.graphQL:
        return r'graphQL';
    }
  }
}

extension ServerTypeCodeMapperExtension on ServerTypeCode {
  String toValue() {
    ServerTypeCodeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ServerTypeCode>(this) as String;
  }
}

class ServerErrorMapper extends ClassMapperBase<ServerError> {
  ServerErrorMapper._();

  static ServerErrorMapper? _instance;
  static ServerErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerErrorMapper._());
      SpecificErrorMapper.ensureInitialized();
      ServerTypeCodeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerError';

  static ServerTypeCode _$serverTypeCode(ServerError v) => v.serverTypeCode;
  static const Field<ServerError, ServerTypeCode> _f$serverTypeCode = Field(
    'serverTypeCode',
    _$serverTypeCode,
  );
  static ServerErrorCode _$serverErrorCode(ServerError v) => v.serverErrorCode;
  static const Field<ServerError, ServerErrorCode> _f$serverErrorCode = Field(
    'serverErrorCode',
    _$serverErrorCode,
  );
  static Object? _$exception(ServerError v) => v.exception;
  static const Field<ServerError, Object> _f$exception = Field(
    'exception',
    _$exception,
    opt: true,
  );
  static String? _$message(ServerError v) => v.message;
  static const Field<ServerError, String> _f$message = Field(
    'message',
    _$message,
    opt: true,
  );

  @override
  final MappableFields<ServerError> fields = const {
    #serverTypeCode: _f$serverTypeCode,
    #serverErrorCode: _f$serverErrorCode,
    #exception: _f$exception,
    #message: _f$message,
  };

  static ServerError _instantiate(DecodingData data) {
    return ServerError(
      data.dec(_f$serverTypeCode),
      data.dec(_f$serverErrorCode),
      exception: data.dec(_f$exception),
      message: data.dec(_f$message),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ServerError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerError>(map);
  }

  static ServerError fromJson(String json) {
    return ensureInitialized().decodeJson<ServerError>(json);
  }
}

mixin ServerErrorMappable {
  String toJson() {
    return ServerErrorMapper.ensureInitialized().encodeJson<ServerError>(
      this as ServerError,
    );
  }

  Map<String, dynamic> toMap() {
    return ServerErrorMapper.ensureInitialized().encodeMap<ServerError>(
      this as ServerError,
    );
  }

  ServerErrorCopyWith<ServerError, ServerError, ServerError> get copyWith =>
      _ServerErrorCopyWithImpl<ServerError, ServerError>(
        this as ServerError,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ServerErrorMapper.ensureInitialized().stringifyValue(
      this as ServerError,
    );
  }

  @override
  bool operator ==(Object other) {
    return ServerErrorMapper.ensureInitialized().equalsValue(
      this as ServerError,
      other,
    );
  }

  @override
  int get hashCode {
    return ServerErrorMapper.ensureInitialized().hashValue(this as ServerError);
  }
}

extension ServerErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerError, $Out> {
  ServerErrorCopyWith<$R, ServerError, $Out> get $asServerError =>
      $base.as((v, t, t2) => _ServerErrorCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerErrorCopyWith<$R, $In extends ServerError, $Out>
    implements SpecificErrorCopyWith<$R, $In, $Out> {
  @override
  $R call({
    ServerTypeCode? serverTypeCode,
    ServerErrorCode? serverErrorCode,
    Object? exception,
    String? message,
  });
  ServerErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ServerErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerError, $Out>
    implements ServerErrorCopyWith<$R, ServerError, $Out> {
  _ServerErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerError> $mapper =
      ServerErrorMapper.ensureInitialized();
  @override
  $R call({
    ServerTypeCode? serverTypeCode,
    ServerErrorCode? serverErrorCode,
    Object? exception = $none,
    Object? message = $none,
  }) => $apply(
    FieldCopyWithData({
      if (serverTypeCode != null) #serverTypeCode: serverTypeCode,
      if (serverErrorCode != null) #serverErrorCode: serverErrorCode,
      if (exception != $none) #exception: exception,
      if (message != $none) #message: message,
    }),
  );
  @override
  ServerError $make(CopyWithData data) => ServerError(
    data.get(#serverTypeCode, or: $value.serverTypeCode),
    data.get(#serverErrorCode, or: $value.serverErrorCode),
    exception: data.get(#exception, or: $value.exception),
    message: data.get(#message, or: $value.message),
  );

  @override
  ServerErrorCopyWith<$R2, ServerError, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ServerErrorCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

