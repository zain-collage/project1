import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:project1/models/interstes/interests_model.dart';

part 'intersts_state.dart';

class InterstsCubit extends Cubit<InterstsStates> {
  InterstsCubit() : super(InterstsInitialState());

  static InterstsCubit get(context) => BlocProvider.of(context);

  void changeInterstsSelected(String interestsName) {
    if (selected[interestsName] == true) {
      selected[interestsName] = false;
      emit(ChangeInterstsSelectedState());
    } else {
      selected[interestsName] = true;
      emit(ChangeInterstsSelectedState());
    }
  }
}
