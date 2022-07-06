import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:project1/models/register/register_model.dart';
import 'package:project1/module/login/cubit/login_cubit.dart';
import 'package:project1/shared/network/remote/dio_helper.dart';
import 'package:project1/shared/network/remote/end_points.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);

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

  UserModel? user;
  void userRegister({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
    required int gender,
    required String date,
  }) {
    emit(RegisterLoadingState());
    DioHelper.postData(url: REGISTER, data: {
      "name": name,
      "email": email,
      "password": password,
      "password_confirmation": confirmPassword,
      "gender": gender,
      "birthday": date
    }).then((value) {
      user = UserModel.fromJson(value.data);
      emit(RegisterSuccessState(user!));
    }).catchError((error) {
      emit(RegisterErrorState(error.toString()));
    });
  }
}
