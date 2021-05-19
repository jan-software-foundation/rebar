export 'login_form.dart';

import 'package:dartvolt/dartvolt.dart';
import 'package:flutter/material.dart';
import 'package:rebar/src/revolt_client.dart';

class LoginForm extends StatefulWidget {
    LoginForm({Key? key}) : super(key: key);

    @override
    _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
    final uidController = TextEditingController();
    final sidController = TextEditingController();
    final secretController = TextEditingController();

    @override
    void dispose() {
        uidController.dispose();
        sidController.dispose();
        secretController.dispose();
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return Center(
            child: Column(
                children: <Widget>[
                    TextFormField(
                        controller: uidController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'User ID'
                        ),
                    ),
                    TextFormField(
                        controller: sidController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Session ID'
                        ),
                    ),
                    TextFormField(
                        controller: secretController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Session Secret',
                        ),
                    ),
                    const Padding(
                        padding: EdgeInsets.all(16.0),
                    ),
                    TextButton(
                        child: const Icon(Icons.login, size: 32),
                        onPressed: () async {
                            await createClient(
                                SessionInfo(
                                    clientId: uidController.text,
                                    sessionId: sidController.text,
                                    sessionToken: secretController.text
                                )
                            ).catchError((error) {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                        return AlertDialog(
                                            content: Text(
                                                'Authentication failed: $error'
                                            ),
                                        );
                                    }
                                );
                            });
                            Navigator.of(context).pop();
                            // how tf do i reload the home widget
                        },
                    ),
                ],
            )
        );
    }
}