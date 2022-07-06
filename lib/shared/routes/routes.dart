import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:project1/layout/app_layout/app_layout.dart';
import 'package:project1/layout/my_profile_layout/my_profile_layout.dart';
import 'package:project1/module/forgot_password/confirm_screen.dart';
import 'package:project1/module/forgot_password/new_password.dart';
import 'package:project1/module/home_post/home_post_screen.dart';
import 'package:project1/module/welcom_screen.dart';
import 'package:project1/module/intersts/interests_screen.dart';
import 'package:project1/module/login/login_screen.dart';
import 'package:project1/module/register/register_screen.dart.dart';
import 'package:project1/module/forgot_password/reset_password_screen.dart';
import 'package:project1/module/show_post/show_post_screen.dart';
import 'package:project1/layout/home_layout/home_layout.dart';

class ScreenArguments {
  final String message;

  ScreenArguments(this.message);
}

final Map<String, WidgetBuilder> routes = {
  WelcomScreen.routeName: (context) => WelcomScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  InterestsScreen.routeName: (context) => InterestsScreen(),
  ResetPasswordScreen.routeName: (context) => ResetPasswordScreen(),
  ConfirmScreen.routeName: (context) => ConfirmScreen(),
  NewPasswordScreen.routeName: (context) => NewPasswordScreen(),
  HomeLayout.routeName: (context) => HomeLayout(),
  ShowPostScreen.routeName: (context) => ShowPostScreen(),
  MyProfileLayout.routeName: (context) => MyProfileLayout(),
  AppLayout.routeName: (context) => AppLayout(),
  HomePostScreen.routeName: (context) => HomePostScreen(),
};
