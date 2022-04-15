import 'package:flutter/material.dart';
import 'package:kss/core/const.dart';

import 'package:kss/core/utils/size_config.dart';
import 'package:kss/core/widgets/custom_text.dart';

import 'package:kss/view/user/basket/widgets/myBasket.dart';

import '../../../../core/widgets/Custom_FloatingActionButton.dart';
import '../../../core/widgets/custom_buttom.dart';

class BasketScreen extends StatelessWidget {
  // const BasketScreen({Key? key}) : super(key: key);
  var MyListBasket = [
    {
      "bImage": "lib/assets/images/download (7).jpg",
      "bname": "عجل كامل",
      "quantity": 1,
      "price": 300
    },
    {
      "bImage": "lib/assets/images/camel.png",
      "bname": "إبل كامل",
      "quantity": 1,
      "price": 300
    }
  ];

  var totalPrice = 600;
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
                    text: "السلة",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenheight! * .02,
              ),
              Container(
                height: SizeConfig.screenheight! / 2.2,
                child: ListView.builder(
                    itemCount: MyListBasket.length,
                    itemBuilder: (context, i) {
                      return MyBasket(
                        bImage: MyListBasket[i]["bImage"],
                        bname: MyListBasket[i]["bname"],
                        price: MyListBasket[i]["price"],
                        // quantity: MyListBasket[i]["quantity"],
                      );
                    }),
              ),
              SizedBox(height: SizeConfig.screenheight! * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "إجمالي السعر",
                    color: Primarycolor,
                    fontSize: 20,
                  ),
                  CustomText(
                    color: Primarycolor,
                    text: "$totalPrice",
                    fontSize: 20,
                  )
                ],
              ),
              SizedBox(height: SizeConfig.screenheight! * .02),
              Container(
                alignment: Alignment.centerRight,
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed('Home Navigation User Screen');
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.add, color: Primarycolor),
                ),
              ),
              SizedBox(height: SizeConfig.screenheight! * .02),
              CustomMaterialButtom(
                  text: "إكمال الشراء",
                  press: () {
                    Navigator.of(context).pushNamed('Order Information Screen');
                  }),
            ]),
          ),
        ));
  }
}
