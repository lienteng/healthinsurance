import 'package:flutter/material.dart';
import 'package:ui_healthinsurance/models/model.dart';
import 'package:ui_healthinsurance/widget/custom_menu.dart';
import 'package:ui_healthinsurance/widget/sizeconfig.dart';

class GridViewDashboard extends StatelessWidget {
  const GridViewDashboard({Key? key, required this.menus}) : super(key: key);

  final List<MenuModel> menus;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          height: SizeConfig.blockSizeVertical! * 32.5,
          width: SizeConfig.blockSizeHorizontal! * 100,
          child: Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: SizeConfig.blockSizeHorizontal! * 2.2,
                  mainAxisSpacing: SizeConfig.blockSizeVertical! * 2.2,
                ),
                itemBuilder: (context, indext) {
                  return ElevatedButton(
                      onPressed: () {},
                      child: CustomMenu(
                        menu: menus[indext].menu!,
                        imagePath: menus[indext].imagePath!,
                      ));
                }),
          )),
    );
  }
}
