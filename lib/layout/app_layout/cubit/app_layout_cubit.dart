import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:project1/layout/home_layout/home_layout.dart';
import 'package:project1/layout/my_profile_layout/my_profile_layout.dart';
import 'package:project1/module/add_post.dart';
import 'package:project1/tes/ne/main_screen.dart';

part 'app_layout_state.dart';

class AppLayoutCubit extends Cubit<AppLayoutStates> {
  AppLayoutCubit() : super(AppLayoutInitialState());

  static AppLayoutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  List<PreferredSizeWidget?> appBar = [
    null,
    null,
    null,
    null,
    null,
  ];
  List<Widget> screens = [
    HomeLayout(),
    // MainScreen1(),
    Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text('2'),
      ),
    ),
    Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text('4'),
      ),
    ),
    MyProfileLayout(),
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(ChangeBottomNavStates());
  }
}
