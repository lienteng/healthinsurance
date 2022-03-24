import 'package:flutter/material.dart';
import 'package:ui_healthinsurance/widget/sizeconfig.dart';

class TextMenu extends StatelessWidget {
  const TextMenu({Key? key, required this.textMenu}) : super(key: key);
  final String textMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal! * 6.4),
      child: Text(
        textMenu,
        textAlign: TextAlign.start,
        style: TextStyle(
            color: const Color(0xFF111111),
            fontFamily: 'Poppins',
            fontSize: SizeConfig.blockSizeHorizontal! * 4.8,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
