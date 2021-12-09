import 'package:revolt_client/src/auth_repo/auth_repo.dart';
import 'package:rxdart/rxdart.dart';
import 'models/models.dart';

class RevoltClient {
  final ClientConfig clientConfig;
  AuthRepo authRepo;

  RevoltClient({httpClient, clientConfig})
      : clientConfig = clientConfig ?? ClientConfig(httpClient: httpClient),
        authRepo = AuthRepo();

  login(
          {required String email,
          String? password,
          String? challenge,
          String? friendlyName,
          String? captcha}) async =>
      authRepo.login(clientConfig,
          email: email,
          password: password,
          challenge: challenge,
          friendlyName: friendlyName,
          captcha: captcha);

  BehaviorSubject<AuthStatus> get authEvents => authRepo.authEvents;
}
