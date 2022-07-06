part of 'forgot_password_cubit.dart';

@immutable
abstract class ForgotPasswordStates {}

class ForgotPasswordInitialState extends ForgotPasswordStates {}

class ChangePasswordVisibilityState extends ForgotPasswordStates {}

class ChangeConfirmPasswordVisibilityState extends ForgotPasswordStates {}
