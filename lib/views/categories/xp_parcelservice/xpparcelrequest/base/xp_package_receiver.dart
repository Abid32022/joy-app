import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_rich_text.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class XpPackageReceiver extends StatelessWidget {
  const XpPackageReceiver({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Container(
      //  height: MySize.scaleFactorHeight * 370,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySize.size8),
          border: Border.all(color: AppColors.borderColorAD, width: 1),
          color: AppColors.backGroundColorFA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MySize.scaleFactorHeight * 43,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(MySize.size8),
                    topRight: Radius.circular(MySize.size8)),
                color: Color(0xffF3F3F3)),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: MySize.size10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        customTextMedium(
                            title: "Tracking Id:",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),
                        customTextRegular(
                            title: " 1213",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    customButton(
                      height: MySize.scaleFactorHeight * 30,
                      width: MySize.scaleFactorWidth * 70,
                      colors: AppColors.lineColorC8,
                      borderColor: AppColors.lineColorC8,
                      borderRadius: MySize.size3,
                      text: 'Cash',
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w600,
                      fontColor: AppColors.placeHolderColor4F,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MySize.size14, horizontal: MySize.size12),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customTextMedium(
                              color: Color(0xff099A66),
                              title: "Pickup:",
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400),
                          SizedBox(
                            height: MySize.size5,
                          ),
                          customTextRegular(
                              color: Color(0xff099A66),
                              title: "Reception Desk:",
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400),
                          SizedBox(
                            height: MySize.size5,
                          ),
                          customTextRegular(
                              color: Color(0xff099A66),
                              title: "7250 Keele St",
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400),
                          SizedBox(
                            height: MySize.size5,
                          ),
                          customTextRegular(
                              color: Color(0xff099A66),
                              title: "Vaughan, ON",
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400),
                          SizedBox(
                            height: MySize.size5,
                          ),
                          customTextRegular(
                              color: Color(0xff099A66),
                              title: "L4K 1Z8, Canada",
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customTextMedium(
                              title: "Delivery:",
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400),
                          SizedBox(
                            height: MySize.size5,
                          ),
                          customTextRegular(
                              title: "John Snow",
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400),
                          SizedBox(
                            height: MySize.size5,
                          ),
                          customTextRegular(
                              title: "7250 Keele St",
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400),
                          SizedBox(
                            height: MySize.size5,
                          ),
                          customTextRegular(
                              title: "Vaughan, ON",
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400),
                          SizedBox(
                            height: MySize.size5,
                          ),
                          customTextRegular(
                              title: "L4K 1Z8, Canada",
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MySize.size14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        customTextRegular(
                            title: "Approx. Weight:",
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400),
                        customTextRegular(
                            title: "Approx. Weight:",
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    Row(
                      children: [
                        customTextRegular(
                            title: "Total:",
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400),
                        customTextRegular(
                            title: " \$ 200.40",
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MySize.size14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        customTextRegular(
                            title: "Dimension :",
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400),
                        customTextRegular(
                            title: " 20L . 6H . 50W",
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    Row(
                      children: [
                        customTextRegular(
                            title: "Total:Package:",
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400),
                        customTextRegular(
                            title: " 7 pcs",
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: MySize.scaleFactorHeight * 43,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(MySize.size8),
                    bottomRight: Radius.circular(MySize.size8)),
                color: Color(0xffF2A336)),
            child: Center(
                child: customTextMedium(
                  color: AppColors.whiteColorFF,
                    title: "DRIVER EN ROUTE",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}
