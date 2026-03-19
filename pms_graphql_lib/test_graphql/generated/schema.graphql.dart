class Input$createCommentInput {
  factory Input$createCommentInput({
    required String body,
    String? clientMutationId,
    required String email,
    required String name,
    required int postId,
  }) => Input$createCommentInput._({
    r'body': body,
    if (clientMutationId != null) r'clientMutationId': clientMutationId,
    r'email': email,
    r'name': name,
    r'postId': postId,
  });

  Input$createCommentInput._(this._$data);

  factory Input$createCommentInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$body = data['body'];
    result$data['body'] = (l$body as String);
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$postId = data['postId'];
    result$data['postId'] = (l$postId as int);
    return Input$createCommentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get body => (_$data['body'] as String);

  String? get clientMutationId => (_$data['clientMutationId'] as String?);

  String get email => (_$data['email'] as String);

  String get name => (_$data['name'] as String);

  int get postId => (_$data['postId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$body = body;
    result$data['body'] = l$body;
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    final l$email = email;
    result$data['email'] = l$email;
    final l$name = name;
    result$data['name'] = l$name;
    final l$postId = postId;
    result$data['postId'] = l$postId;
    return result$data;
  }

  CopyWith$Input$createCommentInput<Input$createCommentInput> get copyWith =>
      CopyWith$Input$createCommentInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$createCommentInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$postId = postId;
    final lOther$postId = other.postId;
    if (l$postId != lOther$postId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$body = body;
    final l$clientMutationId = clientMutationId;
    final l$email = email;
    final l$name = name;
    final l$postId = postId;
    return Object.hashAll([
      l$body,
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      l$email,
      l$name,
      l$postId,
    ]);
  }
}

abstract class CopyWith$Input$createCommentInput<TRes> {
  factory CopyWith$Input$createCommentInput(
    Input$createCommentInput instance,
    TRes Function(Input$createCommentInput) then,
  ) = _CopyWithImpl$Input$createCommentInput;

  factory CopyWith$Input$createCommentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$createCommentInput;

  TRes call({
    String? body,
    String? clientMutationId,
    String? email,
    String? name,
    int? postId,
  });
}

class _CopyWithImpl$Input$createCommentInput<TRes>
    implements CopyWith$Input$createCommentInput<TRes> {
  _CopyWithImpl$Input$createCommentInput(this._instance, this._then);

  final Input$createCommentInput _instance;

  final TRes Function(Input$createCommentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? body = _undefined,
    Object? clientMutationId = _undefined,
    Object? email = _undefined,
    Object? name = _undefined,
    Object? postId = _undefined,
  }) => _then(
    Input$createCommentInput._({
      ..._instance._$data,
      if (body != _undefined && body != null) 'body': (body as String),
      if (clientMutationId != _undefined)
        'clientMutationId': (clientMutationId as String?),
      if (email != _undefined && email != null) 'email': (email as String),
      if (name != _undefined && name != null) 'name': (name as String),
      if (postId != _undefined && postId != null) 'postId': (postId as int),
    }),
  );
}

class _CopyWithStubImpl$Input$createCommentInput<TRes>
    implements CopyWith$Input$createCommentInput<TRes> {
  _CopyWithStubImpl$Input$createCommentInput(this._res);

  TRes _res;

  call({
    String? body,
    String? clientMutationId,
    String? email,
    String? name,
    int? postId,
  }) => _res;
}

class Input$createPostInput {
  factory Input$createPostInput({
    required String body,
    String? clientMutationId,
    required String title,
    required int userId,
  }) => Input$createPostInput._({
    r'body': body,
    if (clientMutationId != null) r'clientMutationId': clientMutationId,
    r'title': title,
    r'userId': userId,
  });

  Input$createPostInput._(this._$data);

  factory Input$createPostInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$body = data['body'];
    result$data['body'] = (l$body as String);
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as int);
    return Input$createPostInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get body => (_$data['body'] as String);

  String? get clientMutationId => (_$data['clientMutationId'] as String?);

  String get title => (_$data['title'] as String);

  int get userId => (_$data['userId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$body = body;
    result$data['body'] = l$body;
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    final l$title = title;
    result$data['title'] = l$title;
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Input$createPostInput<Input$createPostInput> get copyWith =>
      CopyWith$Input$createPostInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$createPostInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$body = body;
    final l$clientMutationId = clientMutationId;
    final l$title = title;
    final l$userId = userId;
    return Object.hashAll([
      l$body,
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      l$title,
      l$userId,
    ]);
  }
}

abstract class CopyWith$Input$createPostInput<TRes> {
  factory CopyWith$Input$createPostInput(
    Input$createPostInput instance,
    TRes Function(Input$createPostInput) then,
  ) = _CopyWithImpl$Input$createPostInput;

  factory CopyWith$Input$createPostInput.stub(TRes res) =
      _CopyWithStubImpl$Input$createPostInput;

  TRes call({
    String? body,
    String? clientMutationId,
    String? title,
    int? userId,
  });
}

class _CopyWithImpl$Input$createPostInput<TRes>
    implements CopyWith$Input$createPostInput<TRes> {
  _CopyWithImpl$Input$createPostInput(this._instance, this._then);

  final Input$createPostInput _instance;

  final TRes Function(Input$createPostInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? body = _undefined,
    Object? clientMutationId = _undefined,
    Object? title = _undefined,
    Object? userId = _undefined,
  }) => _then(
    Input$createPostInput._({
      ..._instance._$data,
      if (body != _undefined && body != null) 'body': (body as String),
      if (clientMutationId != _undefined)
        'clientMutationId': (clientMutationId as String?),
      if (title != _undefined && title != null) 'title': (title as String),
      if (userId != _undefined && userId != null) 'userId': (userId as int),
    }),
  );
}

class _CopyWithStubImpl$Input$createPostInput<TRes>
    implements CopyWith$Input$createPostInput<TRes> {
  _CopyWithStubImpl$Input$createPostInput(this._res);

  TRes _res;

  call({String? body, String? clientMutationId, String? title, int? userId}) =>
      _res;
}

class Input$createTodoInput {
  factory Input$createTodoInput({
    String? clientMutationId,
    required String dueOn,
    required String status,
    required String title,
    required int userId,
  }) => Input$createTodoInput._({
    if (clientMutationId != null) r'clientMutationId': clientMutationId,
    r'dueOn': dueOn,
    r'status': status,
    r'title': title,
    r'userId': userId,
  });

  Input$createTodoInput._(this._$data);

  factory Input$createTodoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    final l$dueOn = data['dueOn'];
    result$data['dueOn'] = (l$dueOn as String);
    final l$status = data['status'];
    result$data['status'] = (l$status as String);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as int);
    return Input$createTodoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get clientMutationId => (_$data['clientMutationId'] as String?);

  String get dueOn => (_$data['dueOn'] as String);

  String get status => (_$data['status'] as String);

  String get title => (_$data['title'] as String);

  int get userId => (_$data['userId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    final l$dueOn = dueOn;
    result$data['dueOn'] = l$dueOn;
    final l$status = status;
    result$data['status'] = l$status;
    final l$title = title;
    result$data['title'] = l$title;
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Input$createTodoInput<Input$createTodoInput> get copyWith =>
      CopyWith$Input$createTodoInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$createTodoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$dueOn = dueOn;
    final lOther$dueOn = other.dueOn;
    if (l$dueOn != lOther$dueOn) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$dueOn = dueOn;
    final l$status = status;
    final l$title = title;
    final l$userId = userId;
    return Object.hashAll([
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      l$dueOn,
      l$status,
      l$title,
      l$userId,
    ]);
  }
}

abstract class CopyWith$Input$createTodoInput<TRes> {
  factory CopyWith$Input$createTodoInput(
    Input$createTodoInput instance,
    TRes Function(Input$createTodoInput) then,
  ) = _CopyWithImpl$Input$createTodoInput;

  factory CopyWith$Input$createTodoInput.stub(TRes res) =
      _CopyWithStubImpl$Input$createTodoInput;

  TRes call({
    String? clientMutationId,
    String? dueOn,
    String? status,
    String? title,
    int? userId,
  });
}

class _CopyWithImpl$Input$createTodoInput<TRes>
    implements CopyWith$Input$createTodoInput<TRes> {
  _CopyWithImpl$Input$createTodoInput(this._instance, this._then);

  final Input$createTodoInput _instance;

  final TRes Function(Input$createTodoInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clientMutationId = _undefined,
    Object? dueOn = _undefined,
    Object? status = _undefined,
    Object? title = _undefined,
    Object? userId = _undefined,
  }) => _then(
    Input$createTodoInput._({
      ..._instance._$data,
      if (clientMutationId != _undefined)
        'clientMutationId': (clientMutationId as String?),
      if (dueOn != _undefined && dueOn != null) 'dueOn': (dueOn as String),
      if (status != _undefined && status != null) 'status': (status as String),
      if (title != _undefined && title != null) 'title': (title as String),
      if (userId != _undefined && userId != null) 'userId': (userId as int),
    }),
  );
}

class _CopyWithStubImpl$Input$createTodoInput<TRes>
    implements CopyWith$Input$createTodoInput<TRes> {
  _CopyWithStubImpl$Input$createTodoInput(this._res);

  TRes _res;

  call({
    String? clientMutationId,
    String? dueOn,
    String? status,
    String? title,
    int? userId,
  }) => _res;
}

class Input$createUserInput {
  factory Input$createUserInput({
    String? clientMutationId,
    required String email,
    required String gender,
    required String name,
    required String status,
  }) => Input$createUserInput._({
    if (clientMutationId != null) r'clientMutationId': clientMutationId,
    r'email': email,
    r'gender': gender,
    r'name': name,
    r'status': status,
  });

  Input$createUserInput._(this._$data);

  factory Input$createUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$gender = data['gender'];
    result$data['gender'] = (l$gender as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$status = data['status'];
    result$data['status'] = (l$status as String);
    return Input$createUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get clientMutationId => (_$data['clientMutationId'] as String?);

  String get email => (_$data['email'] as String);

  String get gender => (_$data['gender'] as String);

  String get name => (_$data['name'] as String);

  String get status => (_$data['status'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    final l$email = email;
    result$data['email'] = l$email;
    final l$gender = gender;
    result$data['gender'] = l$gender;
    final l$name = name;
    result$data['name'] = l$name;
    final l$status = status;
    result$data['status'] = l$status;
    return result$data;
  }

  CopyWith$Input$createUserInput<Input$createUserInput> get copyWith =>
      CopyWith$Input$createUserInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$createUserInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$email = email;
    final l$gender = gender;
    final l$name = name;
    final l$status = status;
    return Object.hashAll([
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      l$email,
      l$gender,
      l$name,
      l$status,
    ]);
  }
}

abstract class CopyWith$Input$createUserInput<TRes> {
  factory CopyWith$Input$createUserInput(
    Input$createUserInput instance,
    TRes Function(Input$createUserInput) then,
  ) = _CopyWithImpl$Input$createUserInput;

  factory CopyWith$Input$createUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$createUserInput;

  TRes call({
    String? clientMutationId,
    String? email,
    String? gender,
    String? name,
    String? status,
  });
}

class _CopyWithImpl$Input$createUserInput<TRes>
    implements CopyWith$Input$createUserInput<TRes> {
  _CopyWithImpl$Input$createUserInput(this._instance, this._then);

  final Input$createUserInput _instance;

  final TRes Function(Input$createUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clientMutationId = _undefined,
    Object? email = _undefined,
    Object? gender = _undefined,
    Object? name = _undefined,
    Object? status = _undefined,
  }) => _then(
    Input$createUserInput._({
      ..._instance._$data,
      if (clientMutationId != _undefined)
        'clientMutationId': (clientMutationId as String?),
      if (email != _undefined && email != null) 'email': (email as String),
      if (gender != _undefined && gender != null) 'gender': (gender as String),
      if (name != _undefined && name != null) 'name': (name as String),
      if (status != _undefined && status != null) 'status': (status as String),
    }),
  );
}

class _CopyWithStubImpl$Input$createUserInput<TRes>
    implements CopyWith$Input$createUserInput<TRes> {
  _CopyWithStubImpl$Input$createUserInput(this._res);

  TRes _res;

  call({
    String? clientMutationId,
    String? email,
    String? gender,
    String? name,
    String? status,
  }) => _res;
}

class Input$deleteCommentInput {
  factory Input$deleteCommentInput({
    String? clientMutationId,
    required int id,
  }) => Input$deleteCommentInput._({
    if (clientMutationId != null) r'clientMutationId': clientMutationId,
    r'id': id,
  });

  Input$deleteCommentInput._(this._$data);

  factory Input$deleteCommentInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$deleteCommentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get clientMutationId => (_$data['clientMutationId'] as String?);

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$deleteCommentInput<Input$deleteCommentInput> get copyWith =>
      CopyWith$Input$deleteCommentInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$deleteCommentInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      l$id,
    ]);
  }
}

abstract class CopyWith$Input$deleteCommentInput<TRes> {
  factory CopyWith$Input$deleteCommentInput(
    Input$deleteCommentInput instance,
    TRes Function(Input$deleteCommentInput) then,
  ) = _CopyWithImpl$Input$deleteCommentInput;

  factory CopyWith$Input$deleteCommentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$deleteCommentInput;

  TRes call({String? clientMutationId, int? id});
}

class _CopyWithImpl$Input$deleteCommentInput<TRes>
    implements CopyWith$Input$deleteCommentInput<TRes> {
  _CopyWithImpl$Input$deleteCommentInput(this._instance, this._then);

  final Input$deleteCommentInput _instance;

  final TRes Function(Input$deleteCommentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? clientMutationId = _undefined, Object? id = _undefined}) =>
      _then(
        Input$deleteCommentInput._({
          ..._instance._$data,
          if (clientMutationId != _undefined)
            'clientMutationId': (clientMutationId as String?),
          if (id != _undefined && id != null) 'id': (id as int),
        }),
      );
}

class _CopyWithStubImpl$Input$deleteCommentInput<TRes>
    implements CopyWith$Input$deleteCommentInput<TRes> {
  _CopyWithStubImpl$Input$deleteCommentInput(this._res);

  TRes _res;

  call({String? clientMutationId, int? id}) => _res;
}

class Input$deletePostInput {
  factory Input$deletePostInput({String? clientMutationId, required int id}) =>
      Input$deletePostInput._({
        if (clientMutationId != null) r'clientMutationId': clientMutationId,
        r'id': id,
      });

  Input$deletePostInput._(this._$data);

  factory Input$deletePostInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$deletePostInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get clientMutationId => (_$data['clientMutationId'] as String?);

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$deletePostInput<Input$deletePostInput> get copyWith =>
      CopyWith$Input$deletePostInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$deletePostInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      l$id,
    ]);
  }
}

abstract class CopyWith$Input$deletePostInput<TRes> {
  factory CopyWith$Input$deletePostInput(
    Input$deletePostInput instance,
    TRes Function(Input$deletePostInput) then,
  ) = _CopyWithImpl$Input$deletePostInput;

  factory CopyWith$Input$deletePostInput.stub(TRes res) =
      _CopyWithStubImpl$Input$deletePostInput;

  TRes call({String? clientMutationId, int? id});
}

class _CopyWithImpl$Input$deletePostInput<TRes>
    implements CopyWith$Input$deletePostInput<TRes> {
  _CopyWithImpl$Input$deletePostInput(this._instance, this._then);

  final Input$deletePostInput _instance;

  final TRes Function(Input$deletePostInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? clientMutationId = _undefined, Object? id = _undefined}) =>
      _then(
        Input$deletePostInput._({
          ..._instance._$data,
          if (clientMutationId != _undefined)
            'clientMutationId': (clientMutationId as String?),
          if (id != _undefined && id != null) 'id': (id as int),
        }),
      );
}

class _CopyWithStubImpl$Input$deletePostInput<TRes>
    implements CopyWith$Input$deletePostInput<TRes> {
  _CopyWithStubImpl$Input$deletePostInput(this._res);

  TRes _res;

  call({String? clientMutationId, int? id}) => _res;
}

class Input$deleteTodoInput {
  factory Input$deleteTodoInput({String? clientMutationId, required int id}) =>
      Input$deleteTodoInput._({
        if (clientMutationId != null) r'clientMutationId': clientMutationId,
        r'id': id,
      });

  Input$deleteTodoInput._(this._$data);

  factory Input$deleteTodoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$deleteTodoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get clientMutationId => (_$data['clientMutationId'] as String?);

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$deleteTodoInput<Input$deleteTodoInput> get copyWith =>
      CopyWith$Input$deleteTodoInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$deleteTodoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      l$id,
    ]);
  }
}

abstract class CopyWith$Input$deleteTodoInput<TRes> {
  factory CopyWith$Input$deleteTodoInput(
    Input$deleteTodoInput instance,
    TRes Function(Input$deleteTodoInput) then,
  ) = _CopyWithImpl$Input$deleteTodoInput;

  factory CopyWith$Input$deleteTodoInput.stub(TRes res) =
      _CopyWithStubImpl$Input$deleteTodoInput;

  TRes call({String? clientMutationId, int? id});
}

class _CopyWithImpl$Input$deleteTodoInput<TRes>
    implements CopyWith$Input$deleteTodoInput<TRes> {
  _CopyWithImpl$Input$deleteTodoInput(this._instance, this._then);

  final Input$deleteTodoInput _instance;

  final TRes Function(Input$deleteTodoInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? clientMutationId = _undefined, Object? id = _undefined}) =>
      _then(
        Input$deleteTodoInput._({
          ..._instance._$data,
          if (clientMutationId != _undefined)
            'clientMutationId': (clientMutationId as String?),
          if (id != _undefined && id != null) 'id': (id as int),
        }),
      );
}

class _CopyWithStubImpl$Input$deleteTodoInput<TRes>
    implements CopyWith$Input$deleteTodoInput<TRes> {
  _CopyWithStubImpl$Input$deleteTodoInput(this._res);

  TRes _res;

  call({String? clientMutationId, int? id}) => _res;
}

class Input$deleteUserInput {
  factory Input$deleteUserInput({String? clientMutationId, required int id}) =>
      Input$deleteUserInput._({
        if (clientMutationId != null) r'clientMutationId': clientMutationId,
        r'id': id,
      });

  Input$deleteUserInput._(this._$data);

  factory Input$deleteUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$deleteUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get clientMutationId => (_$data['clientMutationId'] as String?);

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$deleteUserInput<Input$deleteUserInput> get copyWith =>
      CopyWith$Input$deleteUserInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$deleteUserInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      l$id,
    ]);
  }
}

abstract class CopyWith$Input$deleteUserInput<TRes> {
  factory CopyWith$Input$deleteUserInput(
    Input$deleteUserInput instance,
    TRes Function(Input$deleteUserInput) then,
  ) = _CopyWithImpl$Input$deleteUserInput;

  factory CopyWith$Input$deleteUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$deleteUserInput;

  TRes call({String? clientMutationId, int? id});
}

class _CopyWithImpl$Input$deleteUserInput<TRes>
    implements CopyWith$Input$deleteUserInput<TRes> {
  _CopyWithImpl$Input$deleteUserInput(this._instance, this._then);

  final Input$deleteUserInput _instance;

  final TRes Function(Input$deleteUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? clientMutationId = _undefined, Object? id = _undefined}) =>
      _then(
        Input$deleteUserInput._({
          ..._instance._$data,
          if (clientMutationId != _undefined)
            'clientMutationId': (clientMutationId as String?),
          if (id != _undefined && id != null) 'id': (id as int),
        }),
      );
}

class _CopyWithStubImpl$Input$deleteUserInput<TRes>
    implements CopyWith$Input$deleteUserInput<TRes> {
  _CopyWithStubImpl$Input$deleteUserInput(this._res);

  TRes _res;

  call({String? clientMutationId, int? id}) => _res;
}

class Input$updateCommentInput {
  factory Input$updateCommentInput({
    String? body,
    String? clientMutationId,
    String? email,
    required int id,
    String? name,
    int? postId,
  }) => Input$updateCommentInput._({
    if (body != null) r'body': body,
    if (clientMutationId != null) r'clientMutationId': clientMutationId,
    if (email != null) r'email': email,
    r'id': id,
    if (name != null) r'name': name,
    if (postId != null) r'postId': postId,
  });

  Input$updateCommentInput._(this._$data);

  factory Input$updateCommentInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('body')) {
      final l$body = data['body'];
      result$data['body'] = (l$body as String?);
    }
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('postId')) {
      final l$postId = data['postId'];
      result$data['postId'] = (l$postId as int?);
    }
    return Input$updateCommentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get body => (_$data['body'] as String?);

  String? get clientMutationId => (_$data['clientMutationId'] as String?);

  String? get email => (_$data['email'] as String?);

  int get id => (_$data['id'] as int);

  String? get name => (_$data['name'] as String?);

  int? get postId => (_$data['postId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('body')) {
      final l$body = body;
      result$data['body'] = l$body;
    }
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('postId')) {
      final l$postId = postId;
      result$data['postId'] = l$postId;
    }
    return result$data;
  }

  CopyWith$Input$updateCommentInput<Input$updateCommentInput> get copyWith =>
      CopyWith$Input$updateCommentInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$updateCommentInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (_$data.containsKey('body') != other._$data.containsKey('body')) {
      return false;
    }
    if (l$body != lOther$body) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$postId = postId;
    final lOther$postId = other.postId;
    if (_$data.containsKey('postId') != other._$data.containsKey('postId')) {
      return false;
    }
    if (l$postId != lOther$postId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$body = body;
    final l$clientMutationId = clientMutationId;
    final l$email = email;
    final l$id = id;
    final l$name = name;
    final l$postId = postId;
    return Object.hashAll([
      _$data.containsKey('body') ? l$body : const {},
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      _$data.containsKey('email') ? l$email : const {},
      l$id,
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('postId') ? l$postId : const {},
    ]);
  }
}

abstract class CopyWith$Input$updateCommentInput<TRes> {
  factory CopyWith$Input$updateCommentInput(
    Input$updateCommentInput instance,
    TRes Function(Input$updateCommentInput) then,
  ) = _CopyWithImpl$Input$updateCommentInput;

  factory CopyWith$Input$updateCommentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$updateCommentInput;

  TRes call({
    String? body,
    String? clientMutationId,
    String? email,
    int? id,
    String? name,
    int? postId,
  });
}

class _CopyWithImpl$Input$updateCommentInput<TRes>
    implements CopyWith$Input$updateCommentInput<TRes> {
  _CopyWithImpl$Input$updateCommentInput(this._instance, this._then);

  final Input$updateCommentInput _instance;

  final TRes Function(Input$updateCommentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? body = _undefined,
    Object? clientMutationId = _undefined,
    Object? email = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? postId = _undefined,
  }) => _then(
    Input$updateCommentInput._({
      ..._instance._$data,
      if (body != _undefined) 'body': (body as String?),
      if (clientMutationId != _undefined)
        'clientMutationId': (clientMutationId as String?),
      if (email != _undefined) 'email': (email as String?),
      if (id != _undefined && id != null) 'id': (id as int),
      if (name != _undefined) 'name': (name as String?),
      if (postId != _undefined) 'postId': (postId as int?),
    }),
  );
}

class _CopyWithStubImpl$Input$updateCommentInput<TRes>
    implements CopyWith$Input$updateCommentInput<TRes> {
  _CopyWithStubImpl$Input$updateCommentInput(this._res);

  TRes _res;

  call({
    String? body,
    String? clientMutationId,
    String? email,
    int? id,
    String? name,
    int? postId,
  }) => _res;
}

class Input$updatePostInput {
  factory Input$updatePostInput({
    String? body,
    String? clientMutationId,
    required int id,
    String? title,
    int? userId,
  }) => Input$updatePostInput._({
    if (body != null) r'body': body,
    if (clientMutationId != null) r'clientMutationId': clientMutationId,
    r'id': id,
    if (title != null) r'title': title,
    if (userId != null) r'userId': userId,
  });

  Input$updatePostInput._(this._$data);

  factory Input$updatePostInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('body')) {
      final l$body = data['body'];
      result$data['body'] = (l$body as String?);
    }
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    return Input$updatePostInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get body => (_$data['body'] as String?);

  String? get clientMutationId => (_$data['clientMutationId'] as String?);

  int get id => (_$data['id'] as int);

  String? get title => (_$data['title'] as String?);

  int? get userId => (_$data['userId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('body')) {
      final l$body = body;
      result$data['body'] = l$body;
    }
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    return result$data;
  }

  CopyWith$Input$updatePostInput<Input$updatePostInput> get copyWith =>
      CopyWith$Input$updatePostInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$updatePostInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (_$data.containsKey('body') != other._$data.containsKey('body')) {
      return false;
    }
    if (l$body != lOther$body) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$body = body;
    final l$clientMutationId = clientMutationId;
    final l$id = id;
    final l$title = title;
    final l$userId = userId;
    return Object.hashAll([
      _$data.containsKey('body') ? l$body : const {},
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      l$id,
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('userId') ? l$userId : const {},
    ]);
  }
}

abstract class CopyWith$Input$updatePostInput<TRes> {
  factory CopyWith$Input$updatePostInput(
    Input$updatePostInput instance,
    TRes Function(Input$updatePostInput) then,
  ) = _CopyWithImpl$Input$updatePostInput;

  factory CopyWith$Input$updatePostInput.stub(TRes res) =
      _CopyWithStubImpl$Input$updatePostInput;

  TRes call({
    String? body,
    String? clientMutationId,
    int? id,
    String? title,
    int? userId,
  });
}

class _CopyWithImpl$Input$updatePostInput<TRes>
    implements CopyWith$Input$updatePostInput<TRes> {
  _CopyWithImpl$Input$updatePostInput(this._instance, this._then);

  final Input$updatePostInput _instance;

  final TRes Function(Input$updatePostInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? body = _undefined,
    Object? clientMutationId = _undefined,
    Object? id = _undefined,
    Object? title = _undefined,
    Object? userId = _undefined,
  }) => _then(
    Input$updatePostInput._({
      ..._instance._$data,
      if (body != _undefined) 'body': (body as String?),
      if (clientMutationId != _undefined)
        'clientMutationId': (clientMutationId as String?),
      if (id != _undefined && id != null) 'id': (id as int),
      if (title != _undefined) 'title': (title as String?),
      if (userId != _undefined) 'userId': (userId as int?),
    }),
  );
}

class _CopyWithStubImpl$Input$updatePostInput<TRes>
    implements CopyWith$Input$updatePostInput<TRes> {
  _CopyWithStubImpl$Input$updatePostInput(this._res);

  TRes _res;

  call({
    String? body,
    String? clientMutationId,
    int? id,
    String? title,
    int? userId,
  }) => _res;
}

class Input$updateTodoInput {
  factory Input$updateTodoInput({
    String? clientMutationId,
    String? dueOn,
    required int id,
    String? status,
    String? title,
    int? userId,
  }) => Input$updateTodoInput._({
    if (clientMutationId != null) r'clientMutationId': clientMutationId,
    if (dueOn != null) r'dueOn': dueOn,
    r'id': id,
    if (status != null) r'status': status,
    if (title != null) r'title': title,
    if (userId != null) r'userId': userId,
  });

  Input$updateTodoInput._(this._$data);

  factory Input$updateTodoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    if (data.containsKey('dueOn')) {
      final l$dueOn = data['dueOn'];
      result$data['dueOn'] = (l$dueOn as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as String?);
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    return Input$updateTodoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get clientMutationId => (_$data['clientMutationId'] as String?);

  String? get dueOn => (_$data['dueOn'] as String?);

  int get id => (_$data['id'] as int);

  String? get status => (_$data['status'] as String?);

  String? get title => (_$data['title'] as String?);

  int? get userId => (_$data['userId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    if (_$data.containsKey('dueOn')) {
      final l$dueOn = dueOn;
      result$data['dueOn'] = l$dueOn;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    return result$data;
  }

  CopyWith$Input$updateTodoInput<Input$updateTodoInput> get copyWith =>
      CopyWith$Input$updateTodoInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$updateTodoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$dueOn = dueOn;
    final lOther$dueOn = other.dueOn;
    if (_$data.containsKey('dueOn') != other._$data.containsKey('dueOn')) {
      return false;
    }
    if (l$dueOn != lOther$dueOn) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$dueOn = dueOn;
    final l$id = id;
    final l$status = status;
    final l$title = title;
    final l$userId = userId;
    return Object.hashAll([
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      _$data.containsKey('dueOn') ? l$dueOn : const {},
      l$id,
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('userId') ? l$userId : const {},
    ]);
  }
}

abstract class CopyWith$Input$updateTodoInput<TRes> {
  factory CopyWith$Input$updateTodoInput(
    Input$updateTodoInput instance,
    TRes Function(Input$updateTodoInput) then,
  ) = _CopyWithImpl$Input$updateTodoInput;

  factory CopyWith$Input$updateTodoInput.stub(TRes res) =
      _CopyWithStubImpl$Input$updateTodoInput;

  TRes call({
    String? clientMutationId,
    String? dueOn,
    int? id,
    String? status,
    String? title,
    int? userId,
  });
}

class _CopyWithImpl$Input$updateTodoInput<TRes>
    implements CopyWith$Input$updateTodoInput<TRes> {
  _CopyWithImpl$Input$updateTodoInput(this._instance, this._then);

  final Input$updateTodoInput _instance;

  final TRes Function(Input$updateTodoInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clientMutationId = _undefined,
    Object? dueOn = _undefined,
    Object? id = _undefined,
    Object? status = _undefined,
    Object? title = _undefined,
    Object? userId = _undefined,
  }) => _then(
    Input$updateTodoInput._({
      ..._instance._$data,
      if (clientMutationId != _undefined)
        'clientMutationId': (clientMutationId as String?),
      if (dueOn != _undefined) 'dueOn': (dueOn as String?),
      if (id != _undefined && id != null) 'id': (id as int),
      if (status != _undefined) 'status': (status as String?),
      if (title != _undefined) 'title': (title as String?),
      if (userId != _undefined) 'userId': (userId as int?),
    }),
  );
}

class _CopyWithStubImpl$Input$updateTodoInput<TRes>
    implements CopyWith$Input$updateTodoInput<TRes> {
  _CopyWithStubImpl$Input$updateTodoInput(this._res);

  TRes _res;

  call({
    String? clientMutationId,
    String? dueOn,
    int? id,
    String? status,
    String? title,
    int? userId,
  }) => _res;
}

class Input$updateUserInput {
  factory Input$updateUserInput({
    String? clientMutationId,
    String? email,
    String? gender,
    required int id,
    String? name,
    String? status,
  }) => Input$updateUserInput._({
    if (clientMutationId != null) r'clientMutationId': clientMutationId,
    if (email != null) r'email': email,
    if (gender != null) r'gender': gender,
    r'id': id,
    if (name != null) r'name': name,
    if (status != null) r'status': status,
  });

  Input$updateUserInput._(this._$data);

  factory Input$updateUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('clientMutationId')) {
      final l$clientMutationId = data['clientMutationId'];
      result$data['clientMutationId'] = (l$clientMutationId as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as String?);
    }
    return Input$updateUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get clientMutationId => (_$data['clientMutationId'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get gender => (_$data['gender'] as String?);

  int get id => (_$data['id'] as int);

  String? get name => (_$data['name'] as String?);

  String? get status => (_$data['status'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('clientMutationId')) {
      final l$clientMutationId = clientMutationId;
      result$data['clientMutationId'] = l$clientMutationId;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    return result$data;
  }

  CopyWith$Input$updateUserInput<Input$updateUserInput> get copyWith =>
      CopyWith$Input$updateUserInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$updateUserInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (_$data.containsKey('clientMutationId') !=
        other._$data.containsKey('clientMutationId')) {
      return false;
    }
    if (l$clientMutationId != lOther$clientMutationId) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$email = email;
    final l$gender = gender;
    final l$id = id;
    final l$name = name;
    final l$status = status;
    return Object.hashAll([
      _$data.containsKey('clientMutationId') ? l$clientMutationId : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      l$id,
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('status') ? l$status : const {},
    ]);
  }
}

abstract class CopyWith$Input$updateUserInput<TRes> {
  factory CopyWith$Input$updateUserInput(
    Input$updateUserInput instance,
    TRes Function(Input$updateUserInput) then,
  ) = _CopyWithImpl$Input$updateUserInput;

  factory CopyWith$Input$updateUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$updateUserInput;

  TRes call({
    String? clientMutationId,
    String? email,
    String? gender,
    int? id,
    String? name,
    String? status,
  });
}

class _CopyWithImpl$Input$updateUserInput<TRes>
    implements CopyWith$Input$updateUserInput<TRes> {
  _CopyWithImpl$Input$updateUserInput(this._instance, this._then);

  final Input$updateUserInput _instance;

  final TRes Function(Input$updateUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clientMutationId = _undefined,
    Object? email = _undefined,
    Object? gender = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? status = _undefined,
  }) => _then(
    Input$updateUserInput._({
      ..._instance._$data,
      if (clientMutationId != _undefined)
        'clientMutationId': (clientMutationId as String?),
      if (email != _undefined) 'email': (email as String?),
      if (gender != _undefined) 'gender': (gender as String?),
      if (id != _undefined && id != null) 'id': (id as int),
      if (name != _undefined) 'name': (name as String?),
      if (status != _undefined) 'status': (status as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$updateUserInput<TRes>
    implements CopyWith$Input$updateUserInput<TRes> {
  _CopyWithStubImpl$Input$updateUserInput(this._res);

  TRes _res;

  call({
    String? clientMutationId,
    String? email,
    String? gender,
    int? id,
    String? name,
    String? status,
  }) => _res;
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
