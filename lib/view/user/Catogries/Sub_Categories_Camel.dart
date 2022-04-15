import 'package:flutter/material.dart';

import 'package:kss/core/utils/size_config.dart';
import 'package:kss/core/widgets/custom_text.dart';
import 'package:kss/model/Categories.dart';
import 'package:kss/view/user/Catogries/widges/subCatogres_Card.dart';
import 'package:kss/view/user/Details/details.dart';

import '../../../../core/widgets/Custom_FloatingActionButton.dart';

class SubCategoriesCamel extends StatelessWidget {
  final snackBar = SnackBar(
    content: const Text('غير متوفر حالياً'),
  );
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
                    text: "إبل",
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
                          //  Navigator.of(context).pushNamed('Details Screen');
                        },
                        Sub_Categories_Image: "lib/assets/images/camel.png",
                        Sub_Categories_Name: "إبل كامل",
                        isVisible: false,
                      ),
                      SubCatogresCard(
                        Sub_Categories_Id: "2",
                        Sub_Categories_press: () {
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        Sub_Categories_Image:
                            "lib/assets/images/ضلوع_ابل-removebg-preview.png",
                        Sub_Categories_Name: "ضلوع",
                        isVisible: true,
                      ),
                      SubCatogresCard(
                        Sub_Categories_Id: "3",
                        Sub_Categories_press: () {
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        Sub_Categories_Image:
                            "lib/assets/images/لحم ابل صافي.jpg",
                        Sub_Categories_Name: "صافية",
                        isVisible: true,
                      ),
                      SubCatogresCard(
                        Sub_Categories_Id: "4",
                        Sub_Categories_press: () {
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        Sub_Categories_Image:
                            "lib/assets/images/كبدة_ابل-removebg-preview.png",
                        Sub_Categories_Name: "كبدة",
                        isVisible: true,
                      ),
                    ],
                  )),
            ]),
          ),
        ));
  }
}
