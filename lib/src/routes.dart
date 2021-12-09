import 'package:flutter/material.dart';
import 'package:rebar/src/pages/home_page/home.dart';
import 'package:rebar/src/pages/login_page/login_page.dart';
import 'pages/splash/splash.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const SplashPage(),
  '/home': (context) => const HomePage(),
  '/login': (context) => const LoginPage(),
};
