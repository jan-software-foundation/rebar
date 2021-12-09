import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("Email"),
        TextField(),
        Text("PASSWORD"),
        TextField()
      ],
    );
  }
}
