import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutStates> {
  HomeLayoutCubit() : super(HomeLayoutInitialState());

  static HomeLayoutCubit get(context) => BlocProvider.of(context);

  bool theme = true;
  IconData iconTheme = Icons.light_mode_outlined;
  void changeTheme() {
    if (theme) {
      iconTheme = Icons.dark_mode_outlined;
    } else {
      iconTheme = Icons.light_mode_outlined;
    }
    theme = !theme;

    emit(ChangeThemeStates());
  }
}
