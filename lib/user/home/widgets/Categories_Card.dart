import 'package:flutter/material.dart';
import 'package:kss/core/const.dart';
import 'package:kss/core/utils/size_config.dart';
import 'package:kss/core/widgets/custom_text.dart';

import '../../../../../core/widgets/custom_listTile.dart';

class CategoriesCard extends StatelessWidget {
  final String text;
  final VoidCallback? press;
  final String? image;

  // ignore: prefer_const_constructors_in_immutables
  CategoriesCard({
    Key? key,
    this.text = "",
    this.image,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Expanded(
        child: Material(
            color: Colors.white,
            elevation: 5,
            borderRadius: BorderRadius.circular(10.0),
            shadowColor: Color(0x802196F3),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage(image!), fit: BoxFit.cover)),
                height: SizeConfig.screenheight! / 4.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.30),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: CustomText(
                        text: text,
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        alignment: Alignment.center,
                      )),
                ))),
      ),
    );
  }
}
