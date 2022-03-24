import 'package:flutter/material.dart';
import 'package:ui_healthinsurance/Splash.dart';
import 'package:ui_healthinsurance/config/theme.dart';
import 'package:ui_healthinsurance/pages/camera.dart';
import 'package:ui_healthinsurance/pages/condition_useapp_page.dart';
import 'package:ui_healthinsurance/pages/contact_page.dart';
import 'package:ui_healthinsurance/pages/createpassword.dart';
import 'package:ui_healthinsurance/pages/help_page.dart';
import 'package:ui_healthinsurance/pages/home_page.dart';
import 'package:ui_healthinsurance/pages/login_page.dart';
import 'package:ui_healthinsurance/pages/otp_page.dart';
import 'package:ui_healthinsurance/pages/otp_sigup.page.dart';
import 'package:ui_healthinsurance/pages/payment_page.dart';
import 'package:ui_healthinsurance/pages/policy_page.dart';
import 'package:ui_healthinsurance/pages/resetpassword_page.dart';
import 'package:ui_healthinsurance/pages/signup_page.dart';
import 'package:ui_healthinsurance/pages/signupphonenumber.dart';

import 'pages/withbuilder _page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'healthinsurance',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeMode.light,
      // themeMode: ThemeMode.light,
      // theme: MyTheme.lightTheme,
      // darkTheme: MyTheme.darkTheme,

      initialRoute: "/SplashScreen",
      routes: {
        "/SplashScreen": (context) => const SplashScreen(),
        "/LoginPage": (context) => const LoginPage(),
        "/HomePage": (context) => const HomePage(),
        "/ResetPasswordPage": (context) => const ResetPasswordPage(),
        "/ConditionApp": (context) => const ConditionApp(),
        "/OTP": (context) => OTP(),
        "/PayMentPage": (context) => const PayMentPage(),
        "/HelpPage": (context) => const HelpPage(),
        "/PolicyPage": (context) => const PolicyPage(),
        "/ContactPage": (context) => const ContactPage(),
        "/WithBuilder": (context) => const WithBuilder(),
        // "/WithPages": (context) => const WithPages(),
        "/OtpSignup": (context) => OtpSignup(),
        "/PhoneNumberPage": (context) => const PhoneNumberPage(),
        "/SignUpPage": (context) => const SignUpPage(),
        '/CreatePassWord': (context) => const CreatePassWord(),
        // "/TakePictureScreen": (context) => const TakePictureScreen(),
      },
    );
  }
}
