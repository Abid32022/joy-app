import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/parcel_services/summary/summary.dart';
import '../laundryaddresspoint/laundry_address_point.dart';
import '../laundrycreateshipment2/laundry_create_shipment2.dart';
import '../laundrysummary/laundry_summary.dart';
import '../scheduleyourcollection/schedule_your_collection.dart';
import 'component/reuse_container_shipment1.dart';

class LaundryCreateShipment1 extends StatefulWidget {
  const LaundryCreateShipment1({super.key});

  @override
  State<LaundryCreateShipment1> createState() => _LaundryCreateShipment1State();
}

class _LaundryCreateShipment1State extends State<LaundryCreateShipment1> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
        child: Scaffold(
          appBar:CustomAppBar(
            onBackTap: () {
              Get.back();
            },
            verifiedVisibile: false,
          ),
      backgroundColor: AppColors.backGroundColorFA,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MySize.size24, vertical: MySize.size25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextMedium(
                    title: "Shipment Address",
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w500),
                SizedBox(height: MySize.size15),
                customDivider(
                    width: double.infinity, color: AppColors.lineColorAD),
                SizedBox(height: MySize.size14),
                GestureDetector(
                  onTap: (){
                    Get.to(LaundrySummary());
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: MySize.size15,
                        right: MySize.size14,
                        top: MySize.size12,
                        bottom: MySize.size17),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(color: Color(0xFFB0E1CF)),
                      color: Color(0xFFE5F9F2),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customTextMedium(
                                  title: "Pickup - Point",
                                  fontSize: MySize.size17,
                                  fontWeight: FontWeight.w500),
                              SvgPicture.asset(
                                AppConstant.ic_green_edit,
                                height: MySize.size17,
                                color: Color(0xFF13AE76),
                              ),
                            ],
                          ),
                          SizedBox(height: MySize.size8),
                          customTextRegular(
                              title: "7250 Keele St, Vaughan, ON L4K 1Z8, Canada",
                              fontSize: MySize.size16,
                              decoration: TextDecoration.underline,
                              color: Color(0xFF13AE76),
                              decorationColor: Color(0xFF13AE76),
                              fontWeight: FontWeight.w400),
                          SizedBox(height: MySize.size10),
                          Row(
                            children: [
                              customTextRegular(
                                  title: "Building",
                                  fontSize: MySize.size14,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFF13AE76),
                                  decorationColor: Color(0xFF13AE76),
                                  fontWeight: FontWeight.w400),
                              customTextRegular(
                                  title: " . ",
                                  fontSize: MySize.size14,
                                  color: AppColors.detailsColor49,
                                  fontWeight: FontWeight.w400),
                              customTextRegular(
                                  title: "5G",
                                  fontSize: MySize.size14,
                                  decoration: TextDecoration.underline,
                                  color: AppColors.detailsColor49,
                                  decorationColor: AppColors.detailsColor49,
                                  fontWeight: FontWeight.w400),
                              SizedBox(width: MySize.size20),
                              customTextRegular(
                                  title: "Apartment Number",
                                  fontSize: MySize.size14,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFF13AE76),
                                  decorationColor: Color(0xFF13AE76),
                                  fontWeight: FontWeight.w400),
                              customTextRegular(
                                  title: " . ",
                                  fontSize: MySize.size14,
                                  color: AppColors.detailsColor49,
                                  fontWeight: FontWeight.w400),
                              customTextRegular(
                                  title: "434",
                                  fontSize: MySize.size14,
                                  decoration: TextDecoration.underline,
                                  color: AppColors.detailsColor49,
                                  decorationColor: AppColors.detailsColor49,
                                  fontWeight: FontWeight.w400),
                            ],
                          )
                        ]),
                  ),
                ),
                SizedBox(height: MySize.size20),
                GestureDetector(
                  onTap: (){
                    Get.to(LaundrySummary());
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: MySize.size15,
                        right: MySize.size14,
                        top: MySize.size12,
                        bottom: MySize.size17),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(color: Color(0xFFFBE1BF)),
                      color: Color(0xFFFFF5E7),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customTextMedium(
                                  title: "Collection in Person",
                                  fontSize: MySize.size17,
                                  fontWeight: FontWeight.w500),
                              SvgPicture.asset(
                                AppConstant.ic_green_edit,
                                height: MySize.size17,
                                color: Color(0xFF937D59),
                              ),
                            ],
                          ),
                          SizedBox(height: MySize.size8),
                          customTextRegular(
                              title: "Saturday, November 08, 2023",
                              fontSize: MySize.size16,
                              decoration: TextDecoration.underline,
                              color: Color(0xFF937D59),
                              decorationColor: Color(0xFF937D59),
                              fontWeight: FontWeight.w400),
                          SizedBox(height: MySize.size10),
                          Row(
                            children: [
                              customTextRegular(
                                  title: "09:00 pm",
                                  fontSize: MySize.size14,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFFB7A48C),
                                  decorationColor: Color(0xFFB7A48C),
                                  fontWeight: FontWeight.w400),
                              customTextRegular(
                                  title: " . ",
                                  fontSize: MySize.size14,
                                  color: AppColors.detailsColor49,
                                  fontWeight: FontWeight.w400),
                              customTextRegular(
                                  title: "10:00 pm",
                                  fontSize: MySize.size14,
                                  decoration: TextDecoration.underline,
                                  color: AppColors.detailsColor49,
                                  decorationColor: AppColors.detailsColor49,
                                  fontWeight: FontWeight.w400),
                            ],
                          )
                        ]),
                  ),
                ),
                SizedBox(height: MySize.size20),
                GestureDetector(
                  onTap: (){
                    Get.to(LaundrySummary());
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: MySize.size15,
                        right: MySize.size14,
                        top: MySize.size12,
                        bottom: MySize.size17),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(color: Color(0xFFB7C1E3)),
                      color: Color(0xFFE0E7FF),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customTextMedium(
                                  title: "Delivery at Door",
                                  fontSize: MySize.size17,
                                  fontWeight: FontWeight.w500),
                              SvgPicture.asset(
                                AppConstant.ic_blue_edit,
                                height: MySize.size17,
                              ),
                            ],
                          ),
                          SizedBox(height: MySize.size8),
                          customTextRegular(
                              title: "Saturday, November 08, 2023",
                              fontSize: MySize.size16,
                              decoration: TextDecoration.underline,
                              color: Color(0xFF304FBE),
                              decorationColor: Color(0xFF304FBE),
                              fontWeight: FontWeight.w400),
                          SizedBox(height: MySize.size10),
                          Row(
                            children: [
                              customTextRegular(
                                  title: "09:00 pm",
                                  fontSize: MySize.size14,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFF304FBE),
                                  decorationColor: Color(0xFF304FBE),
                                  fontWeight: FontWeight.w400),
                              customTextRegular(
                                  title: " . ",
                                  fontSize: MySize.size14,
                                  color: AppColors.detailsColor49,
                                  fontWeight: FontWeight.w400),
                              customTextRegular(
                                  title: "10:00 pm",
                                  fontSize: MySize.size14,
                                  decoration: TextDecoration.underline,
                                  color: AppColors.detailsColor49,
                                  decorationColor: AppColors.detailsColor49,
                                  fontWeight: FontWeight.w400),
                            ],
                          )
                        ]),
                  ),
                ),
                SizedBox(height: MySize.size20),
                Center(
                  child: customDivider(
                      width: MySize.scaleFactorWidth * 363,
                      color: AppColors.lineColorAD),
                ),
                SizedBox(height: MySize.size10),
                ReUseContainer(
                    title: "I need extra bags at collection",
                    assetName: AppConstant.ic_select,
                  backgroundColor: AppColors.whiteColorFF,
                  iconHeight: MySize.size20,
                ),
                SizedBox(height: MySize.size20),
                ReUseContainer(
                    title: "Driver Instructions ",
                    assetName: AppConstant.ic_add,
                  backgroundColor: AppColors.whiteColorFF,
                ),
                SizedBox(height: MySize.size24),
                Center(
                  child: customDivider(
                      width: MySize.scaleFactorWidth * 363,
                      color: AppColors.lineColorAD),
                ),
                SizedBox(height: MySize.size8),
                customTextMedium(
                    title: "Laundry Detials",
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w500),
                SizedBox(height: MySize.size20),
                ReUseContainer(
                  onTap: (){
                    Get.to(LaundryCreateShipment2());
                  },
                    title: "Laundry & Dry Cleaning",
                    fontWeight: FontWeight.w600,
                    textColor: Color(0xff1AC889),
                    backgroundColor: Color(0xFFE4FFF4),
                    borderColor: Color(0xFFCCF3E5),
                    assetName: AppConstant.ic_add),
                SizedBox(height: MySize.size12),
                ReUseContainer(
                    title: "Dry Cleaning",
                    fontWeight: FontWeight.w600,
                    textColor: Color(0xFF9DCB32),
                    backgroundColor: Color(0xFFF5FFE4),
                    borderColor: Color(0xFFE2EBCA),
                    assetName: AppConstant.ic_add),
                SizedBox(height: MySize.size12),
                ReUseContainer(
                    title: "Shoes & Bag Care",
                    fontWeight: FontWeight.w600,
                    textColor: Color(0xFFB172EC),
                    backgroundColor: Color(0xFFF5EBFD),
                    borderColor: Color(0xFFE2CEF5),
                    assetName: AppConstant.ic_add),
                SizedBox(height: MySize.size22),
                Center(
                  child: customDivider(
                      width: MySize.scaleFactorWidth * 363,
                      color: AppColors.lineColorAD),
                ),
                SizedBox(height: MySize.size10),
                customButton(
                  ontap: () {
                    // Get.to(LaundrySummary());
                  },
                  borderRadius: MySize.size8,
                  colors: AppColors.parcelSecondaryColor8B,
                  text: "Continue",
                  fontSize: MySize.size14,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
