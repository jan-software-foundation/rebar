import 'package:flutter/material.dart';
import 'package:rebar/src/app.dart';
import 'package:revolt_client/revolt_client.dart';

void main() {
  final revoltClient = RevoltClient();
  runApp(MyApp(revoltClient: revoltClient));
}
