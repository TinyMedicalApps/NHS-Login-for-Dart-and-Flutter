import 'package:meta/meta.dart';

import 'nhs_authentication.dart';

class NhsTokenRequest {
  const NhsTokenRequest({
    @required this.host,
    @required this.code,
    @required this.redirectUri,
    @required this.clientId,
    @required this.clientAssertion,
  });

  static const String grantType = 'authorization_code';
  static const String clientAssertionType =
      'urn:ietf:params:oauth:client-assertion-type:jwt-bearer';

  final String host;

  /// The authorization code previously received from the Platform
  final String code;

  /// MUST match the [NhsAuthentication.redirectUri] that was included in the
  /// authorization request.
  final String redirectUri;

  /// OAuth 2.0 Client Identifier
  ///
  /// This is a static identifier previously provided by the NHS login Partner
  /// Onboarding team
  final String clientId;

  /// A signed JWT presented for Client Authentication, as per
  /// https://tools.ietf.org/html/rfc7523
  ///
  /// (Note the "iss" and "sub" claim must equal the client_id and the "aud"
  /// must contain the token endpoint URL)
  ///
  /// The assertion must be signed using the private key of the client, agreed
  /// during onboarding
  final String clientAssertion;

  Map<String, String> get params {
    return <String, String>{
      'grant_type': grantType,
      'code': code,
      'client_id': clientId,
      'redirect_uri': redirectUri,
      'client_assertion_type': clientAssertionType,
      'client_assertion': clientAssertion,
    };
  }
}
