import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kss/core/utils/size_config.dart';
import 'package:kss/view/user/order%20information/widgets/card_information.dart';

import '../../../core/const.dart';
import '../../../core/widgets/Custom_FloatingActionButton.dart';
import '../../../core/widgets/Custom_Text_Field.dart';

import '../../../core/widgets/custom_buttom.dart';

import '../../../core/widgets/custom_text.dart';
import 'package:image_picker/image_picker.dart';

class OrderInformationScreen extends StatefulWidget {
  const OrderInformationScreen({Key? key}) : super(key: key);

  @override
  State<OrderInformationScreen> createState() => _OrderInformationScreenState();
}

class _OrderInformationScreenState extends State<OrderInformationScreen> {
  TextEditingController alternate_phone = new TextEditingController();

  TextEditingController phone = new TextEditingController();
  TextEditingController adress = new TextEditingController();
  GlobalKey<FormState> formStateOrderInformation = new GlobalKey<FormState>();

  File? image;

  Future pickImage(ImageSource showImageSource) async {
    try {
      final image = await ImagePicker().pickImage(source: showImageSource);
      if (image == null) return;
      //  final imageTemporary = File(image.path);
      //  setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Faild to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig();
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: formStateOrderInformation,
            child: ListView(children: [
              Row(
                children: [
                  CustomFloatingActionButton(
                    press: () {
                      Navigator.of(context).pushNamed('Home Screen');
                    },
                    icon: Icon(Icons.chevron_left_rounded, color: Colors.black),
                  ),
                  SizedBox(
                    width: SizeConfig.screenwidth! * .2,
                  ),
                  CustomText(
                    text: "إكمال معلومات الطلب",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenheight! * .02,
              ),
              CustomTextField(
                label: "رقم هاتف متاح",
                myController: phone,
                hint: "رقم هاتف متاح",
                keyboardType: TextInputType.phone,
              ),
              CustomTextField(
                label: "رقم هاتف بديل",
                myController: alternate_phone,
                hint: "رقم هاتف بديل",
                keyboardType: TextInputType.phone,
              ),
              CustomTextField(
                label: "العنوان",
                myController: adress,
                hint: "العنوان",
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('UserMapScreen');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "العنوان",
                    ),
                    Icon(
                      Icons.location_pin,
                      color: Primarycolor,
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 0.3,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () => pickImage(ImageSource.gallery),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "إرفاق إشعار بنكك",
                    ),
                    Icon(
                      Icons.upload_file_outlined,
                      color: Primarycolor,
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 0.3,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              CustomCardInformation(
                text: "رقم الحساب",
                text1: "3456793",
              ),
              SizedBox(
                height: 20,
              ),
              CustomMaterialButtom(
                  text: "تأكيد الطلب",
                  press: () {
                    Navigator.of(context)
                        .pushNamed('Order Validiaation True Screen');
                  }),
            ]),
          ),
        )));
  }
}
