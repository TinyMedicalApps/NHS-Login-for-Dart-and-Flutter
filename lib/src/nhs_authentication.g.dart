// GENERATED CODE - DO NOT MODIFY BY HAND

part of nhs_authentication;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NhsAuthentication> _$nhsAuthenticationSerializer =
    new _$NhsAuthenticationSerializer();

class _$NhsAuthenticationSerializer
    implements StructuredSerializer<NhsAuthentication> {
  @override
  final Iterable<Type> types = const [NhsAuthentication, _$NhsAuthentication];
  @override
  final String wireName = 'NhsAuthentication';

  @override
  Iterable serialize(Serializers serializers, NhsAuthentication object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'responseType',
      serializers.serialize(object.responseType,
          specifiedType: const FullType(String)),
      'host',
      serializers.serialize(object.host, specifiedType: const FullType(String)),
      'scopes',
      serializers.serialize(object.scopes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(NhsScope)])),
      'clientId',
      serializers.serialize(object.clientId,
          specifiedType: const FullType(String)),
      'redirectUri',
      serializers.serialize(object.redirectUri,
          specifiedType: const FullType(String)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(String)),
      'nonce',
      serializers.serialize(object.nonce,
          specifiedType: const FullType(String)),
    ];
    if (object.display != null) {
      result
        ..add('display')
        ..add(serializers.serialize(object.display,
            specifiedType: const FullType(NhsDisplay)));
    }
    if (object.prompt != null) {
      result
        ..add('prompt')
        ..add(serializers.serialize(object.prompt,
            specifiedType: const FullType(NhsPrompt)));
    }
    if (object.vectorOfTrust != null) {
      result
        ..add('vectorOfTrust')
        ..add(serializers.serialize(object.vectorOfTrust,
            specifiedType: const FullType(NhsVectorOfTrust)));
    }
    if (object.fidoAuthResponse != null) {
      result
        ..add('fidoAuthResponse')
        ..add(serializers.serialize(object.fidoAuthResponse,
            specifiedType: const FullType(String)));
    }
    if (object.assertedLoginIdentity != null) {
      result
        ..add('assertedLoginIdentity')
        ..add(serializers.serialize(object.assertedLoginIdentity,
            specifiedType: const FullType(String)));
    }
    if (object.allowRegistration != null) {
      result
        ..add('allowRegistration')
        ..add(serializers.serialize(object.allowRegistration,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  NhsAuthentication deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NhsAuthenticationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'responseType':
          result.responseType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'host':
          result.host = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scopes':
          result.scopes.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(NhsScope)])) as BuiltList);
          break;
        case 'clientId':
          result.clientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'redirectUri':
          result.redirectUri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nonce':
          result.nonce = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display':
          result.display = serializers.deserialize(value,
              specifiedType: const FullType(NhsDisplay)) as NhsDisplay;
          break;
        case 'prompt':
          result.prompt = serializers.deserialize(value,
              specifiedType: const FullType(NhsPrompt)) as NhsPrompt;
          break;
        case 'vectorOfTrust':
          result.vectorOfTrust = serializers.deserialize(value,
                  specifiedType: const FullType(NhsVectorOfTrust))
              as NhsVectorOfTrust;
          break;
        case 'fidoAuthResponse':
          result.fidoAuthResponse = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assertedLoginIdentity':
          result.assertedLoginIdentity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'allowRegistration':
          result.allowRegistration = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NhsAuthentication extends NhsAuthentication {
  @override
  final String responseType;
  @override
  final String host;
  @override
  final BuiltList<NhsScope> scopes;
  @override
  final String clientId;
  @override
  final String redirectUri;
  @override
  final String state;
  @override
  final String nonce;
  @override
  final NhsDisplay display;
  @override
  final NhsPrompt prompt;
  @override
  final NhsVectorOfTrust vectorOfTrust;
  @override
  final String fidoAuthResponse;
  @override
  final String assertedLoginIdentity;
  @override
  final bool allowRegistration;
  Map<String, dynamic> __json;

  factory _$NhsAuthentication([void updates(NhsAuthenticationBuilder b)]) =>
      (new NhsAuthenticationBuilder()..update(updates)).build();

  _$NhsAuthentication._(
      {this.responseType,
      this.host,
      this.scopes,
      this.clientId,
      this.redirectUri,
      this.state,
      this.nonce,
      this.display,
      this.prompt,
      this.vectorOfTrust,
      this.fidoAuthResponse,
      this.assertedLoginIdentity,
      this.allowRegistration})
      : super._() {
    if (responseType == null) {
      throw new BuiltValueNullFieldError('NhsAuthentication', 'responseType');
    }
    if (host == null) {
      throw new BuiltValueNullFieldError('NhsAuthentication', 'host');
    }
    if (scopes == null) {
      throw new BuiltValueNullFieldError('NhsAuthentication', 'scopes');
    }
    if (clientId == null) {
      throw new BuiltValueNullFieldError('NhsAuthentication', 'clientId');
    }
    if (redirectUri == null) {
      throw new BuiltValueNullFieldError('NhsAuthentication', 'redirectUri');
    }
    if (state == null) {
      throw new BuiltValueNullFieldError('NhsAuthentication', 'state');
    }
    if (nonce == null) {
      throw new BuiltValueNullFieldError('NhsAuthentication', 'nonce');
    }
  }

  @override
  Map<String, dynamic> get json => __json ??= super.json;

  @override
  NhsAuthentication rebuild(void updates(NhsAuthenticationBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NhsAuthenticationBuilder toBuilder() =>
      new NhsAuthenticationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NhsAuthentication &&
        responseType == other.responseType &&
        host == other.host &&
        scopes == other.scopes &&
        clientId == other.clientId &&
        redirectUri == other.redirectUri &&
        state == other.state &&
        nonce == other.nonce &&
        display == other.display &&
        prompt == other.prompt &&
        vectorOfTrust == other.vectorOfTrust &&
        fidoAuthResponse == other.fidoAuthResponse &&
        assertedLoginIdentity == other.assertedLoginIdentity &&
        allowRegistration == other.allowRegistration;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(0,
                                                        responseType.hashCode),
                                                    host.hashCode),
                                                scopes.hashCode),
                                            clientId.hashCode),
                                        redirectUri.hashCode),
                                    state.hashCode),
                                nonce.hashCode),
                            display.hashCode),
                        prompt.hashCode),
                    vectorOfTrust.hashCode),
                fidoAuthResponse.hashCode),
            assertedLoginIdentity.hashCode),
        allowRegistration.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NhsAuthentication')
          ..add('responseType', responseType)
          ..add('host', host)
          ..add('scopes', scopes)
          ..add('clientId', clientId)
          ..add('redirectUri', redirectUri)
          ..add('state', state)
          ..add('nonce', nonce)
          ..add('display', display)
          ..add('prompt', prompt)
          ..add('vectorOfTrust', vectorOfTrust)
          ..add('fidoAuthResponse', fidoAuthResponse)
          ..add('assertedLoginIdentity', assertedLoginIdentity)
          ..add('allowRegistration', allowRegistration))
        .toString();
  }
}

class NhsAuthenticationBuilder
    implements Builder<NhsAuthentication, NhsAuthenticationBuilder> {
  _$NhsAuthentication _$v;

  String _responseType;
  String get responseType => _$this._responseType;
  set responseType(String responseType) => _$this._responseType = responseType;

  String _host;
  String get host => _$this._host;
  set host(String host) => _$this._host = host;

  ListBuilder<NhsScope> _scopes;
  ListBuilder<NhsScope> get scopes =>
      _$this._scopes ??= new ListBuilder<NhsScope>();
  set scopes(ListBuilder<NhsScope> scopes) => _$this._scopes = scopes;

  String _clientId;
  String get clientId => _$this._clientId;
  set clientId(String clientId) => _$this._clientId = clientId;

  String _redirectUri;
  String get redirectUri => _$this._redirectUri;
  set redirectUri(String redirectUri) => _$this._redirectUri = redirectUri;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _nonce;
  String get nonce => _$this._nonce;
  set nonce(String nonce) => _$this._nonce = nonce;

  NhsDisplay _display;
  NhsDisplay get display => _$this._display;
  set display(NhsDisplay display) => _$this._display = display;

  NhsPrompt _prompt;
  NhsPrompt get prompt => _$this._prompt;
  set prompt(NhsPrompt prompt) => _$this._prompt = prompt;

  NhsVectorOfTrust _vectorOfTrust;
  NhsVectorOfTrust get vectorOfTrust => _$this._vectorOfTrust;
  set vectorOfTrust(NhsVectorOfTrust vectorOfTrust) =>
      _$this._vectorOfTrust = vectorOfTrust;

  String _fidoAuthResponse;
  String get fidoAuthResponse => _$this._fidoAuthResponse;
  set fidoAuthResponse(String fidoAuthResponse) =>
      _$this._fidoAuthResponse = fidoAuthResponse;

  String _assertedLoginIdentity;
  String get assertedLoginIdentity => _$this._assertedLoginIdentity;
  set assertedLoginIdentity(String assertedLoginIdentity) =>
      _$this._assertedLoginIdentity = assertedLoginIdentity;

  bool _allowRegistration;
  bool get allowRegistration => _$this._allowRegistration;
  set allowRegistration(bool allowRegistration) =>
      _$this._allowRegistration = allowRegistration;

  NhsAuthenticationBuilder();

  NhsAuthenticationBuilder get _$this {
    if (_$v != null) {
      _responseType = _$v.responseType;
      _host = _$v.host;
      _scopes = _$v.scopes?.toBuilder();
      _clientId = _$v.clientId;
      _redirectUri = _$v.redirectUri;
      _state = _$v.state;
      _nonce = _$v.nonce;
      _display = _$v.display;
      _prompt = _$v.prompt;
      _vectorOfTrust = _$v.vectorOfTrust;
      _fidoAuthResponse = _$v.fidoAuthResponse;
      _assertedLoginIdentity = _$v.assertedLoginIdentity;
      _allowRegistration = _$v.allowRegistration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NhsAuthentication other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NhsAuthentication;
  }

  @override
  void update(void updates(NhsAuthenticationBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NhsAuthentication build() {
    _$NhsAuthentication _$result;
    try {
      _$result = _$v ??
          new _$NhsAuthentication._(
              responseType: responseType,
              host: host,
              scopes: scopes.build(),
              clientId: clientId,
              redirectUri: redirectUri,
              state: state,
              nonce: nonce,
              display: display,
              prompt: prompt,
              vectorOfTrust: vectorOfTrust,
              fidoAuthResponse: fidoAuthResponse,
              assertedLoginIdentity: assertedLoginIdentity,
              allowRegistration: allowRegistration);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'scopes';
        scopes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NhsAuthentication', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
