part of 'app_bloc.dart';

enum AppStatus { authenticated, unauthenticated }

@immutable
class AppState extends Equatable {
  final AppStatus appStatus;

  const AppState({this.appStatus = AppStatus.unauthenticated});

  AppState copyWith({AppStatus? appStatus}) =>
      AppState(appStatus: appStatus ?? this.appStatus);

  @override
  List<Object?> get props => [appStatus];
}
