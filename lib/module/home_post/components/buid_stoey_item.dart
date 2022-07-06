import 'package:flutter/material.dart';

Widget buidStoeyItem({required void Function()? onPress}) => SizedBox(
      width: 72,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},

            // onTap: onPress,
            child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    const Color(0xff21115c),
                    const Color(0xff8564ff),
                  ],
                ),
                border: Border.all(
                  color: Colors.transparent,
                  width: 3,
                ),
              ),
              // clipBehavior: Clip.hardEdge,
              child:
                  // Image.asset(
                  //   'assets/images/interests/art.jpg',
                  //   fit: BoxFit.cover,
                  // ),
                  CircleAvatar(
                backgroundImage: AssetImage(
                  //TODO: Add Story person

                  'assets/images/interests/animal.jpg',
                ),
                radius: 5,
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            //TODO: Add Name

            'Zain Mhesn sdlmoadsjcids',

            maxLines: 1,

            overflow: TextOverflow.ellipsis,

            style: TextStyle(
              color: Color(0xff787c81),
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
