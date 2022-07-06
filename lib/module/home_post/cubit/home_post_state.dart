part of 'home_post_cubit.dart';

@immutable
abstract class HomePostStates {}

class HomePostInitialState extends HomePostStates {}

// !Get image picker for Story
class StoryImagePickedSuccessStates extends HomePostStates {}

class StoryImagePickedErrorStates extends HomePostStates {}

///!
class GetHomePostsLoadingStates extends HomePostStates {}

class GetHomePostsSuccessStates extends HomePostStates {}

class GetHomePostsErrorStates extends HomePostStates {}
