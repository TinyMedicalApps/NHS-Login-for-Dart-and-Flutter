// GENERATED CODE - DO NOT MODIFY BY HAND

part of nhs_authentication_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NhsAuthenticationResponse> _$nhsAuthenticationResponseSerializer =
    new _$NhsAuthenticationResponseSerializer();

class _$NhsAuthenticationResponseSerializer
    implements StructuredSerializer<NhsAuthenticationResponse> {
  @override
  final Iterable<Type> types = const [
    NhsAuthenticationResponse,
    _$NhsAuthenticationResponse
  ];
  @override
  final String wireName = 'NhsAuthenticationResponse';

  @override
  Iterable serialize(Serializers serializers, NhsAuthenticationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(String)),
    ];
    if (object.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.code,
            specifiedType: const FullType(String)));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(NhsAuthenticationError)));
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
    if (object.otherParams != null) {
      result
        ..add('otherParams')
        ..add(serializers.serialize(object.otherParams,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(String)])));
    }

    return result;
  }

  @override
  NhsAuthenticationResponse deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NhsAuthenticationResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
                  specifiedType: const FullType(NhsAuthenticationError))
              as NhsAuthenticationError;
          break;
        case 'error_description':
          result.errorDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'error_uri':
          result.errorUri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'otherParams':
          result.otherParams = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(String)
              ])) as Map<String, String>;
          break;
      }
    }

    return result.build();
  }
}

class _$NhsAuthenticationResponse extends NhsAuthenticationResponse {
  @override
  final String code;
  @override
  final String state;
  @override
  final NhsAuthenticationError error;
  @override
  final String errorDescription;
  @override
  final String errorUri;
  @override
  final Map<String, String> otherParams;
  Map<String, dynamic> __json;

  factory _$NhsAuthenticationResponse(
          [void updates(NhsAuthenticationResponseBuilder b)]) =>
      (new NhsAuthenticationResponseBuilder()..update(updates)).build();

  _$NhsAuthenticationResponse._(
      {this.code,
      this.state,
      this.error,
      this.errorDescription,
      this.errorUri,
      this.otherParams})
      : super._() {
    if (state == null) {
      throw new BuiltValueNullFieldError('NhsAuthenticationResponse', 'state');
    }
  }

  @override
  Map<String, dynamic> get json => __json ??= super.json;

  @override
  NhsAuthenticationResponse rebuild(
          void updates(NhsAuthenticationResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NhsAuthenticationResponseBuilder toBuilder() =>
      new NhsAuthenticationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NhsAuthenticationResponse &&
        code == other.code &&
        state == other.state &&
        error == other.error &&
        errorDescription == other.errorDescription &&
        errorUri == other.errorUri &&
        otherParams == other.otherParams;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, code.hashCode), state.hashCode), error.hashCode),
                errorDescription.hashCode),
            errorUri.hashCode),
        otherParams.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NhsAuthenticationResponse')
          ..add('code', code)
          ..add('state', state)
          ..add('error', error)
          ..add('errorDescription', errorDescription)
          ..add('errorUri', errorUri)
          ..add('otherParams', otherParams))
        .toString();
  }
}

class NhsAuthenticationResponseBuilder
    implements
        Builder<NhsAuthenticationResponse, NhsAuthenticationResponseBuilder> {
  _$NhsAuthenticationResponse _$v;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  NhsAuthenticationError _error;
  NhsAuthenticationError get error => _$this._error;
  set error(NhsAuthenticationError error) => _$this._error = error;

  String _errorDescription;
  String get errorDescription => _$this._errorDescription;
  set errorDescription(String errorDescription) =>
      _$this._errorDescription = errorDescription;

  String _errorUri;
  String get errorUri => _$this._errorUri;
  set errorUri(String errorUri) => _$this._errorUri = errorUri;

  Map<String, String> _otherParams;
  Map<String, String> get otherParams => _$this._otherParams;
  set otherParams(Map<String, String> otherParams) =>
      _$this._otherParams = otherParams;

  NhsAuthenticationResponseBuilder();

  NhsAuthenticationResponseBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _state = _$v.state;
      _error = _$v.error;
      _errorDescription = _$v.errorDescription;
      _errorUri = _$v.errorUri;
      _otherParams = _$v.otherParams;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NhsAuthenticationResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NhsAuthenticationResponse;
  }

  @override
  void update(void updates(NhsAuthenticationResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NhsAuthenticationResponse build() {
    final _$result = _$v ??
        new _$NhsAuthenticationResponse._(
            code: code,
            state: state,
            error: error,
            errorDescription: errorDescription,
            errorUri: errorUri,
            otherParams: otherParams);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
