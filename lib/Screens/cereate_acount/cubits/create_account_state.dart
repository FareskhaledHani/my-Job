part of 'create_account_cubit.dart';

@immutable
abstract class CreateAccountState {}

class CreateAccountInitial extends CreateAccountState {}

class AuthLoading extends CreateAccountState {}

class AuthAuthenticated extends CreateAccountState {}

class UnAuthAuthenticated extends CreateAccountState {}

class AuthError extends CreateAccountState {
  final String message;

  AuthError(this.message);
}