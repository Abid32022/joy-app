
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';



class ReuseRow extends StatelessWidget {
  String text1;
  String text2;
  String assetName;

  ReuseRow({
    required this.text1,
    required this.text2,
    required this.assetName,

    super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      customTextMedium(
          title: text1,
          fontSize: MySize.size20,
          fontWeight: FontWeight.w500),
        Spacer(),
      customTextMedium(
          title: text2,
          fontSize: MySize.size16,
          color: AppColors.parcelSecondaryColor8B,
          fontWeight: FontWeight.w400),
      SizedBox(
        width: MySize.size12,
      ),
      SvgPicture.asset(assetName,
      height: MySize.size10,
      ),
    ],);
  }
}
