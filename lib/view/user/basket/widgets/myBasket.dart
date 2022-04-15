import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/const.dart';
import '../../../../core/widgets/custom_text.dart';

class MyBasket extends StatelessWidget {
  final bname;
  final bImage;
  int quantity;
  final price;

  bool isSaving = false;
  MyBasket({
    Key? key,
    this.bname,
    this.bImage,
    this.quantity = 1,
    this.price,
  }) : super(key: key);
  void _incrementCounter() {
    quantity++;
  }

  void _decreaseCounter() {
    quantity--;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Material(
                color: Colors.white,
                elevation: 10.0,
                borderRadius: BorderRadius.circular(10.0),
                shadowColor: Color(0x802196F3),
                child: Container(
                  padding: const EdgeInsets.all(
                    5,
                  ),
                  width: MediaQuery.of(context).size.width / 6,
                  child: Image.asset(
                    bImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      right: 5,
                    ),
                    child: Text(
                      bname,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.do_disturb_on_outlined,
                                color: Primarycolor,
                              ),
                              onPressed: _decreaseCounter),
                          Container(
                              height: 22,
                              width: 22,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Primarycolor,
                                  borderRadius: BorderRadius.circular(5)),
                              child: CustomText(
                                text: "$quantity",
                                color: Colors.white,
                                fontSize: 15,
                              )),
                          IconButton(
                            icon: Icon(
                              Icons.add_circle_outline_outlined,
                              color: Primarycolor,
                            ),
                            onPressed: _incrementCounter,
                          ),
                        ],
                      ),
                    ),
                  ]),
                ],
              ),
            ]),
            Container(
              padding: const EdgeInsets.only(
                left: 0,
                right: 0,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.close_rounded,
                  color: Primarycolor,
                ),
                onPressed: () {
                  // openPage(context);
                },
              ),
            )
          ],
        ),
        Divider(
          color: Colors.grey,
        ),
      ]),
    );
  }
}
