import 'package:flutter/material.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

Widget PayContainer({
  String? plan,
  String? amount,
  String accountNumber = '',
  String? dateTime,
  String? status,
  Color textColor = AppColors.blackColor0,

}) {

  return Container(
    width: MySize.scaleFactorWidth * 384,
    padding: EdgeInsets.symmetric(
        horizontal: MySize.size18, vertical: MySize.scaleFactorHeight * 9),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(MySize.size10),
        border: Border.all(color: AppColors.borderColorAD, width: .4)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customTextMedium(
                title: plan!,
                fontWeight: FontWeight.w500,
                fontSize: MySize.size16,
                ),
            SizedBox(
              width: MySize.scaleFactorWidth * 80,
            ),
            customTextMedium(
                title: amount!,
                color: textColor,
                fontSize: MySize.size16,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
            decorationColor: textColor),
            customTextRegular(
                title: '\t\tCAD',
                color: AppColors.hinttextcolor,
                decoration: TextDecoration.underline),
          ],
        ),
        SizedBox(
          height: MySize.size15,
        ),
        customTextMedium(title: accountNumber,fontSize: MySize.size16,fontWeight: FontWeight.w500,),
        SizedBox(height: MySize.scaleFactorHeight * 9,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customTextRegular(
                title: dateTime!,
                fontWeight: FontWeight.w500,
                fontSize: MySize.size12,
                color: AppColors.hinttextcolor),
            customButton(
              height: MySize.size25,
              width: MySize.scaleFactorWidth * 80,
              text: status!,
              fontSize: MySize.size14,
              colors: status.contains('In Progress')
                  ? AppColors.selectedcontainerbordercolor
                  : AppColors.lineColorC8,
              borderColor: status.contains('In Progress')
                  ? AppColors.selectedcontainerbordercolor
                  : AppColors.lineColorC8,
              fontColor: status.contains('In Progress')
                  ? AppColors.errorFailureColor26
                  : AppColors.hinttextcolor,
            )
          ],
        )
      ],
    ),
  );
}
