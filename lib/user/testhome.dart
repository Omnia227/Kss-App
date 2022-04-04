import 'package:flutter/material.dart';
import 'package:kss/core/widgets/custom_text.dart';
import 'package:kss/core/widgets/Custom_FloatingActionButton.dart';

import '../../../core/utils/size_config.dart';
import '../../core/widgets/custom_buttom.dart';
import '../view/user/Drower/MyDrower.dart';

class HometestScreen extends StatelessWidget {
  const HometestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig();
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          drawer: MyDrawer(),
          appBar: AppBar(),
          body: CustomMaterialButtom(
              text: "دخول",
              press: () {
                Navigator.of(context)
                    .pushNamed('Order Validiaation True Screen');
              }),
        ));
  }
}
