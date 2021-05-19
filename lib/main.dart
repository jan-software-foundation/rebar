import 'package:flutter/material.dart';

import 'package:dartvolt/dartvolt.dart' as dartvolt;
import 'package:rebar/src/widgets/home.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Rebar',
            home: HomeWidget(title: 'Rebar', key: UniqueKey()),
            theme: ThemeData(
                primaryColor: Colors.deepOrange
            )
        );
    }
}