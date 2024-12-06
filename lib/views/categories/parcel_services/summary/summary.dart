import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/auth_bottomsheet.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import '../listingscreen/listing_screen.dart';
import 'Component/re_use_row.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  List delivery = [
    [Color(0xFFFFD7BD),Color(0xFFFFF4E5),"Regular delivery","\$10","3Day"],
    [Color(0xFFECECEC),Color(0xFFFCFCFC),"Cargo delivery","\$25","5Day"],
    [Color(0xFFECECEC),Color(0xFFFCFCFC),"Express delivery","\$50","1Day"],
    [Color(0xFFECECEC),Color(0xFFFCFCFC),"Instant delivery","\$70","Now"],
  ];
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
        body: SingleChildScrollView(

          child: Column(
            children: [
              // CustomAppBar(backArrow: (){
              //   Get.back();
              // },
              //   verifiedVisibile: false,
              // ),
              Padding(
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
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(top: MySize.size15),
                            padding: EdgeInsets.only(left: MySize.size15,right: MySize.size12,top: MySize.size12,bottom: MySize.size15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(MySize.size8),
                                border: Border.all(color: delivery[index][0]),
                                color: delivery[index][1]
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customTextRegular(
                                      title:delivery[index][2],
                                      fontSize: MySize.size17,
                                      fontWeight: FontWeight.w500),
                                  SizedBox(height: MySize.size10),
                                  RichText(text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Extra Charges ",
                                        style: TextStyle(
                                            fontSize: MySize.size16,
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.underline,
                                            decorationColor: Color(0xFF004E44) ,
                                            fontFamily: "EnnVisions",
                                            color: Color(0xFF004E44)
                                        ),
                                      ),
                                      TextSpan(
                                        text: delivery[index][3],
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
                                      TextSpan(
                                        text: " Delivery Day Estimate",
                                        style: TextStyle(
                                          fontSize: MySize.size14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "EnnVisions",
                                          decoration: TextDecoration.underline,
                                          decorationColor: Color(0xFF004E44) ,
                                          color: Color(0xFF004E44),
                                        ),
                                      ),
                                      TextSpan(
                                        text: " . ",
                                        style: TextStyle(
                                          fontSize: MySize.size14,
                                          fontFamily: "EnnVisions",
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.blackColor00,
                                        ),
                                      ),
                                      TextSpan(
                                        text: delivery[index][4],
                                        style: TextStyle(
                                            fontSize: MySize.size14,
                                          fontFamily: "EnnVisions",
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.underline,
                                            decorationColor: Color(0xff606060),
                                            color: Color(0xff606060),
                                        ),
                                      ),
                                    ]
                                  )),
                                  // Row(
                                  //   children: [
                                  //     customTextRegular(
                                  //         title: "Extra Charges ",
                                  //         fontSize: MySize.size16,
                                  //         fontWeight: FontWeight.w400,
                                  //         decoration: TextDecoration.underline,
                                  //         decorationColor: Color(0xFF004E44) ,
                                  //         color: Color(0xFF004E44)),
                                  //     customTextBold(
                                  //         title:delivery[index][3],
                                  //         fontSize: MySize.size17,
                                  //         fontWeight: FontWeight.w400,
                                  //         decoration: TextDecoration.underline
                                  //     ),
                                  //     customTextRegular(
                                  //         title: " CAD",
                                  //         fontSize: MySize.size16,
                                  //         fontWeight: FontWeight.w400,
                                  //         decoration: TextDecoration.underline,
                                  //         decorationColor: Color(0xff606060),
                                  //         color: Color(0xff606060)),
                                  //     Spacer(),
                                  //     customTextRegular(
                                  //         title: "Delivery Day Estimate",
                                  //         fontSize: MySize.size14,
                                  //         fontWeight: FontWeight.w400,
                                  //         decoration: TextDecoration.underline,
                                  //         decorationColor: Color(0xFF004E44) ,
                                  //         color: Color(0xFF004E44)),
                                  //     customTextBold(
                                  //       title: " . ",
                                  //       fontSize: MySize.size17,
                                  //       fontWeight: FontWeight.w400,),
                                  //     customTextRegular(
                                  //         title: delivery[index][4],
                                  //         fontSize: MySize.size14,
                                  //         fontWeight: FontWeight.w400,
                                  //         decoration: TextDecoration.underline,
                                  //         decorationColor: Color(0xff606060),
                                  //         color: Color(0xff606060)),
                                  //   ],
                                  // ),
                                ]),
                          );
                        },),
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
                              ReUseRow(text1: "Express delivery fees",text2: "\$50.00"),
                              SizedBox(height: MySize.size12),
                              ReUseRow(text1: "Small box fee",text2: "\$10.00"),
                              SizedBox(height: MySize.size12),
                              ReUseRow(text1: "Driver fee",text2: "\$4.49"),
                              SizedBox(height: MySize.size12),
                              ReUseRow(text1: "Occupancy taxes & fees",text2: "\$1.27"),
                              SizedBox(height: MySize.size12),
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: MySize.size16),
                                child: Row(
                                  children: [
                                    customTextRegular(
                                      title: "Total (CAD)",
                                      fontSize: MySize.size16,
                                      fontWeight: FontWeight.w500,),
                                    Spacer(),
                                    customTextRegular(
                                        title: "\$50.00",
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
                      SizedBox(height: MySize.size20),
                      Divider(
                        height: 1,
                        color: AppColors.lineColorAD,
                      ),
                      SizedBox(height: MySize.size15),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(MySize.size14),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(MySize.size8),
                                border: Border.all(color: AppColors.lineColorAD),
                                color: AppColors.lineColorC8
                            ),
                            child: SvgPicture.asset(AppConstant.ic_arrow_back,
                              height: MySize.size15,
                            ),
                          ),
                          SizedBox(width: MySize.size12),
                          Expanded(
                            child: customButton(
                              ontap: (){
                              Timer(Duration(seconds: 3), () {
                                Get.to(ListingScreenn());
                              });
                                authcustombottomsheet(
                                    context,
                                    text1: "Successful",
                                    text2:
                                    "Parcel delivery request submitted successfully! We're actively finding the best driver for you.",
                                    image: AppConstant.ic_success,);
                              },
                              height: MySize.scaleFactorHeight * 46,
                              text: "Pay Now",
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                              fontColor: Colors.white,
                              borderRadius: MySize.size8,
                              borderColor: Color(0xFFD8AA8B),
                              colors: Color(0xFFD8AA8B),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ));
    }
}