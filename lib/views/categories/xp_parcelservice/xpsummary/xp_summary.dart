import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/auth_bottomsheet.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/xp_parcelservice/xpparcelrequest/xp_parcel_request.dart';
import 'package:joyapp/views/categories/xp_parcelservice/xpsummary/base/summary_reuse_row.dart';
class XpSummary extends StatefulWidget {
  const XpSummary({super.key});

  @override
  State<XpSummary> createState() => _XpSummaryState();
}

class _XpSummaryState extends State<XpSummary> {
  List delivery = [
    ["Regular","\$10","3Day"],
    ["Cargo","\$25","5Day"],
    ["Express","\$50","1Day"],
    ["Instant","\$70","Now"],
  ];
  String deliveryType = "";
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
          padding:  EdgeInsets.symmetric(horizontal: MySize.size24,vertical: MySize.size18),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextMedium(
                    title: "Delivery Type",
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w500),
                ListView.builder(
                  itemCount: delivery.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        deliveryType = delivery[index][0];
                        setState(() {

                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: MySize.size15),
                        padding: EdgeInsets.only(left: MySize.size15,
                            right: MySize.size12,
                            top: MySize.size12,
                            bottom: MySize.size15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(MySize.size8),
                            border: Border.all(color: deliveryType == delivery[index][0] ?Color(0xffEFEFEF) :AppColors.lineColorC8),
                            color: deliveryType == delivery[index][0] ?Color(0xffEFEFEF) :AppColors.backGroundColorFA
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customTextMedium(
                                  title:delivery[index][0],
                                  fontSize: MySize.size17,
                                  fontWeight: FontWeight.w500),
                              SizedBox(height: MySize.size10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: delivery[index][1],
                                          style: TextStyle(
                                              fontSize: MySize.size16,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.blackColor00,
                                              fontFamily: "EnnVisions",
                                              decoration: TextDecoration.underline
                                          ),
                                        ),
                                        TextSpan(
                                          text: " CAD",
                                          style: TextStyle(
                                            fontSize: MySize.size16,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "EnnVisions",
                                            decoration: TextDecoration.underline,
                                            decorationColor: Color(0xff606060),
                                            color: Color(0xff606060),
                                          ),
                                        ),
                                      ]
                                  ),),
                                  RichText(text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Estimate",
                                          style: TextStyle(
                                              fontSize: MySize.size16,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff1573ED),
                                              fontFamily: "EnnVisions",
                                              decorationColor:Color(0xff1573ED),
                                              decoration: TextDecoration.underline
                                          ),
                                        ),
                                        TextSpan(
                                          text: " . ",
                                          style: TextStyle(
                                              fontSize: MySize.size16,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.blackColor00,
                                          ),
                                        ),
                                        TextSpan(
                                          text: delivery[index][2],
                                          style: TextStyle(
                                            fontSize: MySize.size16,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "EnnVisions",
                                            decoration: TextDecoration.underline,
                                            decorationColor: Color(0xff606060),
                                            color: Color(0xff606060),
                                          ),
                                        ),
                                      ]
                                  ),),
                                ],
                              ),
                            ]
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: MySize.size20),
                Divider(
                  height: 1,
                  color: AppColors.lineColorAD,
                ),
                SizedBox(height: MySize.size20),
                customTextMedium(
                    title: "Estimate Fare",
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w500),
                SizedBox(height: MySize.size10),
                Container(
                  padding: EdgeInsets.all(MySize.size15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(color: AppColors.lineColorAD)
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SummaryReuseRow(text1: "Express",text2: "\$50.00"),
                        SizedBox(height: MySize.size12),
                        SummaryReuseRow(text1: "Small box fee",text2: "\$10.00"),
                        SizedBox(height: MySize.size12),
                        SummaryReuseRow(text1: "Delivery charge",text2: "\$4.49"),
                        SizedBox(height: MySize.size12),
                        SummaryReuseRow(text1: "Taxes & fees",text2: "\$1.27"),
                        SizedBox(height: MySize.size12),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: MySize.size16),
                          child: Row(
                            children: [
                              customTextMedium(
                                title: "TOTAL (CAD)",
                                fontSize: MySize.size16,
                                fontWeight: FontWeight.w500,),
                              Spacer(),
                              customTextRegular(
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
              ]),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MySize.size24),
          child: Column(
            children: [
              Divider(
                height: 1,
                color: AppColors.lineColorAD,
              ),
              SizedBox(height: MySize.size15),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      padding: EdgeInsets.all(MySize.size14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MySize.size8),
                          border: Border.all(color: AppColors.lineColorAD),
                          color: AppColors.lineColorC8),
                      child: SvgPicture.asset(
                        AppConstant.ic_arrow_back,
                        height: MySize.size15,
                      ),
                    ),
                  ),
                  SizedBox(width: MySize.size12),
                  Expanded(
                    child: customButton(
                        ontap: (){
                          Timer(Duration(seconds: 3), () {
                            Get.to(XpParcelRequest());
                          });
                          authcustombottomsheet(
                            context,
                            text1: "Successful",
                            text2:
                            "Parcel delivery request submitted successfully! We're actively finding the best driver for you.",
                            image: AppConstant.ic_success,);
                        },
                        width: double.infinity,
                        height: MySize.scaleFactorHeight * 46,
                        text: "Pay Now",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w500,
                        fontColor: Colors.black,
                        borderRadius: MySize.size8,
                        borderColor: AppColors.lineColorC8,
                        colors: AppColors.lineColorC8),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
