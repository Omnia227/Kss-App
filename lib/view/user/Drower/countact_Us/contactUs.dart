import 'package:flutter/material.dart';
//import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:kss/core/utils/size_config.dart';
import 'package:kss/view/user/Drower/countact_Us/widgets/cUstom_Card_Border.dart';

import '../../../../core/widgets/Custom_FloatingActionButton.dart';
import 'package:kss/core/const.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig();
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ListView(children: [
              CustomFloatingActionButton(
                press: () {
                  Navigator.of(context)
                      .pushNamed('Home Navigation User Screen');
                },
                icon: Icon(Icons.chevron_left_rounded, color: Colors.black),
              ),
              Container(
                height: SizeConfig.screenheight! / 2.5,
                child: Image.asset(
                    "lib/assets/images/Navigation Icon_CONTACT US.png"),
              ),
              SizedBox(height: SizeConfig.screenheight! * .05),
              CustomCardBorder(
                press: () {
                  _callNumber();
                },
                text: "012345678",
                icon: Icon(
                  Icons.phone,
                  color: Primarycolor,
                  size: 30,
                ),
              ),
              CustomCardBorder(
                press: () {},
                text: "Kss@gmail.com",
                icon: Icon(
                  Icons.email,
                  color: Primarycolor,
                  size: 30,
                ),
              )
            ]),
          ),
        ));
  }
}

_callNumber() async {
  const number = '012345678'; //set the number here
  // ignore: unused_local_variable
//  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}
