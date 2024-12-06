import 'package:flutter/material.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class CustomRichText extends StatelessWidget {
  CustomRichText(
      {super.key,
      required this.text1,
      required this.text2,
      this.text3 = "",
      required this.fontSize,
      this.color = AppColors.titleColor29});

  String text1;
  String text2;
  String text3;
  double fontSize;
  FontWeight? fontWeight;
  Color color;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Row(
      children: [
        customTextMedium(
            title: text1,
            fontWeight: FontWeight.w400,
            fontSize: fontSize,
            color: color),
        customTextRegular(
            title: text2,
            fontWeight: FontWeight.w400,
            fontSize: fontSize,
            color: color),
        customTextRegular(
            title: text3,
            fontWeight: FontWeight.w400,
            fontSize: fontSize,
            color: AppColors.borderColorAD),
      ],
    );
  }
}
