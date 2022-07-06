import 'package:flutter/material.dart';
import 'package:project1/layout/my_profile_layout/my_profile_layout.dart';
import 'package:project1/shared/components/size_config.dart';
import 'package:project1/shared/components/widget/part_top_profile.dart';
import 'package:project1/shared/styes/colors.dart';
import 'package:project1/shared/styes/icon_broken.dart';
import 'package:project1/tes/ne/sittings.dart';

class PartTopProfileSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SliverAppBar(
      elevation: 0,
      expandedHeight: getProportionateScreenHeight(330),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Sittings(),
              ),
            );
          },
          icon: Icon(
            IconBroken.Setting,
            color: defaultColor,
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: PartTopProfile(),
      ),
    );
  }
}
