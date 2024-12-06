// reusable_selectable_container.dart

import 'package:flutter/material.dart';
import 'package:joyapp/utils/mysize.dart';
import '../../utils/appcolors.dart';
import '../base/custom_textwidget.dart';

class SelectableContainer extends StatelessWidget {
  final String title;
  final int index;
  final int selectedIndex;
  final Function onTap;

  const SelectableContainer({
    super.key,
    required this.title,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: Container(
        height: MySize.size52,
        width: MySize.screenWidth * .430,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: selectedIndex == index
                  ? AppColors.selectedcontainerbordercolor
                  : AppColors.borderColorAD,
              width: 1),
          color: selectedIndex == index
              ? Color(0xffF6F6F6)
              : Colors.transparent,
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: MySize.size10, top: MySize.size10, bottom: MySize.size10),
          child: Center(
              child: customTextRegular(title: title, fontSize: MySize.size14)),
        ),
      ),
    );
  }
}
