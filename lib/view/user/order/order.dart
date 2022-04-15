import 'package:flutter/material.dart';

import '../../../core/const.dart';
import '../../../core/utils/size_config.dart';
import '../../../core/widgets/custom_text.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              bottom: TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: Colors.white),
                ),
                unselectedLabelColor: Colors.grey,
                labelColor: Primarycolor,
                tabs: [
                  Tab(
                    text: "طلبات سابقة",
                  ),
                  Tab(text: "تحت التنفيذ"),
                ],
              ),
            ),
            body: TabBarView(children: [
              Center(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: Column(children: [
                    Stack(
                      children: [
                        Divider(
                          color: Colors.black,
                        ),
                        Divider(
                          color: Primarycolor,
                          endIndent: 160,
                          thickness: 5,
                        )
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 1.6,
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, i) {
                            return orderDoctortItem(
                                "[i].name", "order[i].Category");
                          }),
                    ),
                  ]),
                ),
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(children: [
                    Stack(
                      children: [
                        Divider(
                          color: Colors.black,
                        ),
                        Divider(
                          color: Primarycolor,
                          indent: 160,
                          thickness: 5,
                        )
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 1.6,
                      child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, i) {
                            return orderDoctortItem(
                                "order[i].name", "order[i].Category");
                          }),
                    ),
                  ]),
                ),
              )
            ])),
      ));

  Widget orderDoctortItem(String name, String Category) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('Order Details Screen');
        },
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                )),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Primarycolor,
                          radius: 7,
                        ),
                        IntrinsicWidth(
                          child: VerticalDivider(
                            color: Colors.black,
                            indent: 20,
                            endIndent: 0,
                            width: 20,
                            thickness: 3,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Primarycolor,
                          radius: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      // width: SizeConfig.screenwidth! / 2,
                      width: MediaQuery.of(context).size.width / 1.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: name,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                          VerticalDivider(
                            color: Colors.black,
                            indent: 20,
                            endIndent: 0,
                            width: 20,
                            thickness: 3,
                          ),
                          CustomText(
                            text: Category,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CustomText(
                      text: "300 جنيه",
                      alignment: Alignment.topLeft,
                    )
                  ],
                ))),
      ),
    );
  }
}
