import 'package:flutter/material.dart';
import 'package:project1/shared/styes/colors.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class Sittings extends StatefulWidget {
  @override
  State<Sittings> createState() => _SittingsState();
}

class _SittingsState extends State<Sittings> {
  @override
  Widget build(BuildContext context) {
    bool swval = false;
    bool nval = true;
    Icon i = Icon(
      Icons.notifications_active_rounded,
      size: 35,
      color: defaultColor,
    );
    ThemeMode tm = ThemeMode.light;
    return Drawer(
      semanticLabel: "Mina",
      elevation: 20,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Mina farhat",
              style: TextStyle(fontSize: 19),
            ),
            accountEmail: Text("Mina.farhat@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: InkWell(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/interests/graphic_design.jpg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  onTap: () {}),
            ),
            decoration: BoxDecoration(
              color: defaultColor,
              // image: const DecorationImage(
              //   image: AssetImage("images/2.png"),
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
          ListTile(
            leading: Icon(
              FluentIcons.inprivate_account_28_filled,
              size: 35,
              color: defaultColor,
            ),
            title: const Text(
              "Account",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () => print("Done"),
          ),
          const Divider(
            height: 20,
            thickness: 2,
          ),
          ListTile(
              leading: Icon(
                FluentIcons.local_language_28_filled,
                size: 35,
                color: defaultColor,
              ),
              title: const Text(
                "Language",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              Icons.account_balance_rounded,
                              color: defaultColor,
                              size: 30,
                            ),
                            title: Text(
                              'English',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.account_balance_rounded,
                              color: defaultColor,
                              size: 30,
                            ),
                            title: Text(
                              'Arabic',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    });
              }),
          ListTile(
            leading: Icon(
              FluentIcons.share_48_filled,
              size: 35,
              color: defaultColor,
            ),
            title: const Text(
              "Share Us",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () => null,
          ),
          const Divider(
            height: 20,
            thickness: 2,
          ),
          ListTile(
            leading: Icon(
              FluentIcons.arrow_exit_20_filled,
              size: 35,
              color: defaultColor,
            ),
            title: const Text(
              "Log Out",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              FluentIcons.delete_dismiss_28_filled,
              size: 35,
              color: defaultColor,
            ),
            title: const Text(
              "Delete Account",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              FluentIcons.info_28_filled,
              size: 35,
              color: defaultColor,
            ),
            title: const Text(
              "About Us",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
