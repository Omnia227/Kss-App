import 'package:flutter/material.dart';

import 'package:kss/view/auth/OTP/OTP_Screen.dart';
import 'package:kss/view/auth/forgot_password_screen.dart';
import 'package:kss/view/auth/login_screen.dart';
import 'package:kss/view/auth/new_password_screen.dart';
import 'package:kss/view/auth/registration_screen.dart';
import 'package:kss/view/driver/driverMap.dart';
import 'package:kss/view/onbording/onbording.dart';
import 'package:kss/view/onbording/splashView.dart';
import 'package:kss/view/user/BottomNavigationBarUser.dart';
import 'package:kss/view/user/Catogries/Sub_Categories_cow.dart';
import 'package:kss/view/user/Drower/offers/offers_screen.dart';
import 'package:kss/view/user/Drower/profile/edit_Profile.dart';
import 'package:kss/view/user/Drower/profile/myProfile.dart';
import 'package:kss/view/user/home/Home_csreen.dart';
import 'package:kss/view/user/Drower/MyDrower.dart';
import 'package:kss/view/user/Drower/countact_Us/contactUs.dart';
import 'package:kss/view/user/order_validation/Order_Validiaation_True.dart';
import 'package:kss/view/user/order_validation/order_validation_flse.dart';
import 'package:kss/view/user/order_validation/Validation_order_cancel.dart';
import 'package:kss/view/user/testhome.dart';
import 'package:kss/view/user/userMap.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Tajawal"),
      home: Scaffold(body: SplashScreen()),
      routes: {
        //  'UserMapScreen': (context) {
        //  return UserMapScreen();
        //    },
        'DriverMapScreen': (context) {
          return DriverMapScreen();
        },
        'onbording': (context) {
          return Onbording();
        },
        'Login Screen': (context) {
          return LoginScreen();
        },
        'Registeration Screen': (context) {
          return RegisterationScreen();
        },
        'Forgot Password Screen': (context) {
          return ForgotPasswordScreen();
        },
        'OTP Screen': ((context) {
          return OTPScreen();
        }),
        'New Pass Screen': ((context) {
          return NewPassScreen();
        }),
        ////////////////////User////////////////
        'Home Screen': (context) {
          return HomeScreen();
        },
        'MyDrawer': (context) {
          return MyDrawer();
        },
        'Contact Us Screen': (context) {
          return ContactUsScreen();
        },
        'Profile Screen': (context) {
          return ProfileScreen();
        },
        'Edit Prodile Screen': (context) {
          return EditProdileScreen();
        },
        'Offers Screen': (context) {
          return OffersScreen();
        },
        'Order Validiaation True Screen': (context) {
          return OrderValidiaationTrueScreen();
        },
        'Order Validiaation Folse Screen': (context) {
          return OrderValidiaationfolseScreen();
        },
        'Validation Order Cancel Screen': (context) {
          return ValidationOrderCancelScreen();
        },
        'Home Navigation User Screen': (context) {
          return HomeNavigationUserPage();
        },
        'Sub Categories Cow': (context) {
          return SubCategoriesCow();
        },
        'HometestScreen': (context) {
          return HometestScreen();
        }
      },
    );
  }
}
