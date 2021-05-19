export 'login_page.dart';

import 'package:flutter/material.dart';
import 'package:rebar/src/widgets/login_page/login_form.dart';

class LoginPage extends StatefulWidget {
    LoginPage({Key? key}) : super(key: key);

    @override
    _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Sign in')
            ),
            body: LoginForm()
        );
    }
}