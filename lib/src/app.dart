import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rebar/src/global/colors.dart';
import 'package:rebar/src/routes.dart';
import 'package:revolt_client/revolt_client.dart';
import 'global/bloc/app_bloc.dart';

class MyApp extends StatelessWidget {
  final RevoltClient revoltClient;
  const MyApp({
    required this.revoltClient,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
        value: revoltClient,
        child: BlocProvider(
          create: (context) => AppBloc(revoltClient: revoltClient),
          child: const AppView(),
        ));
  }
}

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  ThemeData _buildTheme() {
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      colorScheme: base.colorScheme.copyWith(
        primary: primary,
        secondary: secondary,
      ),
      // textTheme: _buildTextTheme(base.textTheme),
      scaffoldBackgroundColor: surface,
    );
  }

  // TextTheme _buildTextTheme(TextTheme base) {
  //   return base
  //       .copyWith(
  //         headline5: base.headline5!.copyWith(
  //           fontWeight: FontWeight.w500,
  //         ),
  //       )
  //       .apply(
  //         fontFamily: 'Rubik',
  //         displayColor: kShrineBrown900,
  //         bodyColor: kShrineBrown900,
  //       );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      routes: routes,
      initialRoute: "/",
      theme: _buildTheme(),
      builder: (context, child) {
        return BlocListener<AppBloc, AppState>(
          listener: (context, state) {
            switch (state.appStatus) {
              case AppStatus.authenticated:
                _navigator.pushNamedAndRemoveUntil('/home', (route) => false);
                break;
              case AppStatus.unauthenticated:
                _navigator.pushNamedAndRemoveUntil('/login', (route) => false);
                break;
            }
          },
          child: child,
        );
      },
    );
  }
}
