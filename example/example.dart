import 'dart:io';

import 'package:nhs_login/nhs_login.dart';

void main() async {
  final NhsClient nhsLogin = NhsClient(
    urlLauncher: _runBrowser,
    host: 'auth.sandpit.signin.nhs.uk',
    redirectUri: '<redirectUri>',
    clientId: '<clientId>',
  );

  final NhsLoginResult result = await nhsLogin.login(
    NhsAuthentication.fromValues(
      scopes: [
        NhsScope.openId,
        NhsScope.profile,
      ],
      prompt: NhsPrompt.none,
      vectorOfTrust: P0_Cp_Cd,
      host: nhsLogin.host,
      clientId: nhsLogin.clientId,
      redirectUri: nhsLogin.redirectUri,
    ),
  );

  if (result.authentication.isError) {
    stderr.writeln(result.authentication.error);
    exit(1);
    return;
  }

  print(result);
}

void _runBrowser(String url) {
  switch (Platform.operatingSystem) {
    case "linux":
      Process.run("x-www-browser", [url]);
      break;
    case "macos":
      Process.run("open", [url]);
      break;
    case "windows":
      Process.run("explorer", [url]);
      break;
    default:
      throw UnsupportedError("Unsupported platform: ${Platform.operatingSystem}");
      break;
  }
}
