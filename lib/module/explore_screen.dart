import 'package:flutter/material.dart';
import 'package:project1/module/show_post/show_post_screen.dart';
import 'package:project1/shared/components/size_config.dart';
import 'package:project1/shared/styes/colors.dart';
// export 'package:flutter/rendering.dart' show
//   SliverGridDelegate,
//   SliverGridDelegateWithFixedCrossAxisCount,
//   SliverGridDelegateWithMaxCrossAxisExtent;

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // backgroundColor: Colors.black,
      body: GridView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 15,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index) => buidPostExplorItem(
          onPress: () {
            Navigator.pushNamed(context, ShowPostScreen.routeName);
          },
        ),
      ),
    );
  }
}

Widget buidPostExplorItem({
  required void Function()? onPress,
}) =>
    InkWell(
      onTap: onPress,
      child: Container(
        width: getProportionateScreenWidth(190),
        height: getProportionateScreenWidth(170),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/interests/art.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
