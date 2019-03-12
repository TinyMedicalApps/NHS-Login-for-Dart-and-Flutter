// GENERATED CODE - DO NOT MODIFY BY HAND

part of nhs_userinfo;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NhsUserinfo> _$nhsUserinfoSerializer = new _$NhsUserinfoSerializer();
Serializer<NhsAddressField> _$nhsAddressFieldSerializer =
    new _$NhsAddressFieldSerializer();
Serializer<GpIntegrationCredentials> _$gpIntegrationCredentialsSerializer =
    new _$GpIntegrationCredentialsSerializer();
Serializer<GpRegistrationDetails> _$gpRegistrationDetailsSerializer =
    new _$GpRegistrationDetailsSerializer();

class _$NhsUserinfoSerializer implements StructuredSerializer<NhsUserinfo> {
  @override
  final Iterable<Type> types = const [NhsUserinfo, _$NhsUserinfo];
  @override
  final String wireName = 'NhsUserinfo';

  @override
  Iterable serialize(Serializers serializers, NhsUserinfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'iss',
      serializers.serialize(object.issuer,
          specifiedType: const FullType(String)),
      'aud',
      serializers.serialize(object.audience,
          specifiedType: const FullType(String)),
      'sub',
      serializers.serialize(object.sub, specifiedType: const FullType(String)),
    ];
    if (object.familyName != null) {
      result
        ..add('family_name')
        ..add(serializers.serialize(object.familyName,
            specifiedType: const FullType(String)));
    }
    if (object.givenName != null) {
      result
        ..add('given_name')
        ..add(serializers.serialize(object.givenName,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.emailVerified != null) {
      result
        ..add('email_verified')
        ..add(serializers.serialize(object.emailVerified,
            specifiedType: const FullType(String)));
    }
    if (object.phoneNumber != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(object.phoneNumber,
            specifiedType: const FullType(String)));
    }
    if (object.phoneNumberVerified != null) {
      result
        ..add('phone_number_verified')
        ..add(serializers.serialize(object.phoneNumberVerified,
            specifiedType: const FullType(String)));
    }
    if (object.birthdate != null) {
      result
        ..add('birthdate')
        ..add(serializers.serialize(object.birthdate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(NhsAddressField)));
    }
    if (object.nhsNumber != null) {
      result
        ..add('nhs_number')
        ..add(serializers.serialize(object.nhsNumber,
            specifiedType: const FullType(String)));
    }
    if (object.gpIntegrationCredentials != null) {
      result
        ..add('gp_integration_credentials')
        ..add(serializers.serialize(object.gpIntegrationCredentials,
            specifiedType: const FullType(GpIntegrationCredentials)));
    }
    if (object.delegations != null) {
      result
        ..add('delegations')
        ..add(serializers.serialize(object.delegations,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.gpRegistrationDetails != null) {
      result
        ..add('gp_registration_details')
        ..add(serializers.serialize(object.gpRegistrationDetails,
            specifiedType: const FullType(GpRegistrationDetails)));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(NhsUserinfoError)));
    }
    if (object.errorDescription != null) {
      result
        ..add('error_description')
        ..add(serializers.serialize(object.errorDescription,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NhsUserinfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NhsUserinfoBuilder();

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
        case 'aud':
          result.audience = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sub':
          result.sub = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'family_name':
          result.familyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'given_name':
          result.givenName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email_verified':
          result.emailVerified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number_verified':
          result.phoneNumberVerified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'birthdate':
          result.birthdate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NhsAddressField))
              as NhsAddressField);
          break;
        case 'nhs_number':
          result.nhsNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gp_integration_credentials':
          result.gpIntegrationCredentials.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GpIntegrationCredentials))
              as GpIntegrationCredentials);
          break;
        case 'delegations':
          result.delegations.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'gp_registration_details':
          result.gpRegistrationDetails.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GpRegistrationDetails))
              as GpRegistrationDetails);
          break;
        case 'error':
          result.error = serializers.deserialize(value,
                  specifiedType: const FullType(NhsUserinfoError))
              as NhsUserinfoError;
          break;
        case 'error_description':
          result.errorDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NhsAddressFieldSerializer
    implements StructuredSerializer<NhsAddressField> {
  @override
  final Iterable<Type> types = const [NhsAddressField, _$NhsAddressField];
  @override
  final String wireName = 'NhsAddressField';

  @override
  Iterable serialize(Serializers serializers, NhsAddressField object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'formatted',
      serializers.serialize(object.formatted,
          specifiedType: const FullType(String)),
      'postal_code',
      serializers.serialize(object.postalCode,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  NhsAddressField deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NhsAddressFieldBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'formatted':
          result.formatted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'postal_code':
          result.postalCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GpIntegrationCredentialsSerializer
    implements StructuredSerializer<GpIntegrationCredentials> {
  @override
  final Iterable<Type> types = const [
    GpIntegrationCredentials,
    _$GpIntegrationCredentials
  ];
  @override
  final String wireName = 'GpIntegrationCredentials';

  @override
  Iterable serialize(Serializers serializers, GpIntegrationCredentials object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'gp_user_id',
      serializers.serialize(object.gpUserId,
          specifiedType: const FullType(String)),
      'gp_system_id',
      serializers.serialize(object.gpSystemId,
          specifiedType: const FullType(String)),
      'gp_linkage_key',
      serializers.serialize(object.gpLinkageKey,
          specifiedType: const FullType(String)),
      'gp_ods_code',
      serializers.serialize(object.gpOdsCode,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GpIntegrationCredentials deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpIntegrationCredentialsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'gp_user_id':
          result.gpUserId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gp_system_id':
          result.gpSystemId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gp_linkage_key':
          result.gpLinkageKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gp_ods_code':
          result.gpOdsCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GpRegistrationDetailsSerializer
    implements StructuredSerializer<GpRegistrationDetails> {
  @override
  final Iterable<Type> types = const [
    GpRegistrationDetails,
    _$GpRegistrationDetails
  ];
  @override
  final String wireName = 'GpRegistrationDetails';

  @override
  Iterable serialize(Serializers serializers, GpRegistrationDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'gp_ods_code',
      serializers.serialize(object.gpOdsCode,
          specifiedType: const FullType(String)),
      'practice_name',
      serializers.serialize(object.practiceName,
          specifiedType: const FullType(String)),
      'practice_address',
      serializers.serialize(object.practiceAddress,
          specifiedType: const FullType(NhsAddressField)),
    ];

    return result;
  }

  @override
  GpRegistrationDetails deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpRegistrationDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'gp_ods_code':
          result.gpOdsCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'practice_name':
          result.practiceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'practice_address':
          result.practiceAddress.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NhsAddressField))
              as NhsAddressField);
          break;
      }
    }

    return result.build();
  }
}

class _$NhsUserinfo extends NhsUserinfo {
  @override
  final String issuer;
  @override
  final String audience;
  @override
  final String sub;
  @override
  final String familyName;
  @override
  final String givenName;
  @override
  final String email;
  @override
  final String emailVerified;
  @override
  final String phoneNumber;
  @override
  final String phoneNumberVerified;
  @override
  final DateTime birthdate;
  @override
  final NhsAddressField address;
  @override
  final String nhsNumber;
  @override
  final GpIntegrationCredentials gpIntegrationCredentials;
  @override
  final BuiltList<String> delegations;
  @override
  final GpRegistrationDetails gpRegistrationDetails;
  @override
  final NhsUserinfoError error;
  @override
  final String errorDescription;
  Map<String, dynamic> __json;

  factory _$NhsUserinfo([void updates(NhsUserinfoBuilder b)]) =>
      (new NhsUserinfoBuilder()..update(updates)).build();

  _$NhsUserinfo._(
      {this.issuer,
      this.audience,
      this.sub,
      this.familyName,
      this.givenName,
      this.email,
      this.emailVerified,
      this.phoneNumber,
      this.phoneNumberVerified,
      this.birthdate,
      this.address,
      this.nhsNumber,
      this.gpIntegrationCredentials,
      this.delegations,
      this.gpRegistrationDetails,
      this.error,
      this.errorDescription})
      : super._() {
    if (issuer == null) {
      throw new BuiltValueNullFieldError('NhsUserinfo', 'issuer');
    }
    if (audience == null) {
      throw new BuiltValueNullFieldError('NhsUserinfo', 'audience');
    }
    if (sub == null) {
      throw new BuiltValueNullFieldError('NhsUserinfo', 'sub');
    }
  }

  @override
  Map<String, dynamic> get json => __json ??= super.json;

  @override
  NhsUserinfo rebuild(void updates(NhsUserinfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NhsUserinfoBuilder toBuilder() => new NhsUserinfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NhsUserinfo &&
        issuer == other.issuer &&
        audience == other.audience &&
        sub == other.sub &&
        familyName == other.familyName &&
        givenName == other.givenName &&
        email == other.email &&
        emailVerified == other.emailVerified &&
        phoneNumber == other.phoneNumber &&
        phoneNumberVerified == other.phoneNumberVerified &&
        birthdate == other.birthdate &&
        address == other.address &&
        nhsNumber == other.nhsNumber &&
        gpIntegrationCredentials == other.gpIntegrationCredentials &&
        delegations == other.delegations &&
        gpRegistrationDetails == other.gpRegistrationDetails &&
        error == other.error &&
        errorDescription == other.errorDescription;
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
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        issuer
                                                                            .hashCode),
                                                                    audience
                                                                        .hashCode),
                                                                sub.hashCode),
                                                            familyName
                                                                .hashCode),
                                                        givenName.hashCode),
                                                    email.hashCode),
                                                emailVerified.hashCode),
                                            phoneNumber.hashCode),
                                        phoneNumberVerified.hashCode),
                                    birthdate.hashCode),
                                address.hashCode),
                            nhsNumber.hashCode),
                        gpIntegrationCredentials.hashCode),
                    delegations.hashCode),
                gpRegistrationDetails.hashCode),
            error.hashCode),
        errorDescription.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NhsUserinfo')
          ..add('issuer', issuer)
          ..add('audience', audience)
          ..add('sub', sub)
          ..add('familyName', familyName)
          ..add('givenName', givenName)
          ..add('email', email)
          ..add('emailVerified', emailVerified)
          ..add('phoneNumber', phoneNumber)
          ..add('phoneNumberVerified', phoneNumberVerified)
          ..add('birthdate', birthdate)
          ..add('address', address)
          ..add('nhsNumber', nhsNumber)
          ..add('gpIntegrationCredentials', gpIntegrationCredentials)
          ..add('delegations', delegations)
          ..add('gpRegistrationDetails', gpRegistrationDetails)
          ..add('error', error)
          ..add('errorDescription', errorDescription))
        .toString();
  }
}

class NhsUserinfoBuilder implements Builder<NhsUserinfo, NhsUserinfoBuilder> {
  _$NhsUserinfo _$v;

  String _issuer;
  String get issuer => _$this._issuer;
  set issuer(String issuer) => _$this._issuer = issuer;

  String _audience;
  String get audience => _$this._audience;
  set audience(String audience) => _$this._audience = audience;

  String _sub;
  String get sub => _$this._sub;
  set sub(String sub) => _$this._sub = sub;

  String _familyName;
  String get familyName => _$this._familyName;
  set familyName(String familyName) => _$this._familyName = familyName;

  String _givenName;
  String get givenName => _$this._givenName;
  set givenName(String givenName) => _$this._givenName = givenName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _emailVerified;
  String get emailVerified => _$this._emailVerified;
  set emailVerified(String emailVerified) =>
      _$this._emailVerified = emailVerified;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _phoneNumberVerified;
  String get phoneNumberVerified => _$this._phoneNumberVerified;
  set phoneNumberVerified(String phoneNumberVerified) =>
      _$this._phoneNumberVerified = phoneNumberVerified;

  DateTime _birthdate;
  DateTime get birthdate => _$this._birthdate;
  set birthdate(DateTime birthdate) => _$this._birthdate = birthdate;

  NhsAddressFieldBuilder _address;
  NhsAddressFieldBuilder get address =>
      _$this._address ??= new NhsAddressFieldBuilder();
  set address(NhsAddressFieldBuilder address) => _$this._address = address;

  String _nhsNumber;
  String get nhsNumber => _$this._nhsNumber;
  set nhsNumber(String nhsNumber) => _$this._nhsNumber = nhsNumber;

  GpIntegrationCredentialsBuilder _gpIntegrationCredentials;
  GpIntegrationCredentialsBuilder get gpIntegrationCredentials =>
      _$this._gpIntegrationCredentials ??=
          new GpIntegrationCredentialsBuilder();
  set gpIntegrationCredentials(
          GpIntegrationCredentialsBuilder gpIntegrationCredentials) =>
      _$this._gpIntegrationCredentials = gpIntegrationCredentials;

  ListBuilder<String> _delegations;
  ListBuilder<String> get delegations =>
      _$this._delegations ??= new ListBuilder<String>();
  set delegations(ListBuilder<String> delegations) =>
      _$this._delegations = delegations;

  GpRegistrationDetailsBuilder _gpRegistrationDetails;
  GpRegistrationDetailsBuilder get gpRegistrationDetails =>
      _$this._gpRegistrationDetails ??= new GpRegistrationDetailsBuilder();
  set gpRegistrationDetails(
          GpRegistrationDetailsBuilder gpRegistrationDetails) =>
      _$this._gpRegistrationDetails = gpRegistrationDetails;

  NhsUserinfoError _error;
  NhsUserinfoError get error => _$this._error;
  set error(NhsUserinfoError error) => _$this._error = error;

  String _errorDescription;
  String get errorDescription => _$this._errorDescription;
  set errorDescription(String errorDescription) =>
      _$this._errorDescription = errorDescription;

  NhsUserinfoBuilder();

  NhsUserinfoBuilder get _$this {
    if (_$v != null) {
      _issuer = _$v.issuer;
      _audience = _$v.audience;
      _sub = _$v.sub;
      _familyName = _$v.familyName;
      _givenName = _$v.givenName;
      _email = _$v.email;
      _emailVerified = _$v.emailVerified;
      _phoneNumber = _$v.phoneNumber;
      _phoneNumberVerified = _$v.phoneNumberVerified;
      _birthdate = _$v.birthdate;
      _address = _$v.address?.toBuilder();
      _nhsNumber = _$v.nhsNumber;
      _gpIntegrationCredentials = _$v.gpIntegrationCredentials?.toBuilder();
      _delegations = _$v.delegations?.toBuilder();
      _gpRegistrationDetails = _$v.gpRegistrationDetails?.toBuilder();
      _error = _$v.error;
      _errorDescription = _$v.errorDescription;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NhsUserinfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NhsUserinfo;
  }

  @override
  void update(void updates(NhsUserinfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NhsUserinfo build() {
    _$NhsUserinfo _$result;
    try {
      _$result = _$v ??
          new _$NhsUserinfo._(
              issuer: issuer,
              audience: audience,
              sub: sub,
              familyName: familyName,
              givenName: givenName,
              email: email,
              emailVerified: emailVerified,
              phoneNumber: phoneNumber,
              phoneNumberVerified: phoneNumberVerified,
              birthdate: birthdate,
              address: _address?.build(),
              nhsNumber: nhsNumber,
              gpIntegrationCredentials: _gpIntegrationCredentials?.build(),
              delegations: _delegations?.build(),
              gpRegistrationDetails: _gpRegistrationDetails?.build(),
              error: error,
              errorDescription: errorDescription);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();

        _$failedField = 'gpIntegrationCredentials';
        _gpIntegrationCredentials?.build();
        _$failedField = 'delegations';
        _delegations?.build();
        _$failedField = 'gpRegistrationDetails';
        _gpRegistrationDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NhsUserinfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NhsAddressField extends NhsAddressField {
  @override
  final String formatted;
  @override
  final String postalCode;
  Map<String, dynamic> __json;

  factory _$NhsAddressField([void updates(NhsAddressFieldBuilder b)]) =>
      (new NhsAddressFieldBuilder()..update(updates)).build();

  _$NhsAddressField._({this.formatted, this.postalCode}) : super._() {
    if (formatted == null) {
      throw new BuiltValueNullFieldError('NhsAddressField', 'formatted');
    }
    if (postalCode == null) {
      throw new BuiltValueNullFieldError('NhsAddressField', 'postalCode');
    }
  }

  @override
  Map<String, dynamic> get json => __json ??= super.json;

  @override
  NhsAddressField rebuild(void updates(NhsAddressFieldBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NhsAddressFieldBuilder toBuilder() =>
      new NhsAddressFieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NhsAddressField &&
        formatted == other.formatted &&
        postalCode == other.postalCode;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, formatted.hashCode), postalCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NhsAddressField')
          ..add('formatted', formatted)
          ..add('postalCode', postalCode))
        .toString();
  }
}

class NhsAddressFieldBuilder
    implements Builder<NhsAddressField, NhsAddressFieldBuilder> {
  _$NhsAddressField _$v;

  String _formatted;
  String get formatted => _$this._formatted;
  set formatted(String formatted) => _$this._formatted = formatted;

  String _postalCode;
  String get postalCode => _$this._postalCode;
  set postalCode(String postalCode) => _$this._postalCode = postalCode;

  NhsAddressFieldBuilder();

  NhsAddressFieldBuilder get _$this {
    if (_$v != null) {
      _formatted = _$v.formatted;
      _postalCode = _$v.postalCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NhsAddressField other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NhsAddressField;
  }

  @override
  void update(void updates(NhsAddressFieldBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NhsAddressField build() {
    final _$result = _$v ??
        new _$NhsAddressField._(formatted: formatted, postalCode: postalCode);
    replace(_$result);
    return _$result;
  }
}

class _$GpIntegrationCredentials extends GpIntegrationCredentials {
  @override
  final String gpUserId;
  @override
  final String gpSystemId;
  @override
  final String gpLinkageKey;
  @override
  final String gpOdsCode;
  Map<String, dynamic> __json;

  factory _$GpIntegrationCredentials(
          [void updates(GpIntegrationCredentialsBuilder b)]) =>
      (new GpIntegrationCredentialsBuilder()..update(updates)).build();

  _$GpIntegrationCredentials._(
      {this.gpUserId, this.gpSystemId, this.gpLinkageKey, this.gpOdsCode})
      : super._() {
    if (gpUserId == null) {
      throw new BuiltValueNullFieldError(
          'GpIntegrationCredentials', 'gpUserId');
    }
    if (gpSystemId == null) {
      throw new BuiltValueNullFieldError(
          'GpIntegrationCredentials', 'gpSystemId');
    }
    if (gpLinkageKey == null) {
      throw new BuiltValueNullFieldError(
          'GpIntegrationCredentials', 'gpLinkageKey');
    }
    if (gpOdsCode == null) {
      throw new BuiltValueNullFieldError(
          'GpIntegrationCredentials', 'gpOdsCode');
    }
  }

  @override
  Map<String, dynamic> get json => __json ??= super.json;

  @override
  GpIntegrationCredentials rebuild(
          void updates(GpIntegrationCredentialsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GpIntegrationCredentialsBuilder toBuilder() =>
      new GpIntegrationCredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpIntegrationCredentials &&
        gpUserId == other.gpUserId &&
        gpSystemId == other.gpSystemId &&
        gpLinkageKey == other.gpLinkageKey &&
        gpOdsCode == other.gpOdsCode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, gpUserId.hashCode), gpSystemId.hashCode),
            gpLinkageKey.hashCode),
        gpOdsCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GpIntegrationCredentials')
          ..add('gpUserId', gpUserId)
          ..add('gpSystemId', gpSystemId)
          ..add('gpLinkageKey', gpLinkageKey)
          ..add('gpOdsCode', gpOdsCode))
        .toString();
  }
}

class GpIntegrationCredentialsBuilder
    implements
        Builder<GpIntegrationCredentials, GpIntegrationCredentialsBuilder> {
  _$GpIntegrationCredentials _$v;

  String _gpUserId;
  String get gpUserId => _$this._gpUserId;
  set gpUserId(String gpUserId) => _$this._gpUserId = gpUserId;

  String _gpSystemId;
  String get gpSystemId => _$this._gpSystemId;
  set gpSystemId(String gpSystemId) => _$this._gpSystemId = gpSystemId;

  String _gpLinkageKey;
  String get gpLinkageKey => _$this._gpLinkageKey;
  set gpLinkageKey(String gpLinkageKey) => _$this._gpLinkageKey = gpLinkageKey;

  String _gpOdsCode;
  String get gpOdsCode => _$this._gpOdsCode;
  set gpOdsCode(String gpOdsCode) => _$this._gpOdsCode = gpOdsCode;

  GpIntegrationCredentialsBuilder();

  GpIntegrationCredentialsBuilder get _$this {
    if (_$v != null) {
      _gpUserId = _$v.gpUserId;
      _gpSystemId = _$v.gpSystemId;
      _gpLinkageKey = _$v.gpLinkageKey;
      _gpOdsCode = _$v.gpOdsCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpIntegrationCredentials other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GpIntegrationCredentials;
  }

  @override
  void update(void updates(GpIntegrationCredentialsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GpIntegrationCredentials build() {
    final _$result = _$v ??
        new _$GpIntegrationCredentials._(
            gpUserId: gpUserId,
            gpSystemId: gpSystemId,
            gpLinkageKey: gpLinkageKey,
            gpOdsCode: gpOdsCode);
    replace(_$result);
    return _$result;
  }
}

class _$GpRegistrationDetails extends GpRegistrationDetails {
  @override
  final String gpOdsCode;
  @override
  final String practiceName;
  @override
  final NhsAddressField practiceAddress;
  Map<String, dynamic> __json;

  factory _$GpRegistrationDetails(
          [void updates(GpRegistrationDetailsBuilder b)]) =>
      (new GpRegistrationDetailsBuilder()..update(updates)).build();

  _$GpRegistrationDetails._(
      {this.gpOdsCode, this.practiceName, this.practiceAddress})
      : super._() {
    if (gpOdsCode == null) {
      throw new BuiltValueNullFieldError('GpRegistrationDetails', 'gpOdsCode');
    }
    if (practiceName == null) {
      throw new BuiltValueNullFieldError(
          'GpRegistrationDetails', 'practiceName');
    }
    if (practiceAddress == null) {
      throw new BuiltValueNullFieldError(
          'GpRegistrationDetails', 'practiceAddress');
    }
  }

  @override
  Map<String, dynamic> get json => __json ??= super.json;

  @override
  GpRegistrationDetails rebuild(void updates(GpRegistrationDetailsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GpRegistrationDetailsBuilder toBuilder() =>
      new GpRegistrationDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpRegistrationDetails &&
        gpOdsCode == other.gpOdsCode &&
        practiceName == other.practiceName &&
        practiceAddress == other.practiceAddress;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, gpOdsCode.hashCode), practiceName.hashCode),
        practiceAddress.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GpRegistrationDetails')
          ..add('gpOdsCode', gpOdsCode)
          ..add('practiceName', practiceName)
          ..add('practiceAddress', practiceAddress))
        .toString();
  }
}

class GpRegistrationDetailsBuilder
    implements Builder<GpRegistrationDetails, GpRegistrationDetailsBuilder> {
  _$GpRegistrationDetails _$v;

  String _gpOdsCode;
  String get gpOdsCode => _$this._gpOdsCode;
  set gpOdsCode(String gpOdsCode) => _$this._gpOdsCode = gpOdsCode;

  String _practiceName;
  String get practiceName => _$this._practiceName;
  set practiceName(String practiceName) => _$this._practiceName = practiceName;

  NhsAddressFieldBuilder _practiceAddress;
  NhsAddressFieldBuilder get practiceAddress =>
      _$this._practiceAddress ??= new NhsAddressFieldBuilder();
  set practiceAddress(NhsAddressFieldBuilder practiceAddress) =>
      _$this._practiceAddress = practiceAddress;

  GpRegistrationDetailsBuilder();

  GpRegistrationDetailsBuilder get _$this {
    if (_$v != null) {
      _gpOdsCode = _$v.gpOdsCode;
      _practiceName = _$v.practiceName;
      _practiceAddress = _$v.practiceAddress?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpRegistrationDetails other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GpRegistrationDetails;
  }

  @override
  void update(void updates(GpRegistrationDetailsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GpRegistrationDetails build() {
    _$GpRegistrationDetails _$result;
    try {
      _$result = _$v ??
          new _$GpRegistrationDetails._(
              gpOdsCode: gpOdsCode,
              practiceName: practiceName,
              practiceAddress: practiceAddress.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'practiceAddress';
        practiceAddress.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GpRegistrationDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
