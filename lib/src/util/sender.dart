import 'dart:io';

import 'package:meta/meta.dart';
import 'package:nhs_login/src/nhs_client.dart';
import 'package:rxdart/rxdart.dart';

class Sender {
  Sender({
    @required this.authenticationUri,
    @required this.urlLauncher,
  });

  static Observable<Map<String, String>> _server;
  static HttpServer _httpServer;

  final Uri authenticationUri;
  final UrlLauncher urlLauncher;

  Observable<Map<String, String>> send() {
    if (_server != null) {
      urlLauncher(authenticationUri.toString());
      return _server;
    }

    return _server ??= Observable.fromFuture(HttpServer.bind(InternetAddress.loopbackIPv4, 3000))
        .doOnData((HttpServer _) => urlLauncher(authenticationUri.toString()))
        .doOnData((it) => _httpServer = it)
        .flatMap((it) => it)
        .map((HttpRequest request) {
          request.response
            ..statusCode = 200
            ..headers.set('content-type', 'text/html')
            ..writeln('<html lang="en">'
                '<h1>You can now close this window</h1>'
                '<script>window.close();</script>'
                '</html>')
            ..close();

          return request.requestedUri.queryParameters;
        })
        .share()
        .doOnCancel(() {
          print('doOnCancel');
          _httpServer.close(force: true);
          _httpServer = null;
          _server = null;
        })
        .doOnDone(() {
          print('doOnDone');
          _httpServer.close(force: true);
          _httpServer = null;
          _server = null;
        })
        .doOnError((_, __) {
          print('doOnError');
          _httpServer.close(force: true);
          _httpServer = null;
          _server = null;
        });
  }
}
