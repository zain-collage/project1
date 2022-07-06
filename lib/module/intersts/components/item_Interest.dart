import 'package:flutter/material.dart';
import 'package:project1/models/interstes/interests_model.dart';
import 'package:project1/shared/styes/colors.dart';

Widget buildInterestItem({
  int? index,
  String? interestsName,
  String? interestsImage,
  void Function()? ontap,
  // InterstsCubit? cubit,
}) =>
    InkWell(
      onTap: ontap, // () => cubit!.changeInterstsSelected(index!),
      // onTapCancel: () {
      //   print('object2');
      // },
      child: Stack(
        fit: StackFit.passthrough,
        alignment: AlignmentDirectional.bottomStart,
        children: [
          selected[interestsName] == true
              ? Container(
                  width: 165,
                  height: 165,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 0.5,
                      image: AssetImage(
                        "$interestsImage",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(19),
                    ),
                    color: Colors.black,
                    backgroundBlendMode: BlendMode.darken,
                    border: Border.all(
                      width: 2,
                      color: defaultColor,
                    ),
                  ),
                )
              : Container(
                  width: 165,
                  height: 165,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "$interestsImage",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(19),
                    ),
                  ),
                  // child:
                ),
          if (selected[interestsName] == true)
            Positioned(
              top: 2,
              right: 2,
              child: Icon(
                Icons.check_circle,
                color: defaultColor,
              ),
            ),
          Positioned(
            bottom: 0,
            left: 13,
            child: Text(
              "$interestsName",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xfff0f1f5),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
