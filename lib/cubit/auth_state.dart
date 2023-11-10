part of 'auth_cubit.dart';

@override
sealed class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final UserModel user;

  AuthSuccess(this.user);

  List<Object> get props => [user];
}

class AuthFailed extends AuthState {
  final String error;
  AuthFailed(this.error);

  List<Object> get props => [error];
}
