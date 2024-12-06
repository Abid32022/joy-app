import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

Widget PayContainer({
  String? plan,
  String? amount,
  String? dateTime,
  String? status,
  Color textColor = AppColors.blackColor0,

}) {

  return Container(
    height: MySize.scaleFactorHeight * 88,
    padding: EdgeInsets.symmetric(
        horizontal: MySize.size8, vertical: MySize.scaleFactorHeight * 9),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(MySize.size10),
        border: Border.all(color: AppColors.borderColorAD, width: .4)),
    child: Row(
      children: [
        Container(
          height: MySize.size60,
          width: MySize.size60,
          padding: EdgeInsets.all(MySize.size15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MySize.size8),
              border: Border.all(color: AppColors.borderColorAD, width: .4)),
          child: SvgPicture.asset(AppConstant.ic_home),
        ),
        SizedBox(
          width: MySize.scaleFactorWidth * 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customTextMedium(
                    title: plan!,
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size16,
                    decoration: TextDecoration.underline),
                SizedBox(
                  width: MySize.scaleFactorWidth * 30,
                ),
                customTextMedium(
                    title: amount!,
                    color: textColor,
                    decoration: TextDecoration.underline),
                customTextRegular(
                    title: '\t\tCAD',
                    color: AppColors.hinttextcolor,
                    decoration: TextDecoration.underline),
              ],
            ),
            SizedBox(
              height: MySize.size16,
            ),
            Row(
              children: [
                customTextRegular(
                    title: dateTime!,
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size12,
                    color: AppColors.hinttextcolor),
                SizedBox(
                  width: MySize.scaleFactorWidth * 30,
                ),
                customButton(
                  height: MySize.size25,
                  width: MySize.scaleFactorWidth * 80,
                  text: status!,
                  fontSize: MySize.size14,
                  colors: status.contains('In Progress')
                      ? AppColors.parcelSecondaryColor8B
                      : AppColors.lineColorC8,
                  borderColor: status.contains('In Progress')
                      ? AppColors.parcelSecondaryColor8B
                      : AppColors.lineColorC8,
                  fontColor: status.contains('In Progress')
                      ? AppColors.line2B
                      : AppColors.hinttextcolor,
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}
