import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/home_layout/cubit/home_layout_cubit.dart';
import 'package:project1/module/search/custom_search_delegate_secreen.dart';
import 'package:project1/shared/components/size_config.dart';
import 'package:project1/shared/styes/colors.dart';

class Person {
  String name;
  String image;
  int ui;
  Person(
    this.name,
    this.image,
    this.ui,
  ) {
    name = this.name;
    image = this.image;
    ui = this.ui;
  }
}

class PartTopHomeSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Person> People = [
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("mina Fg", "assets/images/interests/art.jpg", 500),
      Person("toni g", "assets/images/interests/art.jpg", 500)
    ];
    SizeConfig().init(context);
    return BlocConsumer<HomeLayoutCubit, HomeLayoutStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeLayoutCubit.get(context);
        return SliverAppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: getProportionateScreenHeight(60),
          leading: Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: IconButton(
              icon: Icon(
                cubit.iconTheme,
                size: 35,
                color: defaultColor,
              ),
              onPressed: () {
                cubit.changeTheme();
              },
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegateSecreen(
                    items: People,
                    searchLabel: 'Search people',
                    suggestion: Center(
                      child: Text('Filter people by name'),
                    ),
                    failure: Center(
                      child: Text('No person found :('),
                    ),
                    filter: (person) => [person.name],
                    builder: (person) => ListTile(
                      title: Text(person.name),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("${person.image}"),
                      ),
                    ),
                  ),
                );
              },
              icon: Icon(
                // IconBroken.Search,
                FluentIcons.people_search_24_regular,
                // .search,
                size: 35,
                color: defaultColor,
              ),
            ),
            SizedBox(
              width: 8,
            ),
          ],
        );
      },
    );
  }
}
