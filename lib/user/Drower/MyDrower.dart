import 'package:flutter/material.dart';
import 'package:kss/core/widgets/custom_text.dart';
import 'package:kss/user/Drower/widgets/Custom_ListTitel.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Material(
            color: Colors.white,
            elevation: 10,
            shadowColor: Color(0x802196F3),
            child: UserAccountsDrawerHeader(
              accountName: CustomText(text: "أمنية عبد الحفيظ", fontSize: 20),
              currentAccountPicture: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1594616838951-c155f8d978a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                ),
              ),
              decoration: BoxDecoration(color: Colors.white),
              accountEmail: null,
            ),
          ),
          CustomListTileOnTap(
            text: "الريئسية",
            icon: Icons.home_outlined,
            onTap: () {
              Navigator.of(context).pushNamed('Home Screen');
            },
          ),
          CustomListTileOnTap(
            text: "الملف الشخصي",
            icon: Icons.person_outline,
            onTap: () {
              Navigator.of(context).pushNamed('Profile Screen');
            },
          ),
          CustomListTileOnTap(
            text: "العروض",
            icon: Icons.insert_drive_file_outlined,
            onTap: () {
              Navigator.of(context).pushNamed('Offers Screen');
            },
          ),
          CustomListTileOnTap(
            text: "تواصل معنا",
            icon: Icons.phone_missed_outlined,
            onTap: () {
              Navigator.of(context).pushNamed('Contact Us Screen');
            },
          ),
          CustomListTileOnTap(
            text: "تسجيل خروج",
            icon: Icons.exit_to_app,
            onTap: () {
              Navigator.of(context).pushNamed('sign out');
            },
          ),
        ],
      ),
    );
  }
}
