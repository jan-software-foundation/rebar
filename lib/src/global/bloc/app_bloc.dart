import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:revolt_client/revolt_client.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final RevoltClient revoltClient;
  late StreamSubscription<AuthStatus> _authenticationStatusSubscription;
  AppBloc({required this.revoltClient}) : super(const AppState()) {
    on<AuthenticationStatusChanged>(_onAuthChanged);
    _authenticationStatusSubscription = revoltClient.authEvents
        .listen((status) => add(AuthenticationStatusChanged(status)));
  }

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }

  void _onAuthChanged(
    AuthenticationStatusChanged event,
    Emitter<AppState> emit,
  ) {
    if (event.authStatus == AuthStatus.authsucess) {
      emit(state.copyWith(appStatus: AppStatus.authenticated));
    } else if (event.authStatus == AuthStatus.loggedout ||
        event.authStatus == AuthStatus.unknown) {
      emit(state.copyWith(appStatus: AppStatus.unauthenticated));
    }
  }
}
