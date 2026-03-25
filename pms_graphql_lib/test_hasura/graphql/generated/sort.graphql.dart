class Input$items_order_by {
  factory Input$items_order_by({
    Enum$order_by? name,
    Enum$order_by? created_at,
  }) => Input$items_order_by._({
    if (name != null) r'name': name,
    if (created_at != null) r'created_at': created_at,
  });

  Input$items_order_by._(this._$data);

  factory Input$items_order_by.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$order_by((l$name as String));
    }
    if (data.containsKey('created_at')) {
      final l$created_at = data['created_at'];
      result$data['created_at'] = l$created_at == null
          ? null
          : fromJson$Enum$order_by((l$created_at as String));
    }
    return Input$items_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get name => (_$data['name'] as Enum$order_by?);

  Enum$order_by? get created_at => (_$data['created_at'] as Enum$order_by?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null
          ? null
          : toJson$Enum$order_by(l$name);
    }
    if (_$data.containsKey('created_at')) {
      final l$created_at = created_at;
      result$data['created_at'] = l$created_at == null
          ? null
          : toJson$Enum$order_by(l$created_at);
    }
    return result$data;
  }

  CopyWith$Input$items_order_by<Input$items_order_by> get copyWith =>
      CopyWith$Input$items_order_by(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$items_order_by || runtimeType != other.runtimeType) {
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
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (_$data.containsKey('created_at') !=
        other._$data.containsKey('created_at')) {
      return false;
    }
    if (l$created_at != lOther$created_at) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$created_at = created_at;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('created_at') ? l$created_at : const {},
    ]);
  }
}

abstract class CopyWith$Input$items_order_by<TRes> {
  factory CopyWith$Input$items_order_by(
    Input$items_order_by instance,
    TRes Function(Input$items_order_by) then,
  ) = _CopyWithImpl$Input$items_order_by;

  factory CopyWith$Input$items_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$items_order_by;

  TRes call({Enum$order_by? name, Enum$order_by? created_at});
}

class _CopyWithImpl$Input$items_order_by<TRes>
    implements CopyWith$Input$items_order_by<TRes> {
  _CopyWithImpl$Input$items_order_by(this._instance, this._then);

  final Input$items_order_by _instance;

  final TRes Function(Input$items_order_by) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? created_at = _undefined}) =>
      _then(
        Input$items_order_by._({
          ..._instance._$data,
          if (name != _undefined) 'name': (name as Enum$order_by?),
          if (created_at != _undefined)
            'created_at': (created_at as Enum$order_by?),
        }),
      );
}

class _CopyWithStubImpl$Input$items_order_by<TRes>
    implements CopyWith$Input$items_order_by<TRes> {
  _CopyWithStubImpl$Input$items_order_by(this._res);

  TRes _res;

  call({Enum$order_by? name, Enum$order_by? created_at}) => _res;
}

enum Enum$order_by {
  asc,
  desc,
  $unknown;

  factory Enum$order_by.fromJson(String value) => fromJson$Enum$order_by(value);

  String toJson() => toJson$Enum$order_by(this);
}

String toJson$Enum$order_by(Enum$order_by e) {
  switch (e) {
    case Enum$order_by.asc:
      return r'asc';
    case Enum$order_by.desc:
      return r'desc';
    case Enum$order_by.$unknown:
      return r'$unknown';
  }
}

Enum$order_by fromJson$Enum$order_by(String value) {
  switch (value) {
    case r'asc':
      return Enum$order_by.asc;
    case r'desc':
      return Enum$order_by.desc;
    default:
      return Enum$order_by.$unknown;
  }
}
