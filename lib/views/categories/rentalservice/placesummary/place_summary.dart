import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/auth_bottomsheet.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../../parcel_services/summary/Component/re_use_row.dart';

class PlaceSummary extends StatefulWidget {
  const PlaceSummary({super.key});

  @override
  State<PlaceSummary> createState() => _PlaceSummaryState();
}

class _PlaceSummaryState extends State<PlaceSummary> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySize.size25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  border: Border.all(color: AppColors.lineColorAD),
                  color: AppColors.whiteColorFF),
              child: Row(
                  children: [
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
                              decorationColor:
                                  AppColors.currencyShortCodeColor60,
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
                  height: MySize.scaleFactorHeight * 150,
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
                              padding:  EdgeInsets.only(left: MySize.scaleFactorWidth * 15),
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
                              padding:  EdgeInsets.only(left: MySize.scaleFactorWidth * 15),
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
                      Divider(
                        thickness: 1,
                        height: 0,
                        color: AppColors.lineColorC8,
                      ),
                      SizedBox(
                        height: MySize.size15,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: MySize.scaleFactorWidth * 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customTextMedium(
                                title: "Guest",
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
                    ],
                  ),
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                Container(
                  padding: EdgeInsets.all(MySize.size15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(color: AppColors.lineColorAD)
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ReUseRow(text1: "\$40 X 5",text2: "\$200.00 CAD"),
                        SizedBox(height: MySize.size12),
                        ReUseRow(text1: "Discount",text2: "-\$10.00 CAD"),
                        SizedBox(height: MySize.size12),
                        ReUseRow(text1: "Cleaning feee",text2: "\$4.94 CAD"),
                        SizedBox(height: MySize.size12),
                        ReUseRow(text1: "Occupancy taxes & fees",text2: "\$1.27 CAD"),
                        SizedBox(height: MySize.size12),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: MySize.size16),
                          child: Row(
                            children: [
                              customTextMedium(
                                title: "Total (CAD)",
                                fontSize: MySize.size16,
                                fontWeight: FontWeight.w500,),
                              Spacer(),
                              customTextMedium(
                                  title: "\$50.19",
                                  fontSize: MySize.size16,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline
                              ),
                              customTextRegular(
                                  title: "CAD",
                                  fontSize: MySize.size16,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),

                Divider(
                  thickness: 1,
                  color: AppColors.lineColorC8,
                ),
                SizedBox(height: MySize.size15),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(MySize.size14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MySize.size8),
                          border: Border.all(color: AppColors.lineColorAD),
                          color:Color(0xffD6DEDE)
                      ),
                      child: SvgPicture.asset(AppConstant.ic_arrow_back,
                        height: MySize.size15,
                      ),
                    ),
                    SizedBox(width: MySize.size12),
                    Expanded(
                      child: customButton(
                        ontap: (){
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
                    ),
                  ],
                ),
        
          ]
              ),
        ),
      ),
    );
  }
}
