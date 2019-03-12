import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:nhs_login/src/models/authentication/nhs_prompt.dart';
import 'package:nhs_login/src/nhs_authentication.dart';

class NhsAuthenticationError {
  const NhsAuthenticationError._(this._value);

  factory NhsAuthenticationError.forName(String error) {
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

  // OAuth 2.0 error codes

  /// The request is missing a required parameter, includes an invalid parameter
  /// value, includes a parameter more than once, or is otherwise malformed.
  static const NhsAuthenticationError invalidRequest =
      NhsAuthenticationError._('invalid_request');

  /// The client is not authorized to request an authorization code using this
  /// method
  static const NhsAuthenticationError unauthorizedClient =
      NhsAuthenticationError._('unauthorized_client');

  /// The resource owner or Platform denied the request
  static const NhsAuthenticationError accessDenied =
      NhsAuthenticationError._('access_denied');

  /// The Platform does not support obtaining an authorization code using this
  /// method
  static const NhsAuthenticationError unsupportedResponseType =
      NhsAuthenticationError._('unsupported_response_type');

  /// The requested scope is invalid, unknown, or malformed
  static const NhsAuthenticationError invalidScope =
      NhsAuthenticationError._('invalid_scope');

  /// The Platform encountered an unexpected condition that prevented it from
  /// fulfilling the request.
  ///
  /// (This error code is needed because a 500 Internal Server Error HTTP status
  /// code cannot be returned to the client via an HTTP redirect.)
  static const NhsAuthenticationError serverError =
      NhsAuthenticationError._('server_error');

  /// The Platform is currently unable to handle the request due to a temporary
  /// overloading or maintenance of the server.
  ///
  /// (This error code is needed because a 503 Service Unavailable HTTP status
  /// code cannot be returned to the client via an HTTP redirect.)
  static const NhsAuthenticationError temporarilyUnavailable =
      NhsAuthenticationError._('temporarily_unavailable');

  // OpenID Connect Error Codes

  /// The Platform requires End-User interaction of some form to proceed.
  ///
  /// This error MAY be returned when the [NhsAuthentication.prompt] parameter
  /// value is [NhsPrompt.none], but the Authentication Request cannot be
  /// completed without displaying a user interface for End-User interaction.
  static const NhsAuthenticationError interactionRequired =
      NhsAuthenticationError._('interaction_required');

  /// The Platform requires End-User authentication.
  ///
  /// This error MAY be returned when the [NhsAuthentication.prompt] parameter
  /// value is [NhsPrompt.none], but the Authentication Request cannot be
  /// completed without displaying a user interface for End-User authentication.
  static const NhsAuthenticationError loginRequired =
      NhsAuthenticationError._('login_required');

  /// The End-User is REQUIRED to select a session at the Platform.
  ///
  /// * The End-User MAY be authenticated at the Platform with different
  /// associated accounts, but the End-User did not select a session.
  ///
  /// * This error MAY be returned when the [NhsAuthentication.prompt] parameter
  /// value is [NhsPrompt.none], but the Authentication Request cannot be
  /// completed without displaying a user interface to prompt for a session to
  /// use
  static const NhsAuthenticationError accountSelectionRequired =
      NhsAuthenticationError._('account_selection_required');

  /// The Platform requires End-User consent.
  ///
  /// * This error MAY be returned when the [NhsAuthentication.prompt] parameter
  /// value is [NhsPrompt.none], but the Authentication Request cannot be
  /// completed without displaying a user interface for End-User consent
  static const NhsAuthenticationError consentRequired =
      NhsAuthenticationError._('consent_required');

  /// The request_uri in the Authorization Request returns an error or contains
  /// invalid data
  static const NhsAuthenticationError invalidRequestUri =
      NhsAuthenticationError._('invalid_request_uri');

  /// The request parameter contains an invalid Request Object
  static const NhsAuthenticationError invalidRequestObject =
      NhsAuthenticationError._('invalid_request_object');

  /// The OP does not support use of the request parameter
  static const NhsAuthenticationError requestNotSupported =
      NhsAuthenticationError._('request_not_supported');

  /// The OP does not support use of the request_uri parameter
  static const NhsAuthenticationError requestUriNotSupported =
      NhsAuthenticationError._('request_uri_not_supported');

  /// The OP does not support use of the registration parameter
  static const NhsAuthenticationError registrationNotSupported =
      NhsAuthenticationError._('registration_not_supported');

  static const List<NhsAuthenticationError> values = <NhsAuthenticationError>[
    invalidRequest,
    unauthorizedClient,
    accessDenied,
    unsupportedResponseType,
    invalidScope,
    serverError,
    temporarilyUnavailable,
    interactionRequired,
    loginRequired,
    accountSelectionRequired,
    consentRequired,
    invalidRequestUri,
    invalidRequestObject,
    requestNotSupported,
    requestUriNotSupported,
    registrationNotSupported,
  ];

  static const List<String> _names = <String>[
    'invalid_request',
    'unauthorized_client',
    'access_denied',
    'unsupported_response_type',
    'invalid_scope',
    'server_error',
    'temporarily_unavailable',
    'interaction_required',
    'login_required',
    'account_selection_required',
    'consent_required',
    'invalid_request_uri',
    'invalid_request_object',
    'request_not_supported',
    'request_uri_not_supported',
    'registration_not_supported',
  ];

  static NhsAuthenticationErrorSerializer get serializer =>
      NhsAuthenticationErrorSerializer();

  @override
  String toString() => _value;
}

class NhsAuthenticationErrorSerializer
    implements PrimitiveSerializer<NhsAuthenticationError> {
  NhsAuthenticationErrorSerializer();

  final bool structured = false;
  @override
  final Iterable<Type> types = BuiltList<Type>([NhsAuthenticationError]);
  @override
  final String wireName = 'NhsAuthenticationError';

  @override
  Object serialize(Serializers serializers, NhsAuthenticationError error,
      {FullType specifiedType = FullType.unspecified}) {
    return error._value;
  }

  @override
  NhsAuthenticationError deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return NhsAuthenticationError
        .values[NhsAuthenticationError._names.indexOf(serialized)];
  }
}
