import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import '../laundrycreateshipment3/laundry_create_shipment3.dart';
import 'component/reuse_container_shipment2.dart';
import 'component/reuse_richtext_shipment2.dart';



class LaundryCreateShipment2 extends StatefulWidget {
  const LaundryCreateShipment2({super.key});

  @override
  State<LaundryCreateShipment2> createState() => _LaundryCreateShipment2State();
}

class _LaundryCreateShipment2State extends State<LaundryCreateShipment2> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(child: Scaffold(
      appBar:  CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      backgroundColor: AppColors.backGroundColorFA,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding:  EdgeInsets.all(MySize.size24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextMedium(
                    title: "Dry Cleaning & Laundry",
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w500),
                SizedBox(
                  height: MySize.size18,
                ),
                Container(
                  padding: EdgeInsets.all(MySize.size14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    border: Border.all(color: AppColors.lineColorAD),
                    color: AppColors.whiteColorFF
                  ),
                  child: Column(children: [
                    Row(children: [
                      customTextMedium(
                          title: "Clean & Press",
                          fontSize: MySize.size18,
                          fontWeight: FontWeight.w500),
                      Spacer(),
                      SvgPicture.asset(AppConstant.ic_forward)
                    ]),
                    SizedBox(
                      height: MySize.size10,
                    ),
                    Row(children: [
                      ReUseRichText(
                        text1: "Bridal ",
                        text2: "\$549",
                      ),
                      SizedBox(
                        width: MySize.size6,
                      ),
                      ReUseRichText(
                        text1: "Shoes & Bags ",
                        text2: "\$343",
                      ),
                    ],),
                    SizedBox(
                      height: MySize.size10,
                    ),
                    Row(children: [
                      ReUseRichText(
                        text1: "Dresses & Suits ",
                        text2: "\$343",
                      ),
                    ],),
                  ]),
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                ReUseContainer(
                  title: "Home Care",
                  assetName:AppConstant.ic_forward,
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                ReUseContainer(
                  title: "Wast & Fold",
                  assetName:AppConstant.ic_forward,
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                ReUseContainer(
                  title: "Press Only",
                  assetName:AppConstant.ic_forward,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.23,
                ),
                Center(
                  child: customDivider(
                      width: MySize.scaleFactorWidth * 363,
                      color: AppColors.lineColorAD),
                ),
                SizedBox(height: MySize.size10),
                customButton(
                  ontap: () {
                    Get.to(LaundryCreateShipment3());
                  },
                  borderRadius: MySize.size8,
                  colors: AppColors.parcelSecondaryColor8B,
                  text: "Continue",
                  fontSize: MySize.size14,
                  fontWeight: FontWeight.w500,
                ),
            ],),
          )
        ]),
      ),
    ));
  }
}
