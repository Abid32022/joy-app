import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/hotelservice/hotellisting/hotel_listing.dart';

import '../../parcel_services/summary/Component/re_use_row.dart';

class HotelPlaceSummary extends StatefulWidget {
  const HotelPlaceSummary({super.key});

  @override
  State<HotelPlaceSummary> createState() => _HotelPlaceSummaryState();
}

class _HotelPlaceSummaryState extends State<HotelPlaceSummary> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      backgroundColor: AppColors.backGroundColorFA,
      body: Padding(
        padding: EdgeInsets.all(MySize.size25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(MySize.size8),
                border: Border.all(color: AppColors.lineColorAD),
                color: AppColors.whiteColorFF),
            child: Row(children: [
              Container(
                width: MySize.scaleFactorWidth * 142,
                height: MySize.scaleFactorHeight * 135,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                ),
                child: Image.asset(AppConstant.house2, fit: BoxFit.fill),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MySize.size12,
                    top: MySize.size12,
                    bottom: MySize.size12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MySize.scaleFactorWidth * 170,
                      child: customTextMedium(
                          title: "Upstairs rental your next home in the sky",
                          fontSize: MySize.size18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: MySize.size5,
                    ),
                    customTextRegular(
                        title: "8 bed . 4 bath . 2 stories",
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.subTitleColor37),
                    SizedBox(
                      height: MySize.size5,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Rent",
                          style: TextStyle(
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.primaryColor62,
                            color: AppColors.primaryColor62,
                          )),
                      TextSpan(
                          text: " \$1,490 ",
                          style: TextStyle(
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.blackColor00,
                            color: AppColors.blackColor00,
                          )),
                      TextSpan(
                          text: "CAD",
                          style: TextStyle(
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.currencyShortCodeColor60,
                            color: AppColors.currencyShortCodeColor60,
                          )),
                    ]))
                  ],
                ),
              )
            ]),
          ),
          SizedBox(
            height: MySize.size20,
          ),
          Divider(
            thickness: 1,
            color: AppColors.lineColorC8,
          ),
          SizedBox(
            height: MySize.size20,
          ),
          Container(
            height: MySize.scaleFactorHeight * 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(MySize.size8),
                border: Border.all(color: AppColors.lineColorAD),
                color: AppColors.whiteColorFF),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: MySize.scaleFactorWidth * 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customTextMedium(
                                title: "Check - In",
                                fontSize: MySize.size16,
                                fontWeight: FontWeight.w500),
                            customTextRegular(
                                title: "1/9/2023",
                                fontSize: MySize.size16,
                                //  color: AppColors.lineColorC8,
                                fontWeight: FontWeight.w500),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      color: AppColors.lineColorC8,
                      height: MySize.scaleFactorHeight * 75,
                    ),
                    SizedBox(
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: MySize.scaleFactorWidth * 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customTextMedium(
                                title: "Check - In",
                                fontSize: MySize.size16,
                                fontWeight: FontWeight.w500),
                            customTextRegular(
                                title: "1/9/2023",
                                fontSize: MySize.size16,
                                fontWeight: FontWeight.w500),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MySize.size17,
          ),
          customTextMedium(
              title: "Extra Services",
              fontSize: MySize.size20,
              fontWeight: FontWeight.w500),
          SizedBox(
            height: MySize.size17,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.backGroundColorFA,
              borderRadius: BorderRadius.circular(MySize.size8),
              border: Border.all(color: AppColors.lineColorC8)
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 12,vertical: MySize.scaleFactorHeight * 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextRegular(
                      title: "Roofers",
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w400),
                  SvgPicture.asset(AppConstant.ic_add)
                ],
              ),
            ),
          ),






          
          Spacer(),
          Divider(
            thickness: 1,
            color: AppColors.lineColorC8,
          ),
          SizedBox(height: MySize.size15),
          Column(
            children: [
              customButton(
                ontap: () {
                  Get.to(HotelListing());
                },
                height: MySize.scaleFactorHeight * 46,
                text: "Next",
                fontSize: MySize.size16,
                fontWeight: FontWeight.w500,
                fontColor: Colors.black,
                borderRadius: MySize.size8,
                borderColor: Color(0xffD6DEDE),
                colors: Color(0xffD6DEDE),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
