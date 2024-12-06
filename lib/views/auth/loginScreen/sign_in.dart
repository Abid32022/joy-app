import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/views/auth/registerScreen/register_screen.dart';
import 'package:joyapp/views/categories/parcel_services/parceldelivery/parcel_delivery.dart';
import 'package:joyapp/views/dashboard/dashboard.dart';
import 'package:joyapp/views/launchpadscreen/launchpad_screen.dart';
import '../../../utils/appconstant.dart';
import '../../../utils/mysize.dart';
import '../../base/auth_bottomsheet.dart';
import '../../base/custom_button.dart';
import '../../base/custom_check_box.dart';
import '../../base/custom_divider.dart';
import '../../base/custom_textwidget.dart';
import '../../base/textfield.dart';
import '../forgotPassword/base/forgot_pass_navigation.dart';

class SignInn extends StatefulWidget {
  const SignInn({super.key});

  @override
  State<SignInn> createState() => _SignInnState();
}

class _SignInnState extends State<SignInn> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding:  EdgeInsets.symmetric(horizontal: MySize.size24),
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MySize.scaleFactorHeight*85),
              Center(
                  child: SvgPicture.asset(AppConstant.ic_logo_login,
                      height: MySize.scaleFactorHeight*90, width: MySize
                          .scaleFactorWidth * 187)),
              SizedBox(
                height: MySize.size32,
              ),
              Center(
                child: customTextRegular(
                    title:
                        'Login to access your account and continue your journey with us',
                    fontSize: MySize.size14,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center),
              ),
              SizedBox(
                height: MySize.size25,
              ),
              customTextMedium(
                  title: 'Email', fontSize: MySize.size16, fontWeight:
              FontWeight.w500),
              SizedBox(
                height: MySize.size8,
              ),
              customTextField(
                bordercolor: AppColors.borderColorAD,
                // prefixImage: Padding(
                //   padding: const EdgeInsets.all(14),
                //   // child: SvgPicture.asset(AppConstant.icusername,height: 15.h,width: 11.w,),
                //   // SvgPicture.asset('assets/icons/ic_password.svg',height: 15.h,width: 11.w,),
                // ),
                fontSize: MySize.size14,
                fontWeight: FontWeight.w400,
                hintText: "Email Id",
              ),
              SizedBox(height: MySize.size22),
              customTextMedium(
                  title: 'Passcode', fontSize: MySize.size16, fontWeight:
              FontWeight.w500),
              SizedBox(
                height: MySize.size8,
              ),
              customTextField(
                bordercolor: AppColors.borderColorAD,
                suffix: true,
                suffixWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(AppConstant.ic_show_passcode,
                    color:AppColors.placeHolderColor4F.withOpacity(0.6),
                  ),
                ),
                hintText: "Enter 6 digit Passcode",
              ),
              SizedBox(height: MySize.size15),
              Row(
                children: [
                  CustomCheckBox(
                    isChecked: false,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  customTextMedium(
                      title: 'Remember Me',
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.titleColor29),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: GestureDetector(
                        onTap: () {
                          Get.to(() => const ForgotPasswardNavigation());
                        },
                        child: customTextRegular(
                            title: 'Forgot Password?',
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.placeHolderColor4F)),
                  ),
                ],
              ),
              SizedBox(
                height: MySize.size18,
              ),
              customButton(
                fontWeight: FontWeight.w600,
                  colors: AppColors.buttonPrimaryColor5B,
                  text: "LOGIN",
                  borderRadius: 8.87,
                  ontap: () {
                 Timer(Duration(seconds: 3), () {
                   Get.to(DashBoard());
                 });
                    authcustombottomsheet(
                      context,
                      text1: "Successful",
                      text2:
                      "Your are successfully logged in to your account.",
                      image: AppConstant.ic_success,
                    );
                  }),
              SizedBox(
                height: MySize.size25,
              ),
              Row(
                children: [
                  Expanded(child: customDivider()),
                  SizedBox(
                    width: MySize.size8,
                  ),
                  customTextBold(
                      title: 'Or',
                      fontSize: MySize.size15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.titleColor29),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(child: customDivider(),),
                ],
              ),
              SizedBox(height: MySize.size26),
              Row(
                children: [
                  Expanded(
                      child: customContainer(icon: AppConstant.ic_google,
                  )),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: customContainer(
                        icon: AppConstant.ic_facebook,
                  )),
                   SizedBox(
                    width: MySize.size15,
                  ),
                  Expanded(
                      child: customContainer(
                          icon: AppConstant.ic_apple
                      )),
                   SizedBox(
                    width: MySize.size15,
                  ),
                  Expanded(
                      child: customContainer(
                          icon: AppConstant.ic_microsoft
                      )),
                   SizedBox(
                    width: MySize.size15,
                  ),
                  Expanded(
                      child: customContainer(
                          icon: AppConstant.ic_discord
                      )),
                ],
              ),
              SizedBox(
                height: MySize.size15,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomCheckBox(
                    isChecked: false,
                  ),
                  SizedBox(
                    width: MySize.size7,
                  ),
                  Expanded(
                    child: RichText(text: TextSpan(
                      children: [
                      TextSpan(
                        text: "Agreed to ",
                        style: TextStyle(
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400,
                          color: AppColors.blackColor00,
                          fontFamily: "EnnVisions"
                        ),
                      ),
                      TextSpan(
                        text: "Terms of Use",
                        style: TextStyle(
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.placeHolderColor4F.withOpacity(0.8),
                            decoration: TextDecoration.underline,
                            fontFamily: "EnnVisions"
                        ),
                      ),
                      TextSpan(
                        text: " & ",
                        style: TextStyle(
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor00,
                            fontFamily: "EnnVisions"
                        ),
                      ),
                      TextSpan(
                        text: "Privacy Policy.",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w800,
                            color: AppColors.placeHolderColor4F.withOpacity(0.8),
                            fontFamily: "EnnVisions"
                        ),
                      ),
                    ],
                    ),
                    ),
                  ),
                  // customTextMedium(
                  //     title: "Agreed to Martial App's ",
                  //     fontSize: MySize.size14,
                  //     fontWeight: FontWeight.w400),
                  // customTextMedium(
                  //     decoration: TextDecoration.underline,
                  //     title: "Terms of Use",
                  //     fontSize: MySize.size14,
                  //     fontWeight: FontWeight.w800,
                  //     color: AppColors.placeHolderColor4F.withOpacity(0.8)),
                  // customTextMedium(
                  //     title: " & ", fontSize: MySize.size14, fontWeight: FontWeight.w400),
                  // customTextMedium(
                  //     decoration: TextDecoration.underline,
                  //     title: "Privacy Policy.",
                  //     fontSize: MySize.size14,
                  //     fontWeight: FontWeight.w800,
                  //     color: AppColors.placeHolderColor4F.withOpacity(0.8)),
                  SizedBox(
                    height: MySize.size40,
                  ),
                ],
              ),
              // customDivider(width: Get.width),
              SizedBox(
                height: MySize.size10,
              ),
            ],
          ),
        ),
      ),
      bottomSheet:  SizedBox(
        height: MySize.size40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customTextRegular(
                title:
                "Don’t have an account? ",
                fontSize: MySize.size14,
                fontWeight: FontWeight.w400),
            InkWell(
              onTap: (){
                Get.to(SignUp());
              },
              child: customTextRegular(
                decoration: TextDecoration.underline,
                  title: " Register.",
                  fontSize: MySize.size15,
                  fontWeight: FontWeight.w700,
                  color: AppColors.placeHolderColor4F.withOpacity(0.8)),
            ),
            SizedBox(
              height: MySize.size30,
            ),
          ],
        ),
      ),
    );
  }
}

Widget customContainer({String icon = "", String text = ""}) {
  return Container(
    padding: const EdgeInsets.only(top: 3),
    height: MySize.scaleFactorHeight * 46,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.borderColorAD.withOpacity(0.2))),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          icon,
          height: MySize.size20,
          width: MySize.size20,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: customTextRegular(
              title: text, fontSize: MySize.size14, fontWeight: FontWeight
              .w400),
        )
      ],
    ),
  );
}
