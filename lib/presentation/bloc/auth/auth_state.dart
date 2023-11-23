part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unauthenticated() = UnAuthenticated;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated(user_entity.User user) = Authenticated;
  const factory AuthState.error(String error) = _Error;
}
