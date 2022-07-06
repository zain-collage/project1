import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:project1/shared/components/components.dart';
import 'package:project1/shared/components/size_config.dart';
import 'package:project1/shared/styes/colors.dart';
import 'package:project1/layout/my_profile_layout/components/custemImageProfile.dart';

class PartTopProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: const Offset(0, 5),
            blurRadius: 30,
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(
                    top: getProportionateScreenHeight(30)),
                child: ClipPath(
                  clipper: CustomClipperImageProfile(),
                  child: Stack(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(300),
                        width: getProportionateScreenWidth(140),
                        child: InkWell(
                          onTap: () {
                            // showModalBottomSheet(
                            //   context: context,
                            //   builder: (context) {
                            //     return Column(
                            //       mainAxisSize: MainAxisSize.min,
                            //       children: <Widget>[
                            //         ListTile(
                            //           leading: Icon(
                            //             FluentIcons.image_48_filled,
                            //             color: defaultColor,
                            //             size: 30,
                            //           ),
                            //           title: Text(
                            //             'Show Photo',
                            //             style: TextStyle(
                            //               fontSize: 16,
                            //               fontWeight: FontWeight.w500,
                            //             ),
                            //           ),
                            //           onTap: () {
                            //             Navigator.pop(context);
                            //           },
                            //         ),
                            //         ListTile(
                            //           leading: Icon(
                            //             FluentIcons.shape_intersect_24_filled,
                            //             color: defaultColor,
                            //             size: 30,
                            //           ),
                            //           title: Text(
                            //             'Show story',
                            //             style: TextStyle(
                            //               fontSize: 16,
                            //               fontWeight: FontWeight.w500,
                            //             ),
                            //           ),
                            //           onTap: () {
                            //             Navigator.pop(context);
                            //           },
                            //         ),
                            //       ],
                            //     );
                            //   },
                            // );
                          },
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/images/interests/graphic_design.jpg',
                                fit: BoxFit.cover,
                                // width: size.width * 0.345,
                                height: getProportionateScreenHeight(300),
                              ),
                              CustomPaint(
                                size: Size(SizeConfig.screenWidth,
                                    getProportionateScreenHeight(356)),
                                painter: CustomPainterImageProfile(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mina farhat",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(10)),
                  Text(
                    "welcom to my profile and you have the  right amount of time to ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black87,
                      fontStyle: FontStyle.italic,
                      // fontSize: 14,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(25)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Column(
                          children: [
                            Text(
                              "846",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Post",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        child: Column(
                          children: [
                            Text(
                              "846",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        child: Column(
                          children: [
                            Text(
                              "568",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      defaultButton(
                        function: () {},
                        text: 'Edit ',
                        radius: 20,
                        width: getProportionateScreenHeight(150),
                        isBorderColor: false,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        boxShadow: [
                          BoxShadow(
                            color: defaultColor,
                            offset: Offset(0, 4),
                            blurRadius: 5.0,
                          )
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.0, 1],
                          colors: [
                            defaultColor,
                            defaultSecondColor,
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: defaultColor,
                                offset: Offset(0, 4),
                                blurRadius: 5.0,
                              )
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                              colors: [
                                defaultColor,
                                defaultSecondColor,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 15,
                              ),
                              child: Icon(
                                FluentIcons.chat_48_filled,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: getProportionateScreenHeight(50)),
                  // Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
