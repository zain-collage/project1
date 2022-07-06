import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:project1/layout/home_layout/components/part_top_home_sliver_app_bar.dart';
import 'package:project1/layout/home_layout/components/tab_bar_sliver_app_bar_home.dart';
import 'package:project1/shared/styes/colors.dart';
import 'package:project1/module/explore_screen.dart';
import 'package:project1/module/home_post/home_post_screen.dart';

import '../../tes/s/mydrawer.dart';

class HomeLayout extends StatelessWidget {
  static String routeName = "/HomeLayout";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                PartTopHomeSliverAppBar(),
                TabBarSliverAppBarHome(),
              ];
            },
            body: TabBarView(
              children: [
                HomePostScreen(),
                ExploreScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
