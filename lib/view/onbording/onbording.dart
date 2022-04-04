import 'package:flutter/material.dart';
import 'package:kss/core/utils/size_config.dart';

import '../../core/widgets/custom_flatbuttom.dart';
import '../../core/widgets/custom_text.dart';

class Onbording extends StatelessWidget {
  const Onbording({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: SafeArea(
            child: Container(
              child: Column(children: [
                CustomfaltlButtom(
                  text: "تخطي",
                  fontSize: 20,
                  press: () {
                    Navigator.of(context).pushNamed('Login Screen');
                  },
                ),
                SizedBox(
                  height: SizeConfig.screenheight! / 1.5,
                  child:
                      Image.asset("lib/assets/images/d5-removebg-preview.png"),
                ),
                CustomText(
                    text: "التوصيل بعد 24 ساعة",
                    alignment: Alignment.center,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                CustomText(
                    text: "من وقت الطلب",
                    alignment: Alignment.center,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)
              ]),
            ),
          ),
        ));
  }
}
