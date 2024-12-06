import 'package:flutter/material.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';



class ReUseRichText extends StatelessWidget {
  String text1;
  String text2;
  ReUseRichText({
    required this.text1,
    required this.text2,
    super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(children: [
      TextSpan(
        text: text1 ,
        style: TextStyle(
          fontSize: MySize.size16,
          fontWeight: FontWeight.w400,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.parcelSecondaryColor8B,
          color: AppColors.parcelSecondaryColor8B,
        ),
      ),

      TextSpan(
        text:text2,
        style: TextStyle(
          fontSize: MySize.size16,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.blackColor00,
          color: AppColors.blackColor00,
        ),
      ),
    ]));
  }
}
