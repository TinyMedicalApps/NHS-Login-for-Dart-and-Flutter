library nhs_id_token;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:nhs_login/src/models/serializers.dart';

part 'nhs_id_token.g.dart';

/// An ID Token is a security token that contains Claims about the
/// Authentication of an End-User by the Platform, when using a Client and
/// potentially other requested Claims.
///
/// The Access Token is a credential that can be used by an application to
/// access an API – initially the UserInfo endpoint.
///
/// The NHS login Platform uses signed JSON Web Tokens (JWTs) for ID Tokens and
/// Access Tokens. Other tokens, for example Refresh tokens are not supported.
abstract class NhsIdToken implements Built<NhsIdToken, NhsIdTokenBuilder> {
  factory NhsIdToken([void updates(NhsIdTokenBuilder b)]) = _$NhsIdToken;

  factory NhsIdToken.fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(serializer, json);

  NhsIdToken._();

  NhsIdTokenHeader get header;

  NhsIdTokenPayload get payload;

  String get signature;

  @memoized
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<NhsIdToken> get serializer => _$nhsIdTokenSerializer;
}

abstract class NhsIdTokenHeader
    implements Built<NhsIdTokenHeader, NhsIdTokenHeaderBuilder> {
  factory NhsIdTokenHeader([void updates(NhsIdTokenHeaderBuilder b)]) =
      _$NhsIdTokenHeader;

  factory NhsIdTokenHeader.fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(serializer, json);

  NhsIdTokenHeader._();

  /// Algorithm used for signing the JWT
  /// {alg}
  ///
  /// "RS512" – RSASSA-PKCS1-v1_5 with the SHA-512 hash algorithm
  @BuiltValueField(wireName: 'alg')
  String get algorithm;

  /// Type
  /// {typ}
  ///
  /// "JWT"
  @BuiltValueField(wireName: 'typ')
  String get type;

  @memoized
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<NhsIdTokenHeader> get serializer =>
      _$nhsIdTokenHeaderSerializer;
}

/// The following Claims are used within the ID Token for all Oauth 2.0 flows
/// used by OpenID Connect.
abstract class NhsIdTokenPayload
    implements Built<NhsIdTokenPayload, NhsIdTokenPayloadBuilder> {
  factory NhsIdTokenPayload([void updates(NhsIdTokenPayloadBuilder b)]) =
      _$NhsIdTokenPayload;

  factory NhsIdTokenPayload.fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(serializer, json);

  NhsIdTokenPayload._();

  /// Issuer Identifier for the Issuer of the response
  /// {iss}
  ///
  /// The iss value is a case sensitive URL using the https scheme that contains
  /// scheme, host, and optionally, port number and path components and no query
  /// or fragment components.
  @BuiltValueField(wireName: 'iss')
  String get issuer;

  /// Subject Identifier
  /// {sub}
  ///
  /// A locally unique and never reassigned identifier within the Issuer for the
  /// End-User, which is intended to be consumed by the Client, e.g., 24400320
  /// or AitOawmwtWwcT0k51BayewNvutrJUqsvl6qs7A4
  ///
  /// It MUST NOT exceed 255 ASCII characters in length. The sub value is a case
  /// sensitive string
  @BuiltValueField(wireName: 'sub')
  String get sub;

  /// Audience(s) that this ID Token is intended for
  /// {aud}
  ///
  /// It MUST contain the Oauth 2.0 client_id of the Partner Services as an
  /// audience value. It MAY also contain identifiers for other audiences. In
  /// the general case, the aud value is an array of case sensitive strings. In
  /// the common special case when there is one audience, the aud value MAY be a
  /// single case sensitive string
  @BuiltValueField(wireName: 'aud')
  BuiltList<String> get audience;

  /// Expiration time on or after which the ID Token MUST NOT be accepted for processing
  /// {exp}
  ///
  /// The processing of this parameter requires that the current date/time MUST
  /// be before the expiration date/time listed in the value. Implementers MAY
  /// provide for some small leeway, usually no more than a few minutes, to
  /// account for clock skew.
  @BuiltValueField(wireName: 'exp')
  DateTime get expiration;

  /// Time at which the JWT was issued
  /// {iat}
  @BuiltValueField(wireName: 'iat')
  DateTime get issuedAt;

  /// JWT unique identifier
  /// {jti}
  ///
  /// Value is unique to each token created by the issuer
  @BuiltValueField(wireName: 'jti')
  String get jwtId;

  /// Time when the End-User authentication occurred
  /// {auth_time}
  ///
  /// This Claim is provided when a max_age request is made or when auth_time is
  /// requested as an Essential Claim.
  ///
  /// (The auth_time Claim semantically corresponds to the OpenID 2.0 PAPE [10]
  /// auth_time response parameter.)
  @nullable
  @BuiltValueField(wireName: 'auth_time')
  DateTime get authenticationTime;

  /// String value used to associate a Client session with an ID Token, and to
  /// mitigate replay attacks
  /// {nonce}
  ///
  /// The value is passed through unmodified from the Authentication Request to
  /// the ID Token.
  ///
  /// * If present in the ID Token, Clients MUST verify that the nonce Claim
  /// Value is equal to the value of the nonce parameter sent in the
  /// Authentication Request.
  ///
  /// The nonce value is a case sensitive string
  @nullable
  @BuiltValueField(wireName: 'nonce')
  String get nonce;

  /// Vectors of Trust
  /// {vot}
  ///
  /// The level to which the user’s identity has been verified.
  @BuiltValueField(wireName: 'vot')
  String get vectorOfTrust;

  /// Vector Trust Mark
  /// {vtm}
  ///
  /// Https URI of the vtm claim
  @BuiltValueField(wireName: 'vtm')
  String get vectorTrustMark;

  /// Family Name
  /// {family_name}
  ///
  /// Surname(s) or last name(s) of the End-User
  @nullable
  @BuiltValueField(wireName: 'family_name')
  String get familyName;

  /// Birthdate
  /// {birthdate}
  ///
  /// The user’s date of birth is available
  @nullable
  @BuiltValueField(wireName: 'birthdate')
  DateTime get birthdate;

  /// NHS Number
  /// {nhs_number}
  ///
  /// If the user’s NHS Number is known, then it will be included. Will be
  /// represented as a 10-digit string.
  @nullable
  @BuiltValueField(wireName: 'nhs_number')
  String get nhsNumber;

  @memoized
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<NhsIdTokenPayload> get serializer =>
      _$nhsIdTokenPayloadSerializer;
}
