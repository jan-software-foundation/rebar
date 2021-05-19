export 'home.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rebar/src/revolt_client.dart';
import 'package:rebar/src/widgets/login_page/login_page.dart';

class HomeWidget extends StatefulWidget {
    HomeWidget({Key? key, required this.title}) : super(key: key);

    final String title;

    @override
    _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
    @override
    Widget build(BuildContext context) {
        if (client == null) {
            return Scaffold(
                appBar: AppBar(
                    title: Text(widget.title),
                    actions: [
                        TextButton(
                            onPressed: _openLoginDialog,
                            child: const Icon(Icons.login)
                        )
                    ],
                ),
                body: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            const Text(
                                'Not logged in'
                            )
                        ],
                    ),
                ),
            );
        } else {
            return Scaffold(
                appBar: AppBar(
                    title: Text(widget.title),
                    actions: [
                        TextButton(
                            onPressed: _logout,
                            child: const Icon(Icons.logout)
                        )
                    ],
                ),
                body: Center(
                    child: Text('Logged in as ${client?.sessionInfo?.clientId}'),
                ),
            );
        }
    }

    void _openLoginDialog() {
        Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) {
                    return LoginPage();
                },
                fullscreenDialog: true
            )
        );
    }
}

void _logout() {
    
}