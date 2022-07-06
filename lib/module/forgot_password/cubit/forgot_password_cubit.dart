import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordStates> {
  ForgotPasswordCubit() : super(ForgotPasswordInitialState());

  static ForgotPasswordCubit get(context) => BlocProvider.of(context);

  IconData suffix = Icons.visibility_outlined;

  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ChangePasswordVisibilityState());
  }

  IconData suffixConfirm = Icons.visibility_outlined;

  bool isPasswordConfirm = true;

  void changeConfirmPasswordVisibility() {
    isPasswordConfirm = !isPasswordConfirm;
    suffixConfirm = isPasswordConfirm
        ? Icons.visibility_outlined
        : Icons.visibility_off_outlined;
    emit(ChangeConfirmPasswordVisibilityState());
  }
}
