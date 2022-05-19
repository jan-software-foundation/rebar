import 'package:revolt_client/src/api_wrapper/api_wrapper.dart' as api;
import 'package:revolt_client/src/exceptions/auth/login_exceptions.dart';
import 'package:revolt_client/src/models/client_config.dart';
import 'package:rxdart/subjects.dart';
import 'package:revolt_client/src/models/models.dart';

class AuthRepo {
  BehaviorSubject<AuthStatus> authEvents = BehaviorSubject<AuthStatus>()
    ..add(AuthStatus.unknown);
  SessionDetails? session;

  login(ClientConfig clientConfig,
      {required String email,
      String? password,
      String? challenge,
      String? friendlyName,
      String? captcha}) async {
    authEvents.add(AuthStatus.submitted);
    try {
      session = await api.login(clientConfig,
          email: email,
          password: password,
          challenge: challenge,
          friendlyName: friendlyName,
          captcha: captcha);
      authEvents.add(AuthStatus.authsucess);
    } on LoginException {
      authEvents.add(AuthStatus.authFailed);
    }
  }

  signUp(ClientConfig clientConfig,
      {required String email,
      required String password,
      String? invite,
      String? captcha}) async {
    await api.signUp(
      clientConfig,
      email: email,
      password: password,
      invite: invite,
      captcha: captcha,
    );
  }
}
