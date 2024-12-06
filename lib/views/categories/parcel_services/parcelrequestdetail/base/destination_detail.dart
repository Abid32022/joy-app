import 'package:flutter/material.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_rich_text.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class DestinationDetail extends StatelessWidget {
  const DestinationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Container(
      //  height: MySize.scaleFactorHeight * 260,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySize.size8),
          border: Border.all(color: AppColors.borderColorAD, width: 1),
          color: AppColors.backGroundColorFA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MySize.scaleFactorHeight * 10,
                horizontal: MySize.scaleFactorWidth * 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: "From :",
                      style: TextStyle(
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor0,
                          fontFamily: 'EnnVisions'),
                      children: [
                        TextSpan(
                          text: " Saturday, November 08, 2023 .  03:00 PM",
                          style: TextStyle(
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackColor0,
                              fontFamily: 'EnnVisions'),
                        ),
                      ]
                  ),
                ),
                customTextRegular(
                    title: '7250 Keele St, Vaughan, ON L4K 1Z8, Canada',
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textColor6c),
              ],
            ),
          ),
          Divider(
            color: AppColors.lineColorC8,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MySize.scaleFactorHeight * 10,
                horizontal: MySize.scaleFactorWidth * 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: "Shipping :",
                      style: TextStyle(
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor0,
                          fontFamily: 'EnnVisions'),
                      children: [
                        TextSpan(
                          text: " Saturday, November 08, 2023 . 05:30 PM",
                          style: TextStyle(
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackColor0,
                              fontFamily: 'EnnVisions'),
                        ),
                      ]
                  ),
                ),
                customTextRegular(
                    title: '7250 Keele St, Vaughan, ON L4K 1Z8, Canada',
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.errorFailureColor26),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
