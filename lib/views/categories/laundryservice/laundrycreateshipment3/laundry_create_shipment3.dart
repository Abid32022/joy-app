import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/laundryservice/laundrycreateshipment3/component/reuse_row_shiment3.dart';
import '../laundrycreateshipment1/laundry_create_shipment1.dart';
import 'component/reuse_richtext_shipment3.dart';



class LaundryCreateShipment3 extends StatefulWidget {
  const LaundryCreateShipment3({super.key});

  @override
  State<LaundryCreateShipment3> createState() => _LaundryCreateShipment3State();
}

class _LaundryCreateShipment3State extends State<LaundryCreateShipment3> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(child: Scaffold(
       appBar: CustomAppBar(
        onBackTap: () {
    Get.back();
    },
      verifiedVisibile: false,
    ),
      backgroundColor: AppColors.backGroundColorFA,
      body:Column(children: [
        SizedBox(
          height: MySize.size22,
        ),
        Container(
          padding: EdgeInsets.only(left: MySize.size24,right: MySize.size24,top: MySize.size14,bottom: MySize.size2),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.lineColorAD),
            color: AppColors.whiteColorFF
          ),
          child: Column(children: [
            ReuseRow(
                text1: "Bridal",
                text2: "Start From",
                assetName: AppConstant.ic_drop_down),
            SizedBox(height: MySize.size2),
            Row(children: [
              customTextMedium(
                  title: "Bridal Gown",
                  fontSize: MySize.size16,
                  color: AppColors.blackColor00,
                  fontWeight: FontWeight.w500),
              Spacer(),
              ReUseRichText(text1: "\$50", text2: " CAD"),
              SizedBox(
                width: MySize.size8,
              ),
              customTextMedium(
                  title: "3",
                  fontSize: MySize.size18,
                  color: AppColors.currencyShortCodeColor60,
                  fontWeight: FontWeight.w500),
              SizedBox(
                width: MySize.size8,
              ),
              SvgPicture.asset(AppConstant.ic_delete,
              height: MySize.size20,
              ),
            ],),
            customTextRegular(
                title: "Bridal dresses will be assessed and assigned a price based on factors such as material quality, condition, and overall value.",
                fontSize: MySize.size14,
                color: AppColors.currencyShortCodeColor60,
                fontWeight: FontWeight.w400),

          ]),
        ),
        SizedBox(
          height: MySize.size20,
        ),
        Center(
          child: customDivider(
              width: MySize.scaleFactorWidth * 363,
              color: AppColors.lineColorAD),
        ),
        SizedBox(
          height: MySize.size10,
        ),
        Container(
          padding: EdgeInsets.only(left: MySize.size24,right: MySize.size23,top: MySize.size14,bottom: MySize.size2),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.lineColorAD),
            color: AppColors.whiteColorFF
          ),
          child: Column(children: [
            ReuseRow(
                text1: "Shoes & Bags",
                text2: "Start From",
                assetName: AppConstant.ic_drop_down),
            SizedBox(height: MySize.size2),
            Row(children: [
              customTextMedium(
                  title: "Shoes",
                  fontSize: MySize.size16,
                  color: AppColors.blackColor00,
                  fontWeight: FontWeight.w500),
              Spacer(),
              ReUseRichText(text1: "\$05", text2: " CAD"),
            ],),
            SizedBox(
              height: MySize.size10,
            ),
            Row(children: [
              customTextMedium(
                  title: "Bags",
                  fontSize: MySize.size16,
                  color: AppColors.blackColor00,
                  fontWeight: FontWeight.w500),
              Spacer(),
              ReUseRichText(text1: "\$10", text2: " CAD"),
            ],),
            SizedBox(
              height: MySize.size4
            ),
            customTextRegular(
                title: "Every shoe and bag will undergo assessment and pricing based on factors such as material, condition, and overall value.",
                fontSize: MySize.size14,
                color: AppColors.currencyShortCodeColor60,
                fontWeight: FontWeight.w400),

          ]),
        ),
        SizedBox(
          height: MySize.size20,
        ),
        Center(
          child: customDivider(
              width: MySize.scaleFactorWidth * 363,
              color: AppColors.lineColorAD),
        ),
        SizedBox(
          height: MySize.size10,
        ),
        Container(
          padding: EdgeInsets.only(left: MySize.size24,right: MySize.size23,top: MySize.size14,bottom: MySize.size2),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.lineColorAD),
            color: AppColors.whiteColorFF
          ),
          child: Column(children: [
            ReuseRow(
                text1: "Dresses & Suits",
                text2: "Start From",
                assetName: AppConstant.ic_drop_down),
            SizedBox(height: MySize.size2),
            Row(children: [
              customTextMedium(
                  title: "Casual Dress",
                  fontSize: MySize.size16,
                  color: AppColors.blackColor00,
                  fontWeight: FontWeight.w500),
              Spacer(),
              ReUseRichText(text1: "\$05", text2: " CAD"),
            ],),
            SizedBox(
              height: MySize.size10,
            ),
            Row(children: [
              customTextMedium(
                  title: "Formal Dress",
                  fontSize: MySize.size16,
                  color: AppColors.blackColor00,
                  fontWeight: FontWeight.w500),
              Spacer(),
              ReUseRichText(text1: "\$10", text2: " CAD"),
            ],),
            SizedBox(
              height: MySize.size10,
            ),
            Row(children: [
              customTextMedium(
                  title: "Evening Dress",
                  fontSize: MySize.size16,
                  color: AppColors.blackColor00,
                  fontWeight: FontWeight.w500),
              Spacer(),
              ReUseRichText(text1: "\$10", text2: " CAD"),
              SizedBox(
                width: MySize.size8,
              ),
              customTextMedium(
                  title: "3",
                  fontSize: MySize.size18,
                  color: AppColors.currencyShortCodeColor60,
                  fontWeight: FontWeight.w500),
              SizedBox(
                width: MySize.size8,
              ),
              SvgPicture.asset(AppConstant.ic_delete,
                height: MySize.size20,
              ),
            ],),
            SizedBox(
              height: MySize.size10,
            ),
            Row(children: [
              customTextMedium(
                  title: "Jumpsuit",
                  fontSize: MySize.size16,
                  color: AppColors.blackColor00,
                  fontWeight: FontWeight.w500),
              Spacer(),
              ReUseRichText(text1: "\$10", text2: " CAD"),
            ],),
            SizedBox(
                height: MySize.size4
            ),
            customTextRegular(
                title: "Every shoe and bag will undergo assessment and pricing based on factors such as material, condition, and overall value.",
                fontSize: MySize.size14,
                color: AppColors.currencyShortCodeColor60,
                fontWeight: FontWeight.w400),

          ]),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: MySize.size24),
          child: Column(children: [
            Center(
              child: customDivider(
                  width: MySize.scaleFactorWidth * 363,
                  color: AppColors.lineColorAD),
            ),
            SizedBox(height: MySize.size10),
            customButton(
              ontap: () {
              },
              borderRadius: MySize.size8,
              colors: AppColors.parcelSecondaryColor8B,
              text: "Continue",
              fontSize: MySize.size14,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: MySize.size17,
            ),
          ]),
        ),

      ]),
    ));
  }
}
