library nhs_token_response;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:nhs_login/src/models/authentication/nhs_scope.dart';
import 'package:nhs_login/src/models/nhs_response_error.dart';
import 'package:nhs_login/src/models/serializers.dart';
import 'package:nhs_login/src/models/token/nhs_id_token.dart';
import 'package:nhs_login/src/models/token/nhs_token_error.dart';

part 'nhs_token_response.g.dart';

/// After receiving a valid and authorised Token request from the client, the
/// Token Endpoint returns a response which includes an ID Token and an Access
/// Token.

abstract class NhsTokenResponse
    implements
        Built<NhsTokenResponse, NhsTokenResponseBuilder>,
        NhsResponseError<NhsTokenError> {
  factory NhsTokenResponse([void updates(NhsTokenResponseBuilder b)]) =
      _$NhsTokenResponse;

  factory NhsTokenResponse.fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith($serializer, json);

  NhsTokenResponse._();

  /// Signed JWT which encodes the Access Token
  @BuiltValueField(wireName: 'access_token')
  String get accessToken;

  /// Must be value "bearer"
  @BuiltValueField(wireName: 'token_type')
  String get tokenType;

  /// The lifetime of the access token.
  @BuiltValueField(wireName: 'expires_in')
  @nullable
  Duration get expiresIn;

  /// Identical to the scope requested by the client;
  @BuiltValueField(wireName: 'scope')
  @nullable
  BuiltList<NhsScope> get scope;

  /// Signed JWT which encodes the ID Token
  @BuiltValueField(wireName: 'id_token')
  NhsIdToken get idToken;

  @override
  @nullable
  NhsTokenError get error;

  @override
  @BuiltValueField(wireName: 'error_description')
  @nullable
  String get errorDescription;

  @override
  @nullable
  @BuiltValueField(wireName: 'error_uri')
  String get errorUri;

  bool get isError => error != null;

  @memoized
  Map<String, dynamic> get json => serializers.serializeWith($serializer, this);

  static Serializer<NhsTokenResponse> get serializer =>
      _$nhsTokenResponseSerializer;

  static Serializer<NhsTokenResponse> get $serializer =>
      _nhsTokenResponseSerializer;
}

Serializer<NhsTokenResponse> _nhsTokenResponseSerializer =
    _NhsTokenResponseSerializer();

class _NhsTokenResponseSerializer extends _$NhsTokenResponseSerializer {
  @override
  Iterable serialize(Serializers serializers, NhsTokenResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final List result = super.serialize(serializers, object);

    result[result.indexOf('scope') + 1] = serializers.serialize(
        object.scope.join(' '),
        specifiedType: const FullType(String));

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
          result.scope.replace(serializers.deserialize(value.split(' '),
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
