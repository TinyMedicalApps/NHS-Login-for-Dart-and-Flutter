// GENERATED CODE - DO NOT MODIFY BY HAND

part of nhs_token_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NhsTokenResponse> _$nhsTokenResponseSerializer =
    new _$NhsTokenResponseSerializer();

class _$NhsTokenResponseSerializer
    implements StructuredSerializer<NhsTokenResponse> {
  @override
  final Iterable<Type> types = const [NhsTokenResponse, _$NhsTokenResponse];
  @override
  final String wireName = 'NhsTokenResponse';

  @override
  Iterable serialize(Serializers serializers, NhsTokenResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'access_token',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'token_type',
      serializers.serialize(object.tokenType,
          specifiedType: const FullType(String)),
      'id_token',
      serializers.serialize(object.idToken,
          specifiedType: const FullType(NhsIdToken)),
    ];
    if (object.expiresIn != null) {
      result
        ..add('expires_in')
        ..add(serializers.serialize(object.expiresIn,
            specifiedType: const FullType(Duration)));
    }
    if (object.scope != null) {
      result
        ..add('scope')
        ..add(serializers.serialize(object.scope,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NhsScope)])));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(NhsTokenError)));
    }
    if (object.errorDescription != null) {
      result
        ..add('error_description')
        ..add(serializers.serialize(object.errorDescription,
            specifiedType: const FullType(String)));
    }
    if (object.errorUri != null) {
      result
        ..add('error_uri')
        ..add(serializers.serialize(object.errorUri,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NhsTokenResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NhsTokenResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'access_token':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token_type':
          result.tokenType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expires_in':
          result.expiresIn = serializers.deserialize(value,
              specifiedType: const FullType(Duration)) as Duration;
          break;
        case 'scope':
          result.scope.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(NhsScope)])) as BuiltList);
          break;
        case 'id_token':
          result.idToken.replace(serializers.deserialize(value,
              specifiedType: const FullType(NhsIdToken)) as NhsIdToken);
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(NhsTokenError)) as NhsTokenError;
          break;
        case 'error_description':
          result.errorDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'error_uri':
          result.errorUri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NhsTokenResponse extends NhsTokenResponse {
  @override
  final String accessToken;
  @override
  final String tokenType;
  @override
  final Duration expiresIn;
  @override
  final BuiltList<NhsScope> scope;
  @override
  final NhsIdToken idToken;
  @override
  final NhsTokenError error;
  @override
  final String errorDescription;
  @override
  final String errorUri;
  Map<String, dynamic> __json;

  factory _$NhsTokenResponse([void updates(NhsTokenResponseBuilder b)]) =>
      (new NhsTokenResponseBuilder()..update(updates)).build();

  _$NhsTokenResponse._(
      {this.accessToken,
      this.tokenType,
      this.expiresIn,
      this.scope,
      this.idToken,
      this.error,
      this.errorDescription,
      this.errorUri})
      : super._() {
    if (accessToken == null) {
      throw new BuiltValueNullFieldError('NhsTokenResponse', 'accessToken');
    }
    if (tokenType == null) {
      throw new BuiltValueNullFieldError('NhsTokenResponse', 'tokenType');
    }
    if (idToken == null) {
      throw new BuiltValueNullFieldError('NhsTokenResponse', 'idToken');
    }
  }

  @override
  Map<String, dynamic> get json => __json ??= super.json;

  @override
  NhsTokenResponse rebuild(void updates(NhsTokenResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NhsTokenResponseBuilder toBuilder() =>
      new NhsTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NhsTokenResponse &&
        accessToken == other.accessToken &&
        tokenType == other.tokenType &&
        expiresIn == other.expiresIn &&
        scope == other.scope &&
        idToken == other.idToken &&
        error == other.error &&
        errorDescription == other.errorDescription &&
        errorUri == other.errorUri;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, accessToken.hashCode),
                                tokenType.hashCode),
                            expiresIn.hashCode),
                        scope.hashCode),
                    idToken.hashCode),
                error.hashCode),
            errorDescription.hashCode),
        errorUri.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NhsTokenResponse')
          ..add('accessToken', accessToken)
          ..add('tokenType', tokenType)
          ..add('expiresIn', expiresIn)
          ..add('scope', scope)
          ..add('idToken', idToken)
          ..add('error', error)
          ..add('errorDescription', errorDescription)
          ..add('errorUri', errorUri))
        .toString();
  }
}

class NhsTokenResponseBuilder
    implements Builder<NhsTokenResponse, NhsTokenResponseBuilder> {
  _$NhsTokenResponse _$v;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  String _tokenType;
  String get tokenType => _$this._tokenType;
  set tokenType(String tokenType) => _$this._tokenType = tokenType;

  Duration _expiresIn;
  Duration get expiresIn => _$this._expiresIn;
  set expiresIn(Duration expiresIn) => _$this._expiresIn = expiresIn;

  ListBuilder<NhsScope> _scope;
  ListBuilder<NhsScope> get scope =>
      _$this._scope ??= new ListBuilder<NhsScope>();
  set scope(ListBuilder<NhsScope> scope) => _$this._scope = scope;

  NhsIdTokenBuilder _idToken;
  NhsIdTokenBuilder get idToken => _$this._idToken ??= new NhsIdTokenBuilder();
  set idToken(NhsIdTokenBuilder idToken) => _$this._idToken = idToken;

  NhsTokenError _error;
  NhsTokenError get error => _$this._error;
  set error(NhsTokenError error) => _$this._error = error;

  String _errorDescription;
  String get errorDescription => _$this._errorDescription;
  set errorDescription(String errorDescription) =>
      _$this._errorDescription = errorDescription;

  String _errorUri;
  String get errorUri => _$this._errorUri;
  set errorUri(String errorUri) => _$this._errorUri = errorUri;

  NhsTokenResponseBuilder();

  NhsTokenResponseBuilder get _$this {
    if (_$v != null) {
      _accessToken = _$v.accessToken;
      _tokenType = _$v.tokenType;
      _expiresIn = _$v.expiresIn;
      _scope = _$v.scope?.toBuilder();
      _idToken = _$v.idToken?.toBuilder();
      _error = _$v.error;
      _errorDescription = _$v.errorDescription;
      _errorUri = _$v.errorUri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NhsTokenResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NhsTokenResponse;
  }

  @override
  void update(void updates(NhsTokenResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NhsTokenResponse build() {
    _$NhsTokenResponse _$result;
    try {
      _$result = _$v ??
          new _$NhsTokenResponse._(
              accessToken: accessToken,
              tokenType: tokenType,
              expiresIn: expiresIn,
              scope: _scope?.build(),
              idToken: idToken.build(),
              error: error,
              errorDescription: errorDescription,
              errorUri: errorUri);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'scope';
        _scope?.build();
        _$failedField = 'idToken';
        idToken.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NhsTokenResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
