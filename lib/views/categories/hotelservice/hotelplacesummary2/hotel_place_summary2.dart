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

import '../../../base/auth_bottomsheet.dart';
import '../../parcel_services/summary/Component/re_use_row.dart';

class HotelPlaceSummary2 extends StatefulWidget {
  const HotelPlaceSummary2({super.key});

  @override
  State<HotelPlaceSummary2> createState() => _HotelPlaceSummary2State();
}

class _HotelPlaceSummary2State extends State<HotelPlaceSummary2> {
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
          customTextMedium(
              title: "Summary",
              fontSize: MySize.size20,
              fontWeight: FontWeight.w500),
          SizedBox(
            height: MySize.size12,
          ),
          Container(
            padding: EdgeInsets.all(MySize.size15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(MySize.size8),
                border: Border.all(color: AppColors.lineColorAD)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              ReUseRow(text1: "\$40 X 5", text2: "\$200.00 CAD"),
              SizedBox(height: MySize.size12),
              ReUseRow(text1: "Discount", text2: "-\$10.00 CAD"),
              SizedBox(height: MySize.size12),
              ReUseRow(text1: "Cleaning feee", text2: "\$4.94 CAD"),
              SizedBox(height: MySize.size12),
              ReUseRow(text1: "Occupancy taxes & fees", text2: "\$1.27 CAD"),
              SizedBox(height: MySize.size12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MySize.size16),
                child: Row(
                  children: [
                    customTextMedium(
                      title: "Total (CAD)",
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w500,
                    ),
                    Spacer(),
                    customTextMedium(
                        title: "\$50.19",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline),
                    customTextRegular(
                        title: "CAD",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline),
                  ],
                ),
              ),
            ]),
          ),
          Spacer(),
          RichText(text: TextSpan(
              children: [
                TextSpan(text: "Note:",style: TextStyle(
                    fontSize: MySize.size14,
                    fontWeight: FontWeight.w500,
                  fontFamily: "EnnVisionsMedium",
                  color: AppColors.blackColor00
                ),),
                TextSpan(text: " Tailor your stay with flexible bookings – costs adjust based on chosen services. Enjoy seamless payments as we debit your wallet for the utilized services.:",style: TextStyle(
                    fontSize: MySize.size14,
                    fontWeight: FontWeight.w500,
                  fontFamily: "EnnVisions",
                  color: AppColors.blackColor00
                ),),

              ]

          ),
          ),
          Divider(
            thickness: 1,
            color: AppColors.lineColorC8,
          ),
          SizedBox(height: MySize.size15),
          Column(
            children: [
              customButton(
                ontap: () {
                  authcustombottomsheet(
                    context,
                    text1: "Successful",
                    text2:
                    "Parcel delivery request submitted successfully! We're actively finding the best driver for you.",
                    image: AppConstant.ic_success,
                  );
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
