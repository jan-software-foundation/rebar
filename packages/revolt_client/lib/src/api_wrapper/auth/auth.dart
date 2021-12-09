import 'dart:convert';
import 'package:revolt_client/src/exceptions/auth/login_exceptions.dart';
import 'package:revolt_client/src/models/models.dart';

Future<SessionDetails> login(ClientConfig clientConfig,
    {required String email,
    String? password,
    String? challenge,
    String? friendlyName,
    String? captcha}) async {
  final body = json.encode({
    "email": email,
    "password": password,
    "challenge": challenge,
    "friendly_name": friendlyName,
    "captcha": captcha
  }..removeWhere((key, value) => value == null));

  final response = await clientConfig.httpClient
      .post(Uri.parse('${clientConfig.apiUrl}auth/session/login'), body: body);

  if (response.statusCode == 200) {
    return SessionDetails.fromJson(jsonDecode(response.body));
  } else if (response.statusCode == 401) {
    throw InvalidCredentialsException();
  } else {
    throw LoginException();
  }
}
