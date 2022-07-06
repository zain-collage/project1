import 'package:flutter/material.dart';
import 'package:project1/shared/styes/colors.dart';

class TabBarSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: 15,
      pinned: true,
      bottom: TabBar(
        indicatorColor: defaultColor,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: Colors.black,
        unselectedLabelStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: Color(0xff9f9f9f),
        tabs: [
          Tab(text: 'Post'),
          Tab(text: 'Prometing'),
        ],
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: const Radius.circular(30),
            bottomRight: const Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: const Offset(0, 5),
              blurRadius: 30,
              spreadRadius: 0,
            )
          ],
        ),
      ),
    );
  }
}
