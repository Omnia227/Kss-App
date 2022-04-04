import 'package:flutter/material.dart';

import 'package:kss/core/utils/size_config.dart';
import 'package:kss/core/widgets/custom_text.dart';
import 'package:kss/view/user/Catogries/widges/subCatogres_Card.dart';

import '../../../../core/widgets/Custom_FloatingActionButton.dart';

class SubCategoriesCow extends StatelessWidget {
//  const SubCategoriesCow({Key? key}) : super(key: key);
  List<SubCatogresCard> catogries = [
    SubCatogresCard(
      press: () {},
      image: "lib/assets/images/logo-01.png",
      text: "خروف كامل",
    ),
    SubCatogresCard(
      press: () {},
      image: "lib/assets/images/logo-01.png",
      text: "خروف كامل",
    ),
    SubCatogresCard(
      press: () {},
      image: "lib/assets/images/logo-01.png",
      text: "خروف كامل",
    ),
    SubCatogresCard(
      press: () {},
      image: "lib/assets/images/logo-01.png",
      text: "خروف كامل",
    ),
    SubCatogresCard(
      press: () {},
      image: "lib/assets/images/logo-01.png",
      text: "خروف كامل",
    ),
    SubCatogresCard(
      press: () {},
      image: "lib/assets/images/logo-01.png",
      text: "خروف كامل",
    ),
    SubCatogresCard(
      press: () {
        //   Navigator.of(context).pushNamed('Forgot Password Screen');
      },
      image: "lib/assets/images/logo-01.png",
      text: "خروف كامل",
    )
  ];

  SubCategoriesCow({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig();
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ListView(children: [
              Row(
                children: [
                  CustomFloatingActionButton(
                    press: () {
                      Navigator.of(context).pushNamed('Home Screen');
                    },
                    icon: Icon(Icons.chevron_left_rounded, color: Colors.black),
                  ),
                  SizedBox(
                    width: SizeConfig.screenwidth! * .2,
                  ),
                  CustomText(
                    text: "العروض",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenheight! * .02,
              ),
            ]),
          ),
        ));
  }
}
