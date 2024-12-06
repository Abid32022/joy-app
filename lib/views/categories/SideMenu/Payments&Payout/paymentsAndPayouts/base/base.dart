import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

Widget PayoutContainer({
  String? row1Text,
  void Function()? row1Tap,
  String? row2Text,
  void Function()? row2Tap,
  String? row3Text,
  void Function()? row3Tap,


}){
  return Container(
    padding: EdgeInsets.only(left: MySize.size10, right: MySize.size10, top: MySize.size23, bottom: MySize.size8),
    decoration: BoxDecoration(
      color: AppColors.whiteColorFF,
      border: Border.all(color: AppColors.borderColorAD, width: .5, ),
      borderRadius: BorderRadius.circular(MySize.size8),
    ),
    child: Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: MySize.size6),
          child: InkWell(
            onTap: row1Tap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customTextRegular(title: row1Text!, fontSize: MySize.size16, fontWeight: FontWeight.w400,),
                SvgPicture.asset(AppConstant.ic_detail_page, height: MySize.size16),
              ],
            ),
          ),
        ),
        SizedBox(height: MySize.size18,),
        customDivider(width: MySize.scaleFactorWidth * 360),
        SizedBox(height: MySize.size20,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: MySize.size6),
          child: InkWell(
            onTap: row2Tap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customTextRegular(title: row2Text!, fontSize: MySize.size16, fontWeight: FontWeight.w400,),
                SvgPicture.asset(AppConstant.ic_detail_page ,height: MySize.size16),
              ],
            ),
          ),
        ),
        SizedBox(height: MySize.size18,),
        customDivider(width: MySize.scaleFactorWidth * 360),
        SizedBox(height: MySize.size19,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: MySize.size6),
          child: InkWell(
            onTap: row3Tap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customTextRegular(title: row3Text!, fontSize: MySize.size16, fontWeight: FontWeight.w400,),
                SvgPicture.asset(AppConstant.ic_detail_page, height: MySize.size16),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
