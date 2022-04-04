import 'package:flutter/material.dart';
import 'package:kss/core/utils/size_config.dart';

import '../../core/widgets/custom_Text_field_phone.dart';
import '../../core/widgets/custom_buttom.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController phone = new TextEditingController();

  GlobalKey<FormState> formStateConfirmPassword = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig();
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ListView(children: [
              Container(
                height: SizeConfig.screenheight! / 2.5,
                child: Image.asset("lib/assets/images/forgot-password.jpg"),
              ),
              SizedBox(height: SizeConfig.screenheight! * .05),
              CustomTextFieldPhone(
                myController: phone,
              ),
              SizedBox(height: SizeConfig.screenheight! * .05),
              CustomMaterialButtom(
                  text: "إرسال",
                  press: () {
                    Navigator.of(context).pushNamed('OTP Screen');
                  }),
            ]),
          ),
        ));
  }
}
