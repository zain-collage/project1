import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project1/layout/my_profile_layout/components/part_top_profile_sliver_app_bar.dart';
import 'package:project1/layout/my_profile_layout/components/tab_bar_sliver_app_bar.dart';

import 'package:project1/module/profile_post/profile_post_sceen.dart';
import 'package:project1/module/profile_prometed/profile_prometed_screen.dart';

import 'package:project1/shared/components/size_config.dart';
import 'package:project1/tes/ne/sittings.dart';
import 'package:project1/tes/s/mydrawer.dart';

class MyProfileLayout extends StatelessWidget {
  static String routeName = "/profile_layout";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Sittings(),
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                PartTopProfileSliverAppBar(),
                TabBarSliverAppBar(),
              ];
            },
            body: TabBarView(
              children: [
                PeofilePostScreen(),
                ProfilePrometedScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class SliverPersistentHeaderDelegateImpl
//     extends SliverPersistentHeaderDelegate {
//   final TabBar? tabBar;
//   final TabController? tabController;
//   final Color? color;
//   SliverPersistentHeaderDelegateImpl({
//     Color color = Colors.transparent,
//     @required this.tabBar,
//     @required this.tabController,
//   }) : this.color = color;
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return // tabBar!;
//         Container(
//       margin: EdgeInsets.symmetric(horizontal: 50),
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: tabBar,
//     );
//   }
//   @override
//   double get maxExtent => tabBar!.preferredSize.height;
//   @override
//   double get minExtent => tabBar!.preferredSize.height;
//   @override
//   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
//     return false;
//   }
// }
