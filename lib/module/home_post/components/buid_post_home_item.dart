import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:project1/models/home_post/home_post_model.dart';
import 'package:project1/module/home_post/home_post_screen.dart';

import 'package:project1/shared/components/size_config.dart';
import 'package:project1/shared/styes/colors.dart';
import 'package:project1/tes/ne/add_post.dart';
import 'package:readmore/readmore.dart';

Widget buidPostHomeItem({
  required BuildContext context,
  required void Function()? onPress,
  HomePostModel? post,
}) {
  return InkWell(
    onTap: onPress,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.only(left: 21, right: 17, top: 15, bottom: 8),
      // width: getProportionateScreenWidth(346),
      // height: getProportionateScreenHeight(493),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0x0f000000),
            offset: Offset(0, 20),
            blurRadius: 60,
          )
        ],
        color: Colors.white,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // CircleAvatar(
              //   backgroundImage: post!.photo != null
              //       ? NetworkImage(
              //           "http://images/PostsPhoto/${post.photo}",
              //         )
              //       : null,
              // ),
              CircleAvatar(
                backgroundImage: AssetImage(
                  //TODO: Add a images publisher
                  'assets/images/interests/art.jpg',
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    //TODO: Add a name publisher

                    "Mauricio Lopez",

                    style: const TextStyle(
                      color: const Color(0xff181818),
                      fontWeight: FontWeight.w700,
                      fontSize: 17.0,
                    ),
                  ),
                  Text(
                    //TODO: Add a DateTime to publisher

                    '20 min ago',

                    style: TextStyle(
                      color: Color(0xff909090),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: Icon(
                                FluentIcons.edit_arrow_back_20_filled,
                                color: defaultColor,
                                size: 30,
                              ),
                              title: Text(
                                'Edit',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return Addpost();
                                }));
                              },
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.delete_rounded,
                                color: Colors.red,
                                size: 30,
                              ),
                              title: Text(
                                'Delete',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  //color: Colors.red,
                                ),
                              ),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Delete your Post"),
                                      content: Text("Are you sure?"),
                                      actions: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                "Cancel",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: defaultColor),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                "OK",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: defaultColor),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        );
                      });
                },
                icon: Icon(
                  Icons.keyboard_command_key_sharp,
                  color: Color(0xff909090),
                ),
              ),
            ],
          ),
          if (post!.content != null)
            ReadMoreText(
              "${post.content}",
              style: TextStyle(
                color: Color(0xff787c81),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              trimMode: TrimMode.Line,
              trimLines: 2,
              trimCollapsedText: 'Show more',
              moreStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: defaultColor,
              ),
              trimExpandedText: 'Show less',
              lessStyle: TextStyle(
                color: defaultColor,
                fontSize: 13,
              ),
            ),
          SizedBox(
            height: getProportionateScreenHeight(13),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child:
                // Image.network(
                //   // fit: BoxFit.cover,
                //   // 'http://192.168.1.11:8000/images/PostsPhoto/${post!.photo}',
                //   '${post!.photo}',
                // ),

                Image.asset(
              '${post.photo}',
              width: getProportionateScreenWidth(329),
              height: getProportionateScreenHeight(295),
              fit: BoxFit.cover,
            ),
          ),
          // SizedBox(height: getProportionateScreenHeight(4)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // post.interestId.f
              TextButton(
                onPressed: () {},
                child: Text(
                  '#Graphic Design',
                  style: TextStyle(
                    color: defaultColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(height: getProportionateScreenHeight(1)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.upload,
                  // size: 25,
                  color: Color(0xff909090),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.download_sharp,
                  // size: 25,
                  color: Color(0xff909090),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mode_comment_outlined,
                  // size: 25,
                  color: Color(0xff909090),
                ),
              ),
              Spacer(),
              if (post.isPrometed == "true")
                Container(
                  width: 102,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        const Color(0xff21115c),
                        const Color(0xff8564ff),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Promote",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    ),
  );
}




// [
//     null,
//     {
//         "headers": {},
//         "original": [
//             {
//                 "_id": "62b4817fd9bb7934d1078c62",
//                 "photo": "1655996799.jpg",
//                 "user_id": 10,
//                 "interest_id": "[3]",
//                 "updated_at": "2022-06-23T15:06:39.971000Z",
//                 "created_at": "2022-06-23T15:06:39.964000Z",
//                 "is_prometed": "false"
//             },
//             {
//                 "_id": "62b45e09d3adaa4f950c2697",
//                 "photo": "1655987721.jpg",
//                 "user_id": 10,
//                 "interest_id": "[3]",
//                 "updated_at": "2022-06-23T12:35:21.312000Z",
//                 "created_at": "2022-06-23T12:35:21.312000Z"
//             }
//         ],
//         "exception": null
//     }
// ]