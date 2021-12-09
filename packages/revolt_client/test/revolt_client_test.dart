import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:revolt_client/revolt_client.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'revolt_client_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group("auth", () {
    test("returns Session details if the login completes succesfully",
        () async {
      final MockClient mockClient = MockClient();
      final RevoltClient revoltClient = RevoltClient(httpClient: mockClient);
      final requestBody = {
        "email": "myemail.example.cm",
        "password": "securePassword@123",
      };
      when(mockClient.post(
        Uri.parse('${revoltClient.clientConfig.apiUrl}auth/session/login'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          """{"result":"Success","_id":"01FNEVYZQGP2KT62SKVVF7WHW8","user_id":"01FN6NZ4PJRE55128RHC7FTVSC","token":"YOgo7yqjO8zGKs5l-iZimvrLib25Dd7WNxQetuMbXTN9lhp1eA609T_C5Q_butM6","name":"Unknown"}""",
          200));

      await revoltClient.login(
          email: "myemail.example.cm", password: requestBody["password"]!);
      expectLater(revoltClient.authEvents, emits(AuthStatus.authsucess));
    });
  });
}
