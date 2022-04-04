import 'package:flutter/material.dart';
import 'package:kss/user/order_validation/widgets/Custom_Card_validation.dart';



import '../../../core/utils/size_config.dart';

class ValidationOrderCancelScreen extends StatelessWidget {
  const ValidationOrderCancelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig();
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: Center(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 200),
              child: ListView(children: [
                CustomCardVaildation(
                  icon: Icons.check_rounded,
                  text1: "تم إلغاء الطلب بنجاح",
                ),
              ])),
        )));
  }
}
