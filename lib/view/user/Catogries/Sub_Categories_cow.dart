import 'package:flutter/material.dart';

import 'package:kss/core/utils/size_config.dart';
import 'package:kss/core/widgets/custom_text.dart';
import 'package:kss/view/user/Catogries/widges/subCatogres_Card.dart';

import '../../../../core/widgets/Custom_FloatingActionButton.dart';

class SubCategoriesCow extends StatelessWidget {
  final snackBar = SnackBar(
    content: const Text('غير متوفر حالياً'),
  );
//  const SubCategoriesCow({Key? key}) : super(key: key);
  var My_CowSubCategories = [
    {
      'Sub_Categories_Id': "1",
      'Sub_Categories_press': () {
        // Navigator.of(context).pushNamed('Details Screen');
      },
      'Sub_Categories_Image': "lib/assets/images/download (7).jpg",
      'Sub_Categories_Name': "عجل كامل",
      'isVisible': false,
    },
    {
      'Sub_Categories_Id': "2",
      'Sub_Categories_press': () {
        //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      'Sub_Categories_Image': "lib/assets/images/ضلوع بقر.jpg",
      'Sub_Categories_Name': "ضلوع",
      'isVisible': true,
    }
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
                      Navigator.of(context)
                          .pushNamed('Home Navigation User Screen');
                    },
                    icon: Icon(Icons.chevron_left_rounded, color: Colors.black),
                  ),
                  SizedBox(
                    width: SizeConfig.screenwidth! * .2,
                  ),
                  CustomText(
                    text: "بقر",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenheight! * .02,
              ),
              Container(
                  height: SizeConfig.screenheight! / 1,
                  padding: EdgeInsets.all(12.0),
                  child: GridView.extent(
                    primary: false,
                    padding: const EdgeInsets.all(16),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    maxCrossAxisExtent: 200.0,
                    children: <Widget>[
                      SubCatogresCard(
                        Sub_Categories_Id: "1",
                        Sub_Categories_press: () {
                          Navigator.of(context).pushNamed('Details Screen');
                        },
                        Sub_Categories_Image:
                            "lib/assets/images/download (7).jpg",
                        Sub_Categories_Name: "عجل كامل",
                        isVisible: false,
                      ),
                      SubCatogresCard(
                        Sub_Categories_Id: "2",
                        Sub_Categories_press: () {
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        Sub_Categories_Image: "lib/assets/images/ضلوع بقر.jpg",
                        Sub_Categories_Name: "ضلوع",
                        isVisible: true,
                      ),
                      SubCatogresCard(
                        Sub_Categories_Id: "3",
                        Sub_Categories_press: () {
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        Sub_Categories_Image:
                            "lib/assets/images/بقر ساق امامي.jpeg",
                        Sub_Categories_Name: "ساق أمامي",
                        isVisible: true,
                      ),
                      SubCatogresCard(
                        Sub_Categories_Id: "4",
                        Sub_Categories_press: () {
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        Sub_Categories_Image:
                            "lib/assets/images/ساق بقر خلفي.jpg",
                        Sub_Categories_Name: "ساق خلفي",
                        isVisible: true,
                      ),
                      SubCatogresCard(
                        Sub_Categories_Id: "5",
                        Sub_Categories_press: () {
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        Sub_Categories_Image:
                            "lib/assets/images/بقر_صافي-removebg-preview.png",
                        Sub_Categories_Name: "صافية",
                        isVisible: true,
                      ),
                      SubCatogresCard(
                        Sub_Categories_Id: "6",
                        Sub_Categories_press: () {
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        Sub_Categories_Image: "lib/assets/images/رقبه بقر.jpg",
                        Sub_Categories_Name: "فقرة",
                        isVisible: true,
                      ),
                      SubCatogresCard(
                        Sub_Categories_Id: "7",
                        Sub_Categories_press: () {
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        Sub_Categories_Image: "lib/assets/images/بقر مفروم.png",
                        Sub_Categories_Name: "مفروم",
                        isVisible: true,
                      ),
                    ],
                  )),
            ]),
          ),
        ));
  }
}
