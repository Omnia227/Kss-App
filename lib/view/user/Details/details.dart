import 'package:flutter/material.dart';
import 'package:kss/core/widgets/custom_listTile.dart';
import 'package:kss/core/widgets/custom_text.dart';
import 'package:kss/model/Categories.dart';

import 'package:kss/view/user/Drower/MyDrower.dart';
import 'package:kss/core/widgets/Custom_FloatingActionButton.dart';

import '../../../core/const.dart';
import '../../../core/utils/size_config.dart';
import '../../../core/widgets/custom_buttom.dart';

class DetailsScreen extends StatefulWidget {
  final Details_Sub_Categories_Id;
  final Details_Sub_Categories_Name;
  final Details_Sub_Categories_Image;

  DetailsScreen(
      {Key? key,
      this.Details_Sub_Categories_Id,
      this.Details_Sub_Categories_Name,
      this.Details_Sub_Categories_Image});
  // final SubCategoriesDataModel subCategoriesDataModel;

  // DetailsScreen({Key? key, required this.subCategoriesDataModel})
  //   : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  GlobalKey<FormState> formStateDetails = new GlobalKey<FormState>();

  String _selected = 'بدون رأس';

  String _selected2 = 'بدون أحشاء';

  int Num_Order = 2;

  @override
  Widget build(BuildContext context) {
    SizeConfig();
    // var subCategoriesDataModel;
    var subCategoriesDataModel;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            drawer: Container(color: Colors.amber, child: MyDrawer()),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ListView(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomFloatingActionButton(
                        press: () {
                          // Navigator.of(context).pushNamed('MyDrawer');
                        },
                        icon: Icon(Icons.chevron_left_rounded,
                            color: Colors.black),
                      ),
                      Material(
                        color: Colors.white,
                        elevation: 10,
                        borderRadius: BorderRadius.circular(50.0),
                        shadowColor: Color(0x802196F3),
                        child: Stack(children: [
                          IconButton(
                            icon: Icon(Icons.shopping_cart, color: Colors.grey),
                            onPressed: () {
                              Navigator.of(context).pushNamed('Basket Screen');
                            },
                          ),
                          Container(
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Primarycolor,
                              ),
                              child: CustomText(
                                text: "$Num_Order",
                                color: Colors.white,
                              )),
                        ]),
                      ),
                    ],
                  ),
                  Form(
                    key: formStateDetails,
                    child: Column(
                      children: [
                        Container(
                          height: SizeConfig.screenheight! / 4,
                          child:
                              Image.asset(widget.Details_Sub_Categories_Image),
                        ),
                        SizedBox(height: SizeConfig.screenheight! * .02),
                        Material(
                          color: Colors.white,
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(10.0),
                          shadowColor: Color(0x802196F3),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Column(
                              children: [
                                CustomText(
                                  text: widget.Details_Sub_Categories_Name,
                                  //  text: "عجل كامل ",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(
                                    height: SizeConfig.screenheight! * .02),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      text: "الوزن",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      text: "300 كيلو",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),

                                ///////////////// الراس //////////////////////
                                SizedBox(
                                    height: SizeConfig.screenheight! * .02),
                                CustomText(
                                  text: "الرأس",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),

                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                          child: Row(children: [
                                        Radio<String>(
                                          value: 'بدون رأس',
                                          groupValue: _selected,
                                          onChanged: (value) {
                                            setState(() {
                                              _selected = value!;
                                            });
                                          },
                                          activeColor: Primarycolor,
                                        ),
                                        CustomText(text: 'بدون رأس'),
                                      ])),
                                      Container(
                                        child: Row(children: [
                                          Radio<String>(
                                            value: 'شامل الراأس',
                                            groupValue: _selected,
                                            onChanged: (value) {
                                              setState(() {
                                                _selected = value!;
                                              });
                                            },
                                            activeColor: Primarycolor,
                                          ),
                                          CustomText(
                                            text: 'شامل الرأس',
                                          ),
                                        ]),
                                      )
                                    ]),

                                ////////////////// الاحشاء //////////////////////
                                SizedBox(
                                    height: SizeConfig.screenheight! * .02),
                                CustomText(
                                  text: "الأحشاء",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),

                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                          child: Row(children: [
                                        Radio<String>(
                                          value: 'بدون أحشاء',
                                          groupValue: _selected2,
                                          onChanged: (value) {
                                            setState(() {
                                              _selected2 = value!;
                                            });
                                          },
                                          activeColor: Primarycolor,
                                        ),
                                        CustomText(text: 'بدون أحشاء'),
                                      ])),
                                      Container(
                                        child: Row(children: [
                                          Radio<String>(
                                            value: 'شامل الأحشاء',
                                            groupValue: _selected2,
                                            onChanged: (value) {
                                              setState(() {
                                                _selected2 = value!;
                                              });
                                            },
                                            activeColor: Primarycolor,
                                          ),
                                          CustomText(
                                            text: 'شامل الأحشاء',
                                          ),
                                        ]),
                                      )
                                    ]),

                                SizedBox(
                                    height: SizeConfig.screenheight! * .02),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      text: "السعر",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      text: " 1500",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: SizeConfig.screenheight! * .02),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: SizeConfig.screenheight! * .02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //////////////// counter/////////////
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Primarycolor,
                                    width: 2,
                                  )),
                              margin: EdgeInsets.only(right: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      icon: Icon(
                                        Icons.do_disturb_on_outlined,
                                        color: Primarycolor,
                                      ),
                                      onPressed: () {} //_decreaseCounter
                                      ),
                                  Container(
                                      width: 22,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color: Primarycolor,
                                            width: 2,
                                          )),
                                      child: CustomText(
                                        text: '0',
                                        color: Primarycolor,
                                        fontSize: 15,
                                      )),
                                  IconButton(
                                      icon: Icon(
                                        Icons.add_circle_outline_outlined,
                                        color: Primarycolor,
                                      ),
                                      onPressed: () {}
                                      // _incrementCounter,
                                      ),
                                ],
                              ),
                            ),
                            Container(
                              width: SizeConfig.screenheight! / 2,
                              child: CustomMaterialButtom(
                                  text: "إضافة للسلة",
                                  press: () {
                                    Navigator.of(context).pushNamed(
                                        'Home Navigation User Screen');
                                  }),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ]))));
  }
}
