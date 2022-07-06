import 'package:flutter/material.dart';
import 'package:project1/shared/styes/colors.dart';

Widget buidCommentsItem() => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            //TODO: Add a images publisher
            'assets/images/interests/art.jpg',
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                //TODO: Add a name publisher
                "Mauricio Lopez",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              Text(
                //TODO: Add a DateTime to publisher
                '20 min ago20 min ago20 min ago20 min ago20 min ago20 min ago20 min ago20 min ago20 min ago20 min ago20 min ago20 min ago20 min ago20 min ago',

                style: TextStyle(
                  color: textColor,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ],
    );
