import 'package:flutter/material.dart';

import '../core/const.dart';
import '../core/widgets/custom_text.dart';

class ExamScreen extends StatefulWidget {
  @override
  _ExamScreenState createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: new IconThemeData(color: Primarycolor),
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          body: SafeArea(
            child: Container(
              // we will give media query height
              // double.infinity make it big as my parent allows
              // while MediaQuery make it big as per the screen

              width: double.infinity,
              height: MediaQuery.of(context).size.height,

              child: Center(
                child: Stack(children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: new FittedBox(
                      child: Material(
                        color: Colors.white,
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(24.0),
                        shadowColor: Color(0x802196F3),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  child: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('UserMapScreen');
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Primarycolor,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 20),
                                      child: CustomText(
                                        text: "User Map",
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        alignment: Alignment.center,
                                        fontSize: 20,
                                      ),
                                    )),
                                // ),
                              )),
                              SizedBox(height: 20),
                              Container(
                                  child: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('DriverMapScreen');
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Primarycolor,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 20),
                                      child: CustomText(
                                        text: "Driver Map",
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        alignment: Alignment.center,
                                        fontSize: 20,
                                      ),
                                    )),
                                // ),
                              )),
                              SizedBox(height: 10),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ),
        ));
  }
}
