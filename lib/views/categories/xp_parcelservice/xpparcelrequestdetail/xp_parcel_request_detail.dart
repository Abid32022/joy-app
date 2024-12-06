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
import 'package:joyapp/views/categories/parcel_services/parcelrequestdetail/base/parcel_tracking_histroy.dart';
import 'package:joyapp/views/categories/parcel_services/parcelrequestdetail/base/received_detail.dart';
import 'package:joyapp/views/categories/xp_parcelservice/xpparcelpackagecancelled/xp_parcel_package_cancelled.dart';
import 'package:joyapp/views/categories/xp_parcelservice/xpparcelrequestdetail/base/xp_received_detail.dart';
import 'package:joyapp/views/categories/xp_parcelservice/xpparcelrequestdetail/base/xp_tracking_detail.dart';
import 'package:joyapp/views/categories/xp_parcelservice/xpparceltrackinglive/xp_parcel_tracking_live.dart';

import 'base/xp_destination_detail.dart';
class XpParelRequestDetail extends StatefulWidget {
  const XpParelRequestDetail({super.key});

  @override
  State<XpParelRequestDetail> createState() => _XpParelRequestDetailState();
}

class _XpParelRequestDetailState extends State<XpParelRequestDetail> {
  List data = [
    ["03:30 PM :"," Order Received","Your order has been successfully received and is being processed."],
    ["03:31 PM :"," En Route to Pickup","Our delivery person is on the way to the pickup location."],
    ["03:31 PM :"," En Route to Pickup","Our delivery person is on the way to the pickup location."],
    ["03:45 PM :"," Arrived at Pickup Location","The delivery person has reached the pickup location and is preparing to collect the parcel."],
  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: CustomAppBar(
        onBackTap: (){
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                  Row(
                    children: [
                      customTextMedium(
                          title: "Tracking Id:",
                          fontSize: MySize.size18,
                          fontWeight: FontWeight.w400),
                      customTextRegular(
                          title: " 1213",
                          fontSize: MySize.size18,
                          fontWeight: FontWeight.w400),
                    ],
                  ),
                  customButton(
                    height: MySize.scaleFactorHeight * 27,
                    width: MySize.scaleFactorWidth * 120,
                    colors: AppColors.lineColorC8,
                    borderColor: AppColors.lineColorC8,
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
              XpTrackingDetail(
                mapOnTap: (){
                  Get.to(XpParcelTrackingLive());
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
              XpDestinationDetail(),
              SizedBox(
                height: MySize.size14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextMedium(
                      title: 'Status',
                      fontSize: MySize.size20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor0),
                  customTextRegular(
                      title: ' History',
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor0),
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
                  title: 'Saturday, November 08, 2023',
                  color: AppColors.disableTextColor90,
                  fontWeight: FontWeight.w400,
                  fontSize: MySize.size16),
              SizedBox(
                height: MySize.scaleFactorHeight * 10,
              ),
            ListView.builder(
              itemCount: data.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return    Padding(
                  padding:  EdgeInsets.only(bottom: MySize.size30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.circle,
                        color: AppColors.successColor7C,
                        size: MySize.size12,
                      ),
                      SizedBox(
                        width: MySize.scaleFactorWidth * 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              customTextMedium(
                                  title: data[index][0],
                                  fontSize: MySize.size14,
                                  color: Color(0xff0762D8)),
                              customTextRegular(
                                  title: data[index][1],
                                  fontSize: MySize.size14,
                                  color: Color(0xff0762D8)),
                            ],
                          ),
                          SizedBox(
                            height: MySize.scaleFactorHeight * 5,
                          ),
                          SizedBox(
                            width: MySize.scaleFactorWidth * 300,
                            child: customTextMedium(
                                title:  data[index][2],
                                color: AppColors.blackColor0,
                                fontWeight: FontWeight.w400,
                                fontSize: MySize.size14),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },),
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
                 Get.to(XpParcelPackageCancelled());
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
              XpReceivedDetail(),
              SizedBox(
                height: MySize.scaleFactorHeight * 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
