import 'package:flutter/material.dart';
import 'package:kss/core/utils/size_config.dart';

import '../../../../../core/const.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../Details/details.dart';

class SubCatogresCard extends StatelessWidget {
  final Sub_Categories_Id;
  final Sub_Categories_Name;
  final Sub_Categories_Image;
  final Sub_Categories_press;
  bool? isVisible;
  // ignore: prefer_const_constructors_in_immutables
  SubCatogresCard({
    Key? key,
    this.isVisible,
    this.Sub_Categories_Id,
    this.Sub_Categories_Name,
    this.Sub_Categories_Image,
    this.Sub_Categories_press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 0),
        child: InkWell(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => new DetailsScreen(

                  ///pass value
                  Details_Sub_Categories_Name: Sub_Categories_Name,
                  Details_Sub_Categories_Image: Sub_Categories_Image))),
          // onTap: Sub_Categories_press!,
          child: Container(
            height: SizeConfig.screenheight! / 3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Primarycolor,
                  width: 2,
                )),
            child: Material(
                color: Colors.white,
                elevation: 10.0,
                borderRadius: BorderRadius.circular(10.0),
                shadowColor: Color(0x802196F3),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        height: SizeConfig.screenheight! / 5,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Image.asset(Sub_Categories_Image!),
                        ),
                      ),
                      SizedBox(height: SizeConfig.screenheight! * .02),
                      CustomText(
                        text: Sub_Categories_Name!,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ),
      Visibility(
        visible: isVisible!,
        child: Container(
          color: Colors.white.withOpacity(.5),
        ),
      )
    ]);
  }
}
