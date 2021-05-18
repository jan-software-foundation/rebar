import 'package:flutter/material.dart';

import 'src/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rebar',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        textTheme: const TextTheme(headline4: TextStyle(color: Color(0xffffffff))),
      ),
      home: const HomePage(title: 'Rebarrrr'),
    );
  }
}


