import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/module/home_post/cubit/home_post_cubit.dart';

class buidMyStoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePostCubit(),
      child: BlocConsumer<HomePostCubit, HomePostStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = HomePostCubit.get(context);
          return SizedBox(
            width: 72,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    cubit.getStoryImage();
                  },
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
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
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            //TODO: Add Image current user

                            'assets/images/interests/animal.jpg',
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -4,
                        child: Container(
                          width: 23,
                          height: 23,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
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
                          child: Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Your Story',
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
        },
      ),
    );
  }
}

// Widget buidMyStoey() => SizedBox(
//       width: 72,
//       child: Column(
//         children: [
//           InkWell(
//             onTap: () {},
//             child: Stack(
//               clipBehavior: Clip.none,
//               alignment: Alignment.bottomCenter,
//               children: [
//                 Container(
//                   width: 75,
//                   height: 75,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     gradient: LinearGradient(
//                       begin: Alignment(0.5, 0),
//                       end: Alignment(0.5, 1),
//                       colors: [
//                         const Color(0xff21115c),
//                         const Color(0xff8564ff),
//                       ],
//                     ),
//                     border: Border.all(
//                       color: Colors.transparent,
//                       width: 3,
//                     ),
//                   ),
//                   child: CircleAvatar(
//                     backgroundImage: AssetImage(
//                       //TODO: Add Image current user

//                       'assets/images/interests/animal.jpg',
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: -4,
//                   child: Container(
//                     width: 23,
//                     height: 23,
//                     alignment: Alignment.topCenter,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: Colors.white,
//                         width: 2,
//                       ),
//                       gradient: LinearGradient(
//                         begin: Alignment(0.5, 0),
//                         end: Alignment(0.5, 1),
//                         colors: [
//                           const Color(0xff21115c),
//                           const Color(0xff8564ff),
//                         ],
//                       ),
//                     ),
//                     child: Icon(
//                       Icons.add,
//                       size: 20,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 5.0,
//           ),
//           Text(
//             'Your Story',
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//             style: TextStyle(
//               color: Color(0xff787c81),
//               fontSize: 13,
//             ),
//           ),
//         ],
//       ),
//     );
