// GENERATED CODE - DO NOT MODIFY BY HAND

part of nhs_login_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NhsLoginResult> _$nhsLoginResultSerializer =
    new _$NhsLoginResultSerializer();

class _$NhsLoginResultSerializer
    implements StructuredSerializer<NhsLoginResult> {
  @override
  final Iterable<Type> types = const [NhsLoginResult, _$NhsLoginResult];
  @override
  final String wireName = 'NhsLoginResult';

  @override
  Iterable serialize(Serializers serializers, NhsLoginResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'authentication',
      serializers.serialize(object.authentication,
          specifiedType: const FullType(NhsAuthenticationResponse)),
      'otherParams',
      serializers.serialize(object.otherParams,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
    ];
    if (object.token != null) {
      result
        ..add('token')
        ..add(serializers.serialize(object.token,
            specifiedType: const FullType(NhsTokenResponse)));
    }
    if (object.userinfo != null) {
      result
        ..add('userinfo')
        ..add(serializers.serialize(object.userinfo,
            specifiedType: const FullType(NhsUserinfo)));
    }

    return result;
  }

  @override
  NhsLoginResult deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NhsLoginResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'authentication':
          result.authentication.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NhsAuthenticationResponse))
              as NhsAuthenticationResponse);
          break;
        case 'token':
          result.token.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NhsTokenResponse))
              as NhsTokenResponse);
          break;
        case 'userinfo':
          result.userinfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(NhsUserinfo)) as NhsUserinfo);
          break;
        case 'otherParams':
          result.otherParams.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(String)
              ])) as BuiltMap);
          break;
      }
    }

    return result.build();
  }
}

class _$NhsLoginResult extends NhsLoginResult {
  @override
  final NhsAuthenticationResponse authentication;
  @override
  final NhsTokenResponse token;
  @override
  final NhsUserinfo userinfo;
  @override
  final BuiltMap<String, String> otherParams;
  Map<String, dynamic> __json;

  factory _$NhsLoginResult([void updates(NhsLoginResultBuilder b)]) =>
      (new NhsLoginResultBuilder()..update(updates)).build();

  _$NhsLoginResult._(
      {this.authentication, this.token, this.userinfo, this.otherParams})
      : super._() {
    if (authentication == null) {
      throw new BuiltValueNullFieldError('NhsLoginResult', 'authentication');
    }
    if (otherParams == null) {
      throw new BuiltValueNullFieldError('NhsLoginResult', 'otherParams');
    }
  }

  @override
  Map<String, dynamic> get json => __json ??= super.json;

  @override
  NhsLoginResult rebuild(void updates(NhsLoginResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NhsLoginResultBuilder toBuilder() =>
      new NhsLoginResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NhsLoginResult &&
        authentication == other.authentication &&
        token == other.token &&
        userinfo == other.userinfo &&
        otherParams == other.otherParams;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, authentication.hashCode), token.hashCode),
            userinfo.hashCode),
        otherParams.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NhsLoginResult')
          ..add('authentication', authentication)
          ..add('token', token)
          ..add('userinfo', userinfo)
          ..add('otherParams', otherParams))
        .toString();
  }
}

class NhsLoginResultBuilder
    implements Builder<NhsLoginResult, NhsLoginResultBuilder> {
  _$NhsLoginResult _$v;

  NhsAuthenticationResponseBuilder _authentication;
  NhsAuthenticationResponseBuilder get authentication =>
      _$this._authentication ??= new NhsAuthenticationResponseBuilder();
  set authentication(NhsAuthenticationResponseBuilder authentication) =>
      _$this._authentication = authentication;

  NhsTokenResponseBuilder _token;
  NhsTokenResponseBuilder get token =>
      _$this._token ??= new NhsTokenResponseBuilder();
  set token(NhsTokenResponseBuilder token) => _$this._token = token;

  NhsUserinfoBuilder _userinfo;
  NhsUserinfoBuilder get userinfo =>
      _$this._userinfo ??= new NhsUserinfoBuilder();
  set userinfo(NhsUserinfoBuilder userinfo) => _$this._userinfo = userinfo;

  MapBuilder<String, String> _otherParams;
  MapBuilder<String, String> get otherParams =>
      _$this._otherParams ??= new MapBuilder<String, String>();
  set otherParams(MapBuilder<String, String> otherParams) =>
      _$this._otherParams = otherParams;

  NhsLoginResultBuilder();

  NhsLoginResultBuilder get _$this {
    if (_$v != null) {
      _authentication = _$v.authentication?.toBuilder();
      _token = _$v.token?.toBuilder();
      _userinfo = _$v.userinfo?.toBuilder();
      _otherParams = _$v.otherParams?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NhsLoginResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NhsLoginResult;
  }

  @override
  void update(void updates(NhsLoginResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NhsLoginResult build() {
    _$NhsLoginResult _$result;
    try {
      _$result = _$v ??
          new _$NhsLoginResult._(
              authentication: authentication.build(),
              token: _token?.build(),
              userinfo: _userinfo?.build(),
              otherParams: otherParams.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'authentication';
        authentication.build();
        _$failedField = 'token';
        _token?.build();
        _$failedField = 'userinfo';
        _userinfo?.build();
        _$failedField = 'otherParams';
        otherParams.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NhsLoginResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
