import 'package:flutter/material.dart';
import 'package:project1/layout/my_profile_layout/my_profile_layout.dart';
import 'package:project1/module/show_post/show_post_screen.dart';
import 'package:project1/shared/components/size_config.dart';
import 'package:project1/shared/components/widget/buid_post_profile_item.dart';

class PeofilePostScreen extends StatelessWidget {
  const PeofilePostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 15,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: getProportionateScreenWidth(28),
            mainAxisSpacing: getProportionateScreenHeight(8),
          ),
          itemBuilder: (context, index) => buidPostProfileItem(
            onPress: () {
              Navigator.pushNamed(context, ShowPostScreen.routeName);
            },
          ),
        ),
      ),
    );
  }
}
