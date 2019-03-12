// GENERATED CODE - DO NOT MODIFY BY HAND

part of nhs_id_token;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NhsIdToken> _$nhsIdTokenSerializer = new _$NhsIdTokenSerializer();
Serializer<NhsIdTokenHeader> _$nhsIdTokenHeaderSerializer =
    new _$NhsIdTokenHeaderSerializer();
Serializer<NhsIdTokenPayload> _$nhsIdTokenPayloadSerializer =
    new _$NhsIdTokenPayloadSerializer();

class _$NhsIdTokenSerializer implements StructuredSerializer<NhsIdToken> {
  @override
  final Iterable<Type> types = const [NhsIdToken, _$NhsIdToken];
  @override
  final String wireName = 'NhsIdToken';

  @override
  Iterable serialize(Serializers serializers, NhsIdToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'header',
      serializers.serialize(object.header,
          specifiedType: const FullType(NhsIdTokenHeader)),
      'payload',
      serializers.serialize(object.payload,
          specifiedType: const FullType(NhsIdTokenPayload)),
      'signature',
      serializers.serialize(object.signature,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  NhsIdToken deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NhsIdTokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'header':
          result.header.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NhsIdTokenHeader))
              as NhsIdTokenHeader);
          break;
        case 'payload':
          result.payload.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NhsIdTokenPayload))
              as NhsIdTokenPayload);
          break;
        case 'signature':
          result.signature = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NhsIdTokenHeaderSerializer
    implements StructuredSerializer<NhsIdTokenHeader> {
  @override
  final Iterable<Type> types = const [NhsIdTokenHeader, _$NhsIdTokenHeader];
  @override
  final String wireName = 'NhsIdTokenHeader';

  @override
  Iterable serialize(Serializers serializers, NhsIdTokenHeader object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'alg',
      serializers.serialize(object.algorithm,
          specifiedType: const FullType(String)),
      'typ',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  NhsIdTokenHeader deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NhsIdTokenHeaderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'alg':
          result.algorithm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'typ':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NhsIdTokenPayloadSerializer
    implements StructuredSerializer<NhsIdTokenPayload> {
  @override
  final Iterable<Type> types = const [NhsIdTokenPayload, _$NhsIdTokenPayload];
  @override
  final String wireName = 'NhsIdTokenPayload';

  @override
  Iterable serialize(Serializers serializers, NhsIdTokenPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'iss',
      serializers.serialize(object.issuer,
          specifiedType: const FullType(String)),
      'sub',
      serializers.serialize(object.sub, specifiedType: const FullType(String)),
      'aud',
      serializers.serialize(object.audience,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'exp',
      serializers.serialize(object.expiration,
          specifiedType: const FullType(DateTime)),
      'iat',
      serializers.serialize(object.issuedAt,
          specifiedType: const FullType(DateTime)),
      'jti',
      serializers.serialize(object.jwtId,
          specifiedType: const FullType(String)),
      'vot',
      serializers.serialize(object.vectorOfTrust,
          specifiedType: const FullType(String)),
      'vtm',
      serializers.serialize(object.vectorTrustMark,
          specifiedType: const FullType(String)),
    ];
    if (object.authenticationTime != null) {
      result
        ..add('auth_time')
        ..add(serializers.serialize(object.authenticationTime,
            specifiedType: const FullType(DateTime)));
    }
    if (object.nonce != null) {
      result
        ..add('nonce')
        ..add(serializers.serialize(object.nonce,
            specifiedType: const FullType(String)));
    }
    if (object.familyName != null) {
      result
        ..add('family_name')
        ..add(serializers.serialize(object.familyName,
            specifiedType: const FullType(String)));
    }
    if (object.birthdate != null) {
      result
        ..add('birthdate')
        ..add(serializers.serialize(object.birthdate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.nhsNumber != null) {
      result
        ..add('nhs_number')
        ..add(serializers.serialize(object.nhsNumber,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NhsIdTokenPayload deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NhsIdTokenPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'iss':
          result.issuer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sub':
          result.sub = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'aud':
          result.audience.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'exp':
          result.expiration = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'iat':
          result.issuedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'jti':
          result.jwtId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'auth_time':
          result.authenticationTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'nonce':
          result.nonce = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vot':
          result.vectorOfTrust = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vtm':
          result.vectorTrustMark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'family_name':
          result.familyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'birthdate':
          result.birthdate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'nhs_number':
          result.nhsNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NhsIdToken extends NhsIdToken {
  @override
  final NhsIdTokenHeader header;
  @override
  final NhsIdTokenPayload payload;
  @override
  final String signature;
  Map<String, dynamic> __json;

  factory _$NhsIdToken([void updates(NhsIdTokenBuilder b)]) =>
      (new NhsIdTokenBuilder()..update(updates)).build();

  _$NhsIdToken._({this.header, this.payload, this.signature}) : super._() {
    if (header == null) {
      throw new BuiltValueNullFieldError('NhsIdToken', 'header');
    }
    if (payload == null) {
      throw new BuiltValueNullFieldError('NhsIdToken', 'payload');
    }
    if (signature == null) {
      throw new BuiltValueNullFieldError('NhsIdToken', 'signature');
    }
  }

  @override
  Map<String, dynamic> get json => __json ??= super.json;

  @override
  NhsIdToken rebuild(void updates(NhsIdTokenBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NhsIdTokenBuilder toBuilder() => new NhsIdTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NhsIdToken &&
        header == other.header &&
        payload == other.payload &&
        signature == other.signature;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, header.hashCode), payload.hashCode), signature.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NhsIdToken')
          ..add('header', header)
          ..add('payload', payload)
          ..add('signature', signature))
        .toString();
  }
}

class NhsIdTokenBuilder implements Builder<NhsIdToken, NhsIdTokenBuilder> {
  _$NhsIdToken _$v;

  NhsIdTokenHeaderBuilder _header;
  NhsIdTokenHeaderBuilder get header =>
      _$this._header ??= new NhsIdTokenHeaderBuilder();
  set header(NhsIdTokenHeaderBuilder header) => _$this._header = header;

  NhsIdTokenPayloadBuilder _payload;
  NhsIdTokenPayloadBuilder get payload =>
      _$this._payload ??= new NhsIdTokenPayloadBuilder();
  set payload(NhsIdTokenPayloadBuilder payload) => _$this._payload = payload;

  String _signature;
  String get signature => _$this._signature;
  set signature(String signature) => _$this._signature = signature;

  NhsIdTokenBuilder();

  NhsIdTokenBuilder get _$this {
    if (_$v != null) {
      _header = _$v.header?.toBuilder();
      _payload = _$v.payload?.toBuilder();
      _signature = _$v.signature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NhsIdToken other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NhsIdToken;
  }

  @override
  void update(void updates(NhsIdTokenBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NhsIdToken build() {
    _$NhsIdToken _$result;
    try {
      _$result = _$v ??
          new _$NhsIdToken._(
              header: header.build(),
              payload: payload.build(),
              signature: signature);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'header';
        header.build();
        _$failedField = 'payload';
        payload.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NhsIdToken', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NhsIdTokenHeader extends NhsIdTokenHeader {
  @override
  final String algorithm;
  @override
  final String type;
  Map<String, dynamic> __json;

  factory _$NhsIdTokenHeader([void updates(NhsIdTokenHeaderBuilder b)]) =>
      (new NhsIdTokenHeaderBuilder()..update(updates)).build();

  _$NhsIdTokenHeader._({this.algorithm, this.type}) : super._() {
    if (algorithm == null) {
      throw new BuiltValueNullFieldError('NhsIdTokenHeader', 'algorithm');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('NhsIdTokenHeader', 'type');
    }
  }

  @override
  Map<String, dynamic> get json => __json ??= super.json;

  @override
  NhsIdTokenHeader rebuild(void updates(NhsIdTokenHeaderBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NhsIdTokenHeaderBuilder toBuilder() =>
      new NhsIdTokenHeaderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NhsIdTokenHeader &&
        algorithm == other.algorithm &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, algorithm.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NhsIdTokenHeader')
          ..add('algorithm', algorithm)
          ..add('type', type))
        .toString();
  }
}

class NhsIdTokenHeaderBuilder
    implements Builder<NhsIdTokenHeader, NhsIdTokenHeaderBuilder> {
  _$NhsIdTokenHeader _$v;

  String _algorithm;
  String get algorithm => _$this._algorithm;
  set algorithm(String algorithm) => _$this._algorithm = algorithm;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  NhsIdTokenHeaderBuilder();

  NhsIdTokenHeaderBuilder get _$this {
    if (_$v != null) {
      _algorithm = _$v.algorithm;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NhsIdTokenHeader other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NhsIdTokenHeader;
  }

  @override
  void update(void updates(NhsIdTokenHeaderBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NhsIdTokenHeader build() {
    final _$result =
        _$v ?? new _$NhsIdTokenHeader._(algorithm: algorithm, type: type);
    replace(_$result);
    return _$result;
  }
}

class _$NhsIdTokenPayload extends NhsIdTokenPayload {
  @override
  final String issuer;
  @override
  final String sub;
  @override
  final BuiltList<String> audience;
  @override
  final DateTime expiration;
  @override
  final DateTime issuedAt;
  @override
  final String jwtId;
  @override
  final DateTime authenticationTime;
  @override
  final String nonce;
  @override
  final String vectorOfTrust;
  @override
  final String vectorTrustMark;
  @override
  final String familyName;
  @override
  final DateTime birthdate;
  @override
  final String nhsNumber;
  Map<String, dynamic> __json;

  factory _$NhsIdTokenPayload([void updates(NhsIdTokenPayloadBuilder b)]) =>
      (new NhsIdTokenPayloadBuilder()..update(updates)).build();

  _$NhsIdTokenPayload._(
      {this.issuer,
      this.sub,
      this.audience,
      this.expiration,
      this.issuedAt,
      this.jwtId,
      this.authenticationTime,
      this.nonce,
      this.vectorOfTrust,
      this.vectorTrustMark,
      this.familyName,
      this.birthdate,
      this.nhsNumber})
      : super._() {
    if (issuer == null) {
      throw new BuiltValueNullFieldError('NhsIdTokenPayload', 'issuer');
    }
    if (sub == null) {
      throw new BuiltValueNullFieldError('NhsIdTokenPayload', 'sub');
    }
    if (audience == null) {
      throw new BuiltValueNullFieldError('NhsIdTokenPayload', 'audience');
    }
    if (expiration == null) {
      throw new BuiltValueNullFieldError('NhsIdTokenPayload', 'expiration');
    }
    if (issuedAt == null) {
      throw new BuiltValueNullFieldError('NhsIdTokenPayload', 'issuedAt');
    }
    if (jwtId == null) {
      throw new BuiltValueNullFieldError('NhsIdTokenPayload', 'jwtId');
    }
    if (vectorOfTrust == null) {
      throw new BuiltValueNullFieldError('NhsIdTokenPayload', 'vectorOfTrust');
    }
    if (vectorTrustMark == null) {
      throw new BuiltValueNullFieldError(
          'NhsIdTokenPayload', 'vectorTrustMark');
    }
  }

  @override
  Map<String, dynamic> get json => __json ??= super.json;

  @override
  NhsIdTokenPayload rebuild(void updates(NhsIdTokenPayloadBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NhsIdTokenPayloadBuilder toBuilder() =>
      new NhsIdTokenPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NhsIdTokenPayload &&
        issuer == other.issuer &&
        sub == other.sub &&
        audience == other.audience &&
        expiration == other.expiration &&
        issuedAt == other.issuedAt &&
        jwtId == other.jwtId &&
        authenticationTime == other.authenticationTime &&
        nonce == other.nonce &&
        vectorOfTrust == other.vectorOfTrust &&
        vectorTrustMark == other.vectorTrustMark &&
        familyName == other.familyName &&
        birthdate == other.birthdate &&
        nhsNumber == other.nhsNumber;
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
                                                $jc($jc(0, issuer.hashCode),
                                                    sub.hashCode),
                                                audience.hashCode),
                                            expiration.hashCode),
                                        issuedAt.hashCode),
                                    jwtId.hashCode),
                                authenticationTime.hashCode),
                            nonce.hashCode),
                        vectorOfTrust.hashCode),
                    vectorTrustMark.hashCode),
                familyName.hashCode),
            birthdate.hashCode),
        nhsNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NhsIdTokenPayload')
          ..add('issuer', issuer)
          ..add('sub', sub)
          ..add('audience', audience)
          ..add('expiration', expiration)
          ..add('issuedAt', issuedAt)
          ..add('jwtId', jwtId)
          ..add('authenticationTime', authenticationTime)
          ..add('nonce', nonce)
          ..add('vectorOfTrust', vectorOfTrust)
          ..add('vectorTrustMark', vectorTrustMark)
          ..add('familyName', familyName)
          ..add('birthdate', birthdate)
          ..add('nhsNumber', nhsNumber))
        .toString();
  }
}

class NhsIdTokenPayloadBuilder
    implements Builder<NhsIdTokenPayload, NhsIdTokenPayloadBuilder> {
  _$NhsIdTokenPayload _$v;

  String _issuer;
  String get issuer => _$this._issuer;
  set issuer(String issuer) => _$this._issuer = issuer;

  String _sub;
  String get sub => _$this._sub;
  set sub(String sub) => _$this._sub = sub;

  ListBuilder<String> _audience;
  ListBuilder<String> get audience =>
      _$this._audience ??= new ListBuilder<String>();
  set audience(ListBuilder<String> audience) => _$this._audience = audience;

  DateTime _expiration;
  DateTime get expiration => _$this._expiration;
  set expiration(DateTime expiration) => _$this._expiration = expiration;

  DateTime _issuedAt;
  DateTime get issuedAt => _$this._issuedAt;
  set issuedAt(DateTime issuedAt) => _$this._issuedAt = issuedAt;

  String _jwtId;
  String get jwtId => _$this._jwtId;
  set jwtId(String jwtId) => _$this._jwtId = jwtId;

  DateTime _authenticationTime;
  DateTime get authenticationTime => _$this._authenticationTime;
  set authenticationTime(DateTime authenticationTime) =>
      _$this._authenticationTime = authenticationTime;

  String _nonce;
  String get nonce => _$this._nonce;
  set nonce(String nonce) => _$this._nonce = nonce;

  String _vectorOfTrust;
  String get vectorOfTrust => _$this._vectorOfTrust;
  set vectorOfTrust(String vectorOfTrust) =>
      _$this._vectorOfTrust = vectorOfTrust;

  String _vectorTrustMark;
  String get vectorTrustMark => _$this._vectorTrustMark;
  set vectorTrustMark(String vectorTrustMark) =>
      _$this._vectorTrustMark = vectorTrustMark;

  String _familyName;
  String get familyName => _$this._familyName;
  set familyName(String familyName) => _$this._familyName = familyName;

  DateTime _birthdate;
  DateTime get birthdate => _$this._birthdate;
  set birthdate(DateTime birthdate) => _$this._birthdate = birthdate;

  String _nhsNumber;
  String get nhsNumber => _$this._nhsNumber;
  set nhsNumber(String nhsNumber) => _$this._nhsNumber = nhsNumber;

  NhsIdTokenPayloadBuilder();

  NhsIdTokenPayloadBuilder get _$this {
    if (_$v != null) {
      _issuer = _$v.issuer;
      _sub = _$v.sub;
      _audience = _$v.audience?.toBuilder();
      _expiration = _$v.expiration;
      _issuedAt = _$v.issuedAt;
      _jwtId = _$v.jwtId;
      _authenticationTime = _$v.authenticationTime;
      _nonce = _$v.nonce;
      _vectorOfTrust = _$v.vectorOfTrust;
      _vectorTrustMark = _$v.vectorTrustMark;
      _familyName = _$v.familyName;
      _birthdate = _$v.birthdate;
      _nhsNumber = _$v.nhsNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NhsIdTokenPayload other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NhsIdTokenPayload;
  }

  @override
  void update(void updates(NhsIdTokenPayloadBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NhsIdTokenPayload build() {
    _$NhsIdTokenPayload _$result;
    try {
      _$result = _$v ??
          new _$NhsIdTokenPayload._(
              issuer: issuer,
              sub: sub,
              audience: audience.build(),
              expiration: expiration,
              issuedAt: issuedAt,
              jwtId: jwtId,
              authenticationTime: authenticationTime,
              nonce: nonce,
              vectorOfTrust: vectorOfTrust,
              vectorTrustMark: vectorTrustMark,
              familyName: familyName,
              birthdate: birthdate,
              nhsNumber: nhsNumber);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'audience';
        audience.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NhsIdTokenPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
