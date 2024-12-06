import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../../sidemenu/loginandsecurity/login_and_security.dart';
class GovernmentId extends StatefulWidget {
  const GovernmentId({super.key});

  @override
  State<GovernmentId> createState() => _GovernmentIdState();
}

class _GovernmentIdState extends State<GovernmentId> {
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
          padding:  EdgeInsets.symmetric(horizontal:MySize.scaleFactorWidth * 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size14,
              ),
              customTextMedium(
                  title: "Choose an ID type to add",
                  fontSize: MySize.size22,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.size14,
              ),
              GestureDetector(
                onTap: (){
                  Get.to(LoginAndSecurity());
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    color: AppColors.backGroundColorFA,
                    border: Border.all(
                      color: AppColors.lineColorC8,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(vertical: MySize.size20,horizontal: MySize.size14),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customTextRegular(
                                title: "Issuing country/region",
                                fontSize: MySize.size15,
                                color: AppColors.lineColor60,
                                fontWeight: FontWeight.w400),
                            customTextRegular(
                                title: "Canada",
                                fontSize: MySize.size18,
                                color: AppColors.blackColor0,
                                fontWeight: FontWeight.w400)
                          ],
                        ),
                        SvgPicture.asset(AppConstant.ic_down)
        
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size36,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  color: AppColors.backGroundColorFA,
                  border: Border.all(
                    color: AppColors.lineColorC8,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: MySize.size20,horizontal: MySize.size14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customTextRegular(
                              title: "Driver’s license",
                              fontSize: MySize.size18,
                              color: AppColors.blackColor0,
                              fontWeight: FontWeight.w400),
                          SvgPicture.asset(AppConstant.ic_for),
                        ],
                      ),
                      SizedBox(
                        height: MySize.size10,
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.lineColorC8,
                      ),
                      SizedBox(
                        height: MySize.size10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customTextRegular(
                              title: "Passport",
                              fontSize: MySize.size18,
                              color: AppColors.blackColor0,
                              fontWeight: FontWeight.w400),
                          SvgPicture.asset(AppConstant.ic_for),
                        ],
                      ),
                      SizedBox(
                        height: MySize.size10,
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.lineColorC8,
                      ),
                      SizedBox(
                        height: MySize.size10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customTextRegular(
                              title: "Identity card",
                              fontSize: MySize.size18,
                              color: AppColors.blackColor0,
                              fontWeight: FontWeight.w400),
                          SvgPicture.asset(AppConstant.ic_for),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size23,
              ),
              DottedBorder(
                color: AppColors.lineColorC8,
                radius: Radius.circular(MySize.size10),
                child: Padding(
                padding:  EdgeInsets.symmetric(vertical: MySize.size19,horizontal: MySize.size12),
                child: RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "Your ID will be handled according to our",style: TextStyle(
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "EnnVisions",
                      color: AppColors.placeHolderColor4F
                    )),
                    TextSpan(text: "Privacy Policy",style: TextStyle(
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "EnnVisionsMedium",
                      color: AppColors.blackColor0,
                      decoration: TextDecoration.underline
                    )),
                    TextSpan(text: "Your ID will be handled according to our",style: TextStyle(
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "EnnVisions",
                        color: AppColors.placeHolderColor4F
                    )),
                  ]
                ),
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
