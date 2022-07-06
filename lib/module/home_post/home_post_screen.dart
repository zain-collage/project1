import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/module/home_post/components/buid_my_stoey.dart';
import 'package:project1/module/home_post/components/buid_post_home_item.dart';
import 'package:project1/module/home_post/components/buid_stoey_item.dart';
import 'package:project1/module/home_post/cubit/home_post_cubit.dart';
import 'package:project1/module/show_post/show_post_screen.dart';
import 'package:project1/shared/components/size_config.dart';
import 'package:project1/shared/styes/colors.dart';

class HomePostScreen extends StatelessWidget {
  static String routeName = "/HomePost";

  const HomePostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 16),
                child: SizedBox(
                  height: 100,
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      if (index == 0) return buidMyStoey();
                      return buidStoeyItem(onPress: () {});
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                    itemCount: 15,
                  ),
                ),
              ),
              Divider(
                color: Color(0xff9a9ea4),
                thickness: 1,
              ),
              BlocConsumer<HomePostCubit, HomePostStates>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  var cubit = HomePostCubit.get(context);
                  print(cubit.posts!.length);
                  // print(cubit.posts![0]);
                  return cubit.posts!.length == 0
                      ? CircularProgressIndicator()
                      : ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => buidPostHomeItem(
                            context: context,
                            post: cubit.posts![index],
                            onPress: () {
                              Navigator.pushNamed(
                                context,
                                ShowPostScreen.routeName,
                              );
                            },
                          ),
                          separatorBuilder: (context, index) => SizedBox(
                            height: 20,
                          ),
                          itemCount: cubit.posts!.length,
                        );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
