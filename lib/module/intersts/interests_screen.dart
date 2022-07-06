import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/module/intersts/components/item_Interest.dart';
import 'package:project1/module/intersts/cubit/intersts_cubit.dart';
import 'package:project1/shared/components/components.dart';
import 'package:project1/shared/components/size_config.dart';
import 'package:project1/layout/home_layout/home_layout.dart';

import '../../models/interstes/interests_model.dart';

class InterestsScreen extends StatelessWidget {
  static String routeName = "/interests";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return BlocProvider(
        create: (context) => InterstsCubit(),
        child: BlocConsumer<InterstsCubit, InterstsStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = InterstsCubit.get(context);
            return SafeArea(
              child: Scaffold(
                body: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 16,
                    bottom: 6,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pick your interest :",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0,
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(18),
                      ),
                      Expanded(
                        child: GridView.builder(
                          itemCount: interestsName.length,
                          itemBuilder: (context, index) => buildInterestItem(
                            index: index,
                            interestsName: interestsName[index],
                            interestsImage: interestsImage[index],
                            ontap: () {
                              cubit
                                  .changeInterstsSelected(interestsName[index]);
                            },
                          ),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: getProportionateScreenWidth(24),
                            mainAxisSpacing: getProportionateScreenHeight(9),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenWidth(5),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          defaultButton(
                            function: () {
                              print(selected.keys.toList());
                              // Todo: NAv +send +if(formkey)
                              Navigator.pushNamedAndRemoveUntil(context,
                                  HomeLayout.routeName, (route) => false);
                            },
                            text: 'Next',
                            fontSize: 15,
                            radius: 19,
                            width: 140,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
