import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:project1/models/register/register_model.dart';
import 'package:project1/shared/network/remote/dio_helper.dart';
import 'package:project1/shared/network/remote/end_points.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  IconData suffix = Icons.visibility_outlined;

  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ChangePasswordVisibilityState());
  }

  UserModel? user;
  void userLogin({
    required var email,
    required var password,
  }) {
    emit(LoginLoadingState());
    DioHelper.postData(
      url: LOGIN,
      data: {
        'email': email,
        'password': password,
      },
    ).then((value) {
      user = UserModel.fromJson(value.data);
      emit(LoginSuccessState(user!));
    }).catchError((Error) {
      print(Error);
      emit(LoginErrorState(Error.toString()));
    });
  }
}
