import 'package:flutter/material.dart';

const Color greenClr = Color.fromARGB(255, 0, 133, 40);
// const Color whiteClr = Color(0xFFFFFFFF);
// const Color blackClr = Color(0xFF000000);
// const Color greyClr = Color(0xFF9E9E9E);
Color darkHeaderClr = Color(0xFF111111);

const primaryClr = greenClr;
const Color darkGreyClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    primaryColor: primaryClr,
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    primaryColor: darkGreyClr,
    brightness: Brightness.dark,
  );
  static final backgroundColor = ThemeData();
}

// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:ui_healthinsurance/config/colors.dart';

// class MyTheme {
//   static ThemeData lightTheme = ThemeData(
//       brightness: Brightness.light,
//       backgroundColor: Appcolors.white,
//       fontFamily: "Montserrat",
//       textTheme: TextTheme(
//         headline1: TextStyle(
//           fontSize: 20.sp,
//           fontWeight: FontWeight.bold,
//           color: Appcolors.black,
//         ),
//         subtitle1: TextStyle(
//           fontSize: 13.sp,
//           fontWeight: FontWeight.w500,
//           color: Colors.grey,
//         ),
//       ));

//   static ThemeData darkTheme = ThemeData(
//       brightness: Brightness.dark,
//       backgroundColor: Appcolors.black,
//       fontFamily: "Montserrat",
//       textTheme: const TextTheme(
//         headline1: TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//           color: Appcolors.white,
//         ),
//         subtitle1: TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.w300,
//           color: Appcolors.white,
//         ),
//       ));
// }
