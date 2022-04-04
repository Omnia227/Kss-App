import 'package:flutter/material.dart';
import 'package:kss/core/utils/size_config.dart';

import '../../core/const.dart';
import '../../core/widgets/Custom_Text_Field.dart';
import '../../core/widgets/custom_Text_field_phone.dart';
import '../../core/widgets/custom_buttom.dart';
import '../../core/widgets/custom_flatbuttom.dart';

class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({Key? key}) : super(key: key);

  @override
  State<RegisterationScreen> createState() => _RegisterationScreenState();
}

class _RegisterationScreenState extends State<RegisterationScreen> {
  TextEditingController password = new TextEditingController();
  TextEditingController confirmpassword = new TextEditingController();
  TextEditingController phone = new TextEditingController();

  GlobalKey<FormState> formStatelogin = new GlobalKey<FormState>();
  bool _isObscure = true;

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
                child: Image.asset("lib/assets/images/logo-01.png"),
              ),
              CustomTextFieldPhone(
                myController: phone,
              ),
              CustomTextField(
                  label: "كلمة المرور",
                  myController: password,
                  hint: "أدخل كلمة المرور",
                  suffexIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Primarycolor,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),
                  obscureText: true),
              CustomTextField(
                  label: "إعادة كلمة المرور",
                  myController: confirmpassword,
                  hint: "إعادة كلمة المرور",
                  suffexIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Primarycolor,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),
                  obscureText: true),
              CustomMaterialButtom(
                  text: "إنشاء حساب",
                  press: () {
                    Navigator.of(context).pushNamed('Login Screen');
                  }),
              CustomfaltlButtom(
                text: " لديك حساب مسبق ؟",
                text1: "تسجيل دخول ",
                press: () {
                  Navigator.of(context).pushNamed('Login Screen');
                },
              )
            ]),
          ),
        ));
  }
}
