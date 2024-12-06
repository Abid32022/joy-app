import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../notificationsetting/notification_setting.dart';

class LoginAndSecurity extends StatefulWidget {
  const LoginAndSecurity({super.key});

  @override
  State<LoginAndSecurity> createState() => _LoginAndSecurityState();
}

class _LoginAndSecurityState extends State<LoginAndSecurity> {
  @override
  Widget build(BuildContext context) {
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
          padding:
              EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size14,
              ),
              GestureDetector(
                onTap: (){
                  Get.to(NotificationSetting());
                },
                child: customTextMedium(
                    title: "Login & Security",
                    fontSize: MySize.size22,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: MySize.size14,
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
                  padding: EdgeInsets.symmetric(
                      vertical: MySize.size20, horizontal: MySize.size14),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customTextRegular(
                              title: "Password",
                              fontSize: MySize.size15,
                              color: AppColors.lineColor60,
                              fontWeight: FontWeight.w400),
                          customTextRegular(
                              title: "Last updated 3 months ago",
                              fontSize: MySize.size18,
                              color: Color(0xff4F4F4F),
                              fontWeight: FontWeight.w400)
                        ],
                      ),
                      SvgPicture.asset(AppConstant.ic_green_edit)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size14,
              ),
              customTextMedium(
                  title: "Social account",
                  fontSize: MySize.size22,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.size14,
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
                  padding: EdgeInsets.symmetric(
                      vertical: MySize.size20, horizontal: MySize.size14),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customTextRegular(
                                  title: "Facebook",
                                  fontSize: MySize.size15,
                                  color: AppColors.lineColor60,
                                  fontWeight: FontWeight.w400),
                              customTextRegular(
                                  title: "Not connected",
                                  fontSize: MySize.size18,
                                  color: Color(0xff4F4F4F),
                                  fontWeight: FontWeight.w400)
                            ],
                          ),
                          customTextMedium(
                              title: "Connect",
                              fontSize: MySize.size15,
                              color: Color(0xff008070),
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.lineColorC8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customTextRegular(
                                  title: "Google",
                                  fontSize: MySize.size15,
                                  color: AppColors.lineColor60,
                                  fontWeight: FontWeight.w400),
                              customTextRegular(
                                  title: "Connected",
                                  fontSize: MySize.size18,
                                  color: Color(0xff4F4F4F),
                                  fontWeight: FontWeight.w400)
                            ],
                          ),
                          customTextMedium(
                              title: "Disconnect",
                              fontSize: MySize.size15,
                              color: Color(0xff008070),
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size14,
              ),
              customTextMedium(
                  title: "Device History",
                  fontSize: MySize.size22,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.size14,
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
                  padding: EdgeInsets.symmetric(
                      vertical: MySize.size20, horizontal: MySize.size14),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customTextRegular(
                                  title: "Session",
                                  fontSize: MySize.size15,
                                  color: AppColors.lineColor60,
                                  fontWeight: FontWeight.w400),
                              customTextRegular(
                                  title: "7 November 2023 at 01:30",
                                  fontSize: MySize.size18,
                                  color: Color(0xff4F4F4F),
                                  fontWeight: FontWeight.w400)
                            ],
                          ),
                          customTextMedium(
                              title: "Log out device",
                              fontSize: MySize.size15,
                              color: Color(0xff008070),
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.lineColorC8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customTextRegular(
                                  title: "Session",
                                  fontSize: MySize.size15,
                                  color: AppColors.lineColor60,
                                  fontWeight: FontWeight.w400),
                              customTextRegular(
                                  title: "2 December 2023 at 21:33",
                                  fontSize: MySize.size18,
                                  color: Color(0xff4F4F4F),
                                  fontWeight: FontWeight.w400)
                            ],
                          ),
                          customTextMedium(
                              title: "Log out device",
                              fontSize: MySize.size15,
                              color: Color(0xff008070),
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size14,
              ),
              customTextMedium(
                  title: "Account",
                  fontSize: MySize.size22,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.size14,
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
                  padding: EdgeInsets.symmetric(
                      vertical: MySize.size20, horizontal: MySize.size14),
                  child: Column(children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextRegular(
                            title: "Deactivate your account",
                            fontSize: MySize.size18,
                            color: Color(0xff4F4F4F),
                            fontWeight: FontWeight.w400),
                        customTextMedium(
                            title: "Deactivate",
                            fontSize: MySize.size15,
                            color: Color(0xffE30000),
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
