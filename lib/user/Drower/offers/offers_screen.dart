import 'package:flutter/material.dart';

import 'package:kss/core/utils/size_config.dart';
import 'package:kss/core/widgets/custom_text.dart';
import 'package:kss/user/Drower/offers/widgets/Custom_Card.dart';


import '../../../../core/widgets/Custom_FloatingActionButton.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig();
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ListView(children: [
              Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    text: "العروض",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenheight! * .02,
              ),
              Container(
                height: SizeConfig.screenheight! / 1,
                child: ListView.builder(
                    itemCount: 10,
                    // itemCount: value.length,
                    itemBuilder: (context, i) {
                      return CustomCard(
                        text: "تخفيض %20",
                      );
                    }),
              ),
            ]),
          ),
        ));
  }
}
