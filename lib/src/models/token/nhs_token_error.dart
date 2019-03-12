import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

/// If the Token Request is invalid or unauthorized, the Platform constructs the
/// error response. The parameters of the Token Error Response are defined as
/// in Section 5.2 of OAuth 2.0 [RFC6749].
///
/// The HTTP response body uses the application/json media type with HTTP
/// response code of 400.
class NhsTokenError {
  const NhsTokenError._(this._value);

  factory NhsTokenError.forName(String error) {
    if (error == null) {
      return null;
    }

    final int index = _names.indexOf(error);

    if (index == -1) {
      throw ArgumentError.value(error, 'error');
    }

    return values[index];
  }

  final String _value;

  /// The request is missing a required parameter, includes an unsupported
  /// parameter value (other than grant type), repeats a parameter, includes
  /// multiple credentials, utilizes more than one mechanism for authenticating
  /// the client, or is otherwise malformed.
  static const NhsTokenError invalidRequest =
      NhsTokenError._('invalid_request');

  /// Client authentication failed (e.g., unknown client, no client
  /// authentication included, or unsupported authentication method).
  ///
  /// The Platform MAY return an HTTP 401 (Unauthorized) status code to indicate
  /// which HTTP authentication schemes are supported. If the client attempted
  /// to authenticate via the "Authorization" request header field, the Platform
  /// MUST respond with an HTTP 401 (Unauthorized) status code and include the
  /// "WWW-Authenticate" response header field matching the authentication
  /// scheme used by the client.
  static const NhsTokenError invalidClient = NhsTokenError._('invalid_client');

  /// The provided authorization grant (e.g., authorization code, resource owner
  /// credentials) or refresh token is invalid, expired, revoked, does not match
  /// the redirection URI used in the authorization request, or was issued to
  /// another client.
  static const NhsTokenError invalidGrant = NhsTokenError._('invalid_grant');

  /// The authenticated client is not authorized to use this authorization grant
  /// type.
  static const NhsTokenError unauthorizedClient =
      NhsTokenError._('unauthorized_client');

  /// The authorization grant type is not supported by the Platform.
  static const NhsTokenError unsupportedGrantType =
      NhsTokenError._('unsupported_grant_type');

  /// The requested scope is invalid, unknown, malformed, or exceeds the scope
  /// granted by the resource owner
  static const NhsTokenError invalidScope = NhsTokenError._('invalid_scope');

  static const List<NhsTokenError> values = <NhsTokenError>[
    invalidRequest,
    invalidClient,
    invalidGrant,
    unauthorizedClient,
    unsupportedGrantType,
    invalidScope,
  ];

  static const List<String> _names = <String>[
    'invalid_request',
    'invalid_client',
    'invalid_grant',
    'unauthorized_client',
    'unsupported_grant_type',
    'invalid_scope',
  ];

  static NhsTokenErrorSerializer get serializer => NhsTokenErrorSerializer();

  @override
  String toString() => _value;
}

class NhsTokenErrorSerializer implements PrimitiveSerializer<NhsTokenError> {
  NhsTokenErrorSerializer();

  final bool structured = false;
  @override
  final Iterable<Type> types = BuiltList<Type>([NhsTokenError]);
  @override
  final String wireName = 'NhsTokenError';

  @override
  Object serialize(Serializers serializers, NhsTokenError error,
      {FullType specifiedType = FullType.unspecified}) {
    return error._value;
  }

  @override
  NhsTokenError deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return NhsTokenError.values[NhsTokenError._names.indexOf(serialized)];
  }
}
