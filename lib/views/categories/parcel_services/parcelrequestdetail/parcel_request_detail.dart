import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_rich_text.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../parcelpackagecollected/parcel_package_collected.dart';
import '../parceltrackinglive/parcel_tracking_live.dart';
import 'base/destination_detail.dart';
import 'base/parcel_tracking_histroy.dart';
import 'base/received_detail.dart';
import 'base/tracking_detail.dart';


class ParcelRequestDetail extends StatefulWidget {
  const ParcelRequestDetail({super.key});

  @override
  State<ParcelRequestDetail> createState() => _ParcelRequestDetailState();
}

class _ParcelRequestDetailState extends State<ParcelRequestDetail> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          onBackTap: () {
            Get.back();
          },
        ),
        backgroundColor: AppColors.backGroundColorFA,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CustomAppBar(backArrow: () {
              //   Get.back();
              // }),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MySize.size18,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomRichText(
                            text1: "Tracking Id:",
                            text2: " 1213",
                            fontSize: MySize.size18),
                        customButton(
                          height: MySize.scaleFactorHeight * 27,
                          width: MySize.scaleFactorWidth * 120,
                          colors: AppColors.lineColorC8,
                          borderRadius: MySize.size3,
                          text: 'Order Accept',
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500,
                          fontColor: AppColors.textColor67,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MySize.size14,
                    ),
                    TrackingDetail(
                      mapOnTap: (){
                        Get.to(ParcelTrackingLive());
                      },
                    ),
                    SizedBox(
                      height: MySize.size14,
                    ),
                    customTextMedium(
                        title: 'Destination',
                        fontSize: MySize.size20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor0),
                    SizedBox(
                      height: MySize.size7,
                    ),
                    DestinationDetail(),
                    SizedBox(
                      height: MySize.size14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: 'Live Tracking',
                            fontSize: MySize.size20,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackColor0),
                        InkWell(
                          onTap: (){
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(borderRadius: 
                              BorderRadius.only(
                                topRight: Radius.circular(MySize.size12),
                                topLeft: Radius.circular(MySize.size12)
                              ),
                              ),
                              context: context, builder: (context) {
                              return Parcel_tracking_histroy();
                            },);
                          },
                          child: customTextRegular(
                              title: ' History',
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackColor0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MySize.size14,
                    ),
                    Container(
                      //  height: MySize.scaleFactorHeight * 260,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MySize.size8),
                          color: AppColors.successColor7C),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: MySize.scaleFactorHeight * 10,
                                horizontal: MySize.scaleFactorWidth * 13),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomRichText(
                                  text1: "03:30 PM :",
                                  text2: " Order Received",
                                  fontSize: MySize.size16,
                                  color: AppColors.backGroundColorFA,
                                ),
                                SizedBox(
                                  height: MySize.size8,
                                ),
                                customTextRegular(
                                    title:
                                        '7250 Keele St, Vaughan, ON L4K 1Z8, Canada',
                                    fontSize: MySize.size16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.backGroundColorFA),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 11,
                    ),
                    customTextMedium(
                        title: 'Packages',
                        fontSize: MySize.size20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor0),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 11,
                    ),
                    InkWell(
                      onTap: (){
                      Get.to(ParcelPackageCollected());
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(MySize.size8),
                            border: Border.all(
                                color: AppColors.borderColorAD, width: 1),
                            color: AppColors.backGroundColorFA),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: MySize.size12, horizontal: MySize.size14),
                          child: Row(
                            children: [
                              customTextRegular(
                                  title: 'Collected Packages',
                                  fontSize: MySize.size16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor0),
                              Spacer(),
                              customTextRegular(
                                  title: '5 Box',
                                  fontSize: MySize.size16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor0),
                              SizedBox(
                                width: MySize.scaleFactorWidth * 10,
                              ),
                              SvgPicture.asset(
                                AppConstant.ic_forward,
                                height: MySize.scaleFactorHeight * 17,
                                width: MySize.scaleFactorWidth * 17,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 13,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MySize.size8),
                          border: Border.all(
                              color: AppColors.borderColorAD, width: 1),
                          color: AppColors.backGroundColorFA),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MySize.size12, horizontal: MySize.size14),
                        child: Row(
                          children: [
                            customTextRegular(
                                title: 'Canceled Packages',
                                fontSize: MySize.size16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.blackColor0),
                            Spacer(),
                            customTextRegular(
                                title: '2 Box',
                                fontSize: MySize.size16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.blackColor0),
                            SizedBox(
                              width: MySize.scaleFactorWidth * 10,
                            ),
                            SvgPicture.asset(
                              AppConstant.ic_forward,
                              height: MySize.scaleFactorHeight * 17,
                              width: MySize.scaleFactorWidth * 17,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 13,
                    ),
                    customTextRegular(
                        title: 'Received Info',
                        fontSize: MySize.size20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor0),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 11,
                    ),
                    ReceivedDetail(),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
