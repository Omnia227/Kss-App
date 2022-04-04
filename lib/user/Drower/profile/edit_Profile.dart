import 'package:flutter/material.dart';
import 'package:kss/core/utils/size_config.dart';
import 'package:kss/user/Drower/profile/widgets/profilePic.dart';
import '../../../../core/widgets/Custom_FloatingActionButton.dart';
import '../../../../core/widgets/Custom_Text_Field.dart';
import '../../../../core/widgets/custom_buttom.dart';

class EditProdileScreen extends StatefulWidget {
  const EditProdileScreen({Key? key}) : super(key: key);

  @override
  State<EditProdileScreen> createState() => _EditProdileScreenState();
}

class _EditProdileScreenState extends State<EditProdileScreen> {
  TextEditingController name = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController email = new TextEditingController();

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
              CustomFloatingActionButton(
                press: () {
                  Navigator.of(context).pushNamed('Profile Screen');
                },
                icon: Icon(Icons.chevron_left_rounded, color: Colors.black),
              ),
              SizedBox(height: SizeConfig.screenheight! * .05),
              Container(
                  alignment: Alignment.center,
                  height: SizeConfig.screenheight! / 6,
                  child: ProfilePic()),
              SizedBox(height: SizeConfig.screenheight! * .05),
              CustomTextField(
                label: "اسم المستخدم",
                myController: name,
                hint: "اسم المستخدم",
              ),
              CustomTextField(
                label: "رقم الهاتف",
                myController: phone,
                keyboardType: TextInputType.phone,
                hint: "رقم الهاتف",
              ),
              CustomTextField(
                label: "البريد الإلكتروني",
                myController: email,
                keyboardType: TextInputType.emailAddress,
                hint: "البريد الإلكتروني",
              ),
              SizedBox(height: SizeConfig.screenheight! * .05),
              CustomMaterialButtom(
                  text: "حفظ",
                  press: () {
                    Navigator.of(context).pushNamed('Profile Screen');
                  }),
            ]),
          ),
        ));
  }
}
