import 'package:flutter/material.dart';
import 'package:kss/core/widgets/custom_text.dart';

import 'package:kss/view/user/Drower/MyDrower.dart';
import 'package:kss/core/widgets/Custom_FloatingActionButton.dart';
import 'package:kss/view/user/home/widgets/Categories_Card.dart';

import '../../../core/const.dart';
import '../../../core/utils/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig();
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            drawer: Container(color: Colors.amber, child: MyDrawer()),
            //    appBar: AppBar(),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ListView(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomFloatingActionButton(
                        press: () {
                          Navigator.of(context).pushNamed('MyDrawer');
                        },
                        icon: Icon(Icons.edit, color: Colors.grey),
                      ),
                      CustomText(
                        text: "الأقسام",
                        fontSize: 20,
                        alignment: Alignment.center,
                      ),
                      Material(
                        color: Colors.white,
                        elevation: 10,
                        borderRadius: BorderRadius.circular(50.0),
                        shadowColor: Color(0x802196F3),
                        child: IconButton(
                          color: Primarycolor,
                          icon: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1594616838951-c155f8d978a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('Profile');
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.screenheight! * .02),
                  CategoriesCard(
                    image: "lib/assets/images/new_Password.jpg",
                    text: "أبقار",
                    press: () {
                      Navigator.of(context).pushNamed('Sub Categories Cow');
                    },
                  ),
                  SizedBox(height: SizeConfig.screenheight! * .02),
                  CategoriesCard(
                    image: "lib/assets/images/new_Password.jpg",
                    text: "خراف",
                    press: () {
                      Navigator.of(context).pushNamed(' ');
                    },
                  ),
                  SizedBox(height: SizeConfig.screenheight! * .02),
                  CategoriesCard(
                    image: "lib/assets/images/new_Password.jpg",
                    text: "أبل",
                    press: () {
                      Navigator.of(context).pushNamed(' ');
                    },
                  )
                ]))));
  }
}
