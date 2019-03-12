import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:nhs_login/src/models/nhs_login_result.dart';
import 'package:nhs_login/src/models/userinfo/nhs_userinfo.dart';
import 'package:nhs_login/src/nhs_authentication.dart';
import 'package:nhs_login/src/util/sender.dart';
import 'package:user_preferences/user_preferences.dart';

/// Signature that should open the url into an user agent so that the End User
/// can interact with the NHS Servers
typedef UrlLauncher = void Function(String url);

class NhsClient {
  const NhsClient({
    @required this.urlLauncher,
    @required this.host,
    @required this.redirectUri,
    @required this.clientId,
  });

  static void init([String baseDir]) async {
    try {
      UserPreferences.instance;
      _initialized = true;
    } catch (e) {
      baseDir ??= '${Directory.current.path}/build';
      await UserPreferences.init(Directory(baseDir)..createSync(recursive: true)).then((_) => _initialized = true);
    }
  }

  static bool _initialized = false;

  /// Function that should open the url into an user agent so that the End User
  /// can interact with the NHS Server
  final UrlLauncher urlLauncher;

  /// The host of the NHS Server
  final String host;

  /// OAuth 2.0 Client Identifier
  ///
  /// This is a static identifier previously provided by the NHS login Partner
  /// Onboarding team
  final String clientId;

  /// Redirection URI to which the response will be sent.
  ///
  /// This URI MUST exactly match one of the Redirection URI values for the
  /// Client pre-registered at the OpenID Provider. When using this flow,
  /// the Redirection URI MUST NOT use the http scheme. The Redirection URI MAY
  /// use an alternate scheme, such as one that is intended to identify a
  /// callback into a native application
  final String redirectUri;

  Future<NhsLoginResult> login(NhsAuthentication authentication) async {
    if (!_initialized) await init();
    final Completer<NhsLoginResult> completer = Completer();
    StreamSubscription<Map<String, String>> sub;
    sub = Sender(authenticationUri: authentication.uri, urlLauncher: urlLauncher)
        .send()
        .where((it) => it['state'] == authentication.state)
        .listen((response) {
      sub.cancel();
      final NhsLoginResult nhsLoginResult = NhsLoginResult.fromJson({
        'authentication': Uri.splitQueryString(response['authentication']),
        'token': response['token'].isEmpty
            ? null
            : extractIdToken(Map<String, dynamic>.of(Uri.splitQueryString(response['token']))),
        'userinfo': response['userinfo'].isEmpty ? null : Uri.splitQueryString(response['userinfo']),
      });

      UserPreferences.instance.edit()
        ..putString('access_token', nhsLoginResult.token.accessToken)
        ..apply();

      completer.complete(nhsLoginResult.rebuild((b) {
        b.otherParams = MapBuilder<String, String>(Map.of(response) //
          ..remove('authentication')
          ..remove('token')
          ..remove('userinfo')
          ..remove('state'));
      }));
    });

    return completer.future;
  }

  Future<NhsUserinfo> getUser([String accessToken]) async {
    if (!_initialized) await init();
    accessToken ??= UserPreferences.instance.getString('access_token');

    if (accessToken == null) {
      throw StateError('The user is not logged in.');
    }

    final Response response =
        await Client().get('https://$host/userinfo', headers: <String, String>{'Authorization': 'Bearer $accessToken'});

    if (response.statusCode == 200) {
      return NhsUserinfo.fromJson(jsonDecode(response.body));
    } else {
      return Future.error(StateError('Coundn\'t get a the user. Got error: (${response.statusCode}): '
          '${response.body}'));
    }
  }

  static Map<String, dynamic> extractIdToken(Map<String, dynamic> tokenResponse) {
    final String idToken = tokenResponse['id_token'];
    tokenResponse['id_token'] = _parseJwt(idToken);
    return tokenResponse;
  }
}

Map<String, dynamic> _parseJwt(String token) {
  final parts = token.split('.');
  if (parts.length != 3) {
    throw Exception('invalid token');
  }

  final dynamic header = jsonDecode(_decodeBase64(parts[0]));
  dynamic payload = jsonDecode(_decodeBase64(parts[1]));
  final dynamic signature = parts[2];

  payload['aud'] = payload['aud'] is List ? payload['aud'] : <String>[payload['aud']];

  return <String, dynamic>{
    'header': header,
    'payload': payload,
    'signature': signature,
  };
}

String _decodeBase64(String str) {
  String output = str.replaceAll('-', '+').replaceAll('_', '/');

  switch (output.length % 4) {
    case 0:
      break;
    case 2:
      output += '==';
      break;
    case 3:
      output += '=';
      break;
    default:
      throw Exception('Illegal base64url string!"');
  }

  return utf8.decode(base64Url.decode(output));
}
