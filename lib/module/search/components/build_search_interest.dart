import 'package:flutter/material.dart';
import 'package:project1/shared/components/size_config.dart';
import 'package:project1/shared/styes/colors.dart';

Widget buildSearchInterest({required String? interestName}) => TextButton(
      onPressed: () {},
      clipBehavior: Clip.antiAlias,
      child: Text(
        '#$interestName',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(defaultColor),
      ),
    );


//  Container(
//       width: getProportionateScreenWidth(110),
//       height: getProportionateScreenHeight(40),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         shape: ,
//         boxShadow: [
//           BoxShadow(
//               color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0),
//         ],
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           stops: [0.0, 1.0],
//           colors: [
//             defaultColor,
//             defaultSecondColor,
//           ],
//         ),
//       ),
//       child: Center(
//         child: Text(
//           "#$interestName",
//           textAlign: TextAlign.center,
//           overflow: TextOverflow.ellipsis,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 13,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ),
//     );
