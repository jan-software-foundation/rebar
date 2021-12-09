part of 'app_bloc.dart';

@immutable
abstract class AppEvent {}

class AuthenticationStatusChanged extends AppEvent {
  final AuthStatus authStatus;
  AuthenticationStatusChanged(this.authStatus);
}
