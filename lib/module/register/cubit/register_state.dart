part of 'register_cubit.dart';

@immutable
abstract class RegisterStates {}

class RegisterInitialState extends RegisterStates {}

class RegisterLoadingState extends RegisterStates {}

class RegisterSuccessState extends RegisterStates {
  final UserModel user;

  RegisterSuccessState(this.user);
}

class RegisterErrorState extends RegisterStates {
  final String error;

  RegisterErrorState(this.error);
}

class ChangePasswordVisibilityState extends RegisterStates {}

class ChangeConfirmPasswordVisibilityState extends RegisterStates {}
