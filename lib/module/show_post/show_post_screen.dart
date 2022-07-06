import 'package:flutter/material.dart';
import 'package:project1/shared/components/widget/item_comments.dart';
import 'package:project1/shared/components/size_config.dart';
import 'package:project1/shared/styes/colors.dart';

class ShowPostScreen extends StatelessWidget {
  static String routeName = "/showpost";
  var messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff0f1f5),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          'assets/images/interests/art.jpg',
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: -50,
                          left: 20,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              'assets/images/interests/art.jpg',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 90, bottom: 10),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "zain mhesn",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.upload,
                                    size: 35,
                                    color: Color(0xff909090),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.download_sharp,
                                    size: 35,
                                    color: Color(0xff909090),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Wrap(
                            spacing: 10,
                            alignment: WrapAlignment.end,
                            children: [
                              Container(
                                width: 156,
                                height: 33,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.5)),
                                  gradient: LinearGradient(
                                    begin: Alignment(0, 0.5),
                                    end: Alignment(1, 0.5),
                                    colors: [
                                      const Color(0xff21115c),
                                      const Color(0xff8564ff)
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "#Graphic Design ",
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Welcome to my world , this is my work do you like this ? Welcome to my world , this is my work do you like this ?Welcome to my world , this is my work do you like this ?',
                            style: TextStyle(
                              color: Color(0xff787c81),
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Comments :",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          ListView.separated(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            reverse: true,
                            itemBuilder: (context, index) => buidCommentsItem(),
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 20),
                            itemCount: 100,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            Container(
              height: 97,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x29000000),
                    offset: Offset(0, 5),
                    blurRadius: 30,
                  )
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Row(
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
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextFormField(
                        controller: messageController,
                        maxLines: 5,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type a message....',
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (messageController.text.isNotEmpty) {
                        messageController.clear();
                      }
                    },
                    icon: Icon(
                      Icons.send,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
