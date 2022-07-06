import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:project1/models/home_post/home_post_model.dart';
import 'package:project1/shared/network/remote/dio_helper.dart';
import 'package:project1/shared/network/remote/end_points.dart';

part 'home_post_state.dart';

class HomePostCubit extends Cubit<HomePostStates> {
  HomePostCubit() : super(HomePostInitialState());
  static HomePostCubit get(context) => BlocProvider.of(context);
  final ImagePicker picker = ImagePicker();

//! get Story Image from gallery
  File? profileImage;
  Future<void> getStoryImage() async {
    final XFile? pickedFile =
        await picker.pickVideo(source: ImageSource.camera);
    if (pickedFile != null) {
      profileImage = File(pickedFile.path);
      emit(StoryImagePickedSuccessStates());
    } else {
      emit(StoryImagePickedErrorStates());
    }
  }

  //!

  List<HomePostModel>? posts = [
    HomePostModel(
      userId: 2,
      content:
          'welcom token  token token token token token token token token token tokenldsl',
      createdAt: '2014-07-07T00:00:00',
      interestId: [1, 4],
      isPrometed: "false",
      photo: 'assets/images/interests/art.jpg',
      sId: 'ss',
    ),
    HomePostModel(
      userId: 1,
      content: 'sddsosdods iosdvoijdsisojo',
      createdAt: '2014-07-07T00:00:00',
      interestId: [1, 2],
      isPrometed: "true",
      photo: 'assets/images/interests/art.jpg',
      sId: 'ss',
    ),
  ];
  void getHomePost() {
    emit(GetHomePostsLoadingStates());
    DioHelper.getData(
      url: HomePost,
      token: 'Bearer 25|zKtV1BNn9T284aH4bmtgzcCbaL7KA3qwLpHKt0NR',
    ).then((value) {
      // posts = [];
      value.data[1]['original'].forEach((element) {
        posts!.add(HomePostModel.fromJson(element));
      });

      emit(GetHomePostsSuccessStates());
    }).catchError((Error) {
      print(Error);
      emit(GetHomePostsErrorStates());
    });
  }
}
