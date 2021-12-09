import 'package:revolt_client/src/revolt_client_base.dart';

void main() {
  final revoltClient = RevoltClient();
  revoltClient.authEvents.listen((value) {
    print(value);
  });
  revoltClient.login(
      email: "196telecom@example.com", password: "04872273244sS");
}
