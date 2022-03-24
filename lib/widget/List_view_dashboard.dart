import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_healthinsurance/models/model.dart';
import 'package:ui_healthinsurance/widget/custom_card.dart';
import 'package:ui_healthinsurance/widget/sizeconfig.dart';

class ListViewDashboard extends StatelessWidget {
  const ListViewDashboard({Key? key, required this.data}) : super(key: key);
  final List<CardModel> data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical! * 32.5,
      child: ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal! * 6.4,
            vertical: SizeConfig.blockSizeVertical! * 2.2,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, indext) {
            return CustomCard(
              color: data[indext].color!,
              balance: data[indext].balance!,
              cardNumber: data[indext].cardNumber!,
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: SizeConfig.blockSizeHorizontal! * 2.2,
              ),
          itemCount: data.length),
    );
  }
}
