import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:joyapp/views/auth/loginScreen/sign_in.dart';

import '../../../utils/appcolors.dart';
import '../../../utils/appconstant.dart';
import '../../../utils/mysize.dart';
import '../../base/auth_bottomsheet.dart';
import '../../base/custom_button.dart';
import '../../base/custom_check_box.dart';
import '../../base/custom_divider.dart';
import '../../base/custom_textwidget.dart';
import '../../base/textfield.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MySize.size10,),
                SizedBox(child: Row(
                  children: [
                    GestureDetector(
                       onTap: (){
                         Get.back();
                       },
                        child: SvgPicture.asset(AppConstant.ic_back)
                    ),
                  ],
                )),
                SizedBox(height: MySize.size24),
                // GestureDetector(
                //     onTap: (){
                //       Get.back();
                //     },
                //     // ignore: deprecated_member_use
                //     // child: SvgPicture.asset(AppConstant.icback,color: Colors.black,)
                // ),
                SizedBox(height: MySize.size4),
                Center(
                    child: customTextBold(
                        title: "Create Your Account",
                        fontWeight: FontWeight.w500,
                        fontSize: MySize.size18)),
                SizedBox(height: MySize.size8),
                Center(
                    child: customTextMedium(
                      // align: TextAlign.center,
                      color: AppColors.subTitleColor37.withOpacity(0.7),
                        title:
                            "Please fill in the required information to complete your registration and join our us.",
                        fontWeight: FontWeight.w400,
                        fontSize: MySize.size14,
                        textAlign: TextAlign.center)),
                SizedBox(height: MySize.size5),
                customTextMedium(
                    title: "First  Name",
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size16,
                    textAlign: TextAlign.center),
                SizedBox(height: MySize.size4),
                customTextField(
                  bordercolor: AppColors.borderColorAD,
                  hintText: "Michael",
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                customTextMedium(
                    title: "Surname  Name",
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size16,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: MySize.size4,
                ),
                customTextField(
                  bordercolor: AppColors.borderColorAD,
                  hintText: "Cumberbatch",
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                customTextMedium(
                    title: "Username",
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size16,
                    textAlign: TextAlign.center),
                SizedBox(height: MySize.size4),
                customTextField(
                  bordercolor: AppColors.borderColorAD,
                  hintText: "Enter username",
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                customTextMedium(
                    title: "Email id",
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size16,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: MySize.size4,
                ),
                customTextField(
                  bordercolor: AppColors.borderColorAD,
                  hintText: "Enter Email",
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                customTextMedium(
                    title: "Mobile Number",
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size16,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: MySize.size4,
                ),

                SizedBox(
                  // height: 50.h,
                  child: IntlPhoneField(
                    dropdownIconPosition: IconPosition.trailing,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      isCollapsed: false,
                      isDense: true,
                      // focusedBorder: InputBorder.none,
                      hintText: '786 786004',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: AppColors.borderColorAD, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: AppColors.borderColorAD,
                            width: 1), // Set to red color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: AppColors.borderColorAD,
                            width: 1), // Set to red color
                      ),
                    ),
                    initialCountryCode: 'PK',
                    flagsButtonPadding: const EdgeInsets.symmetric(horizontal: 5),
                    onChanged: (phone) {
                      // ignore: avoid_print
                      print(phone.completeNumber);
                    },
                  ),
                ),
                // SizedBox(height: MySize.size20),
                customTextMedium(
                    title: "Passcode",
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size16,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: MySize.size4,
                ),
                customTextField(
                  bordercolor: AppColors.borderColorAD,
                  hintText: "Enter Passcode",
                  suffixWidget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppConstant.ic_show_passcode,
                        color:AppColors.placeHolderColor4F.withOpacity(0.6),
                    ),
                  ),
                  suffix: true,
                ),
                SizedBox(height: MySize.size20),
                customTextMedium(
                    title: "Confirm Passcode",
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size16,
                    textAlign: TextAlign.center),
                SizedBox(height: MySize.size4),
                customTextField(
                  bordercolor: AppColors.borderColorAD,
                  hintText: "Enter Confirm Passcode",
                  suffixWidget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppConstant.ic_show_passcode,
                      color:AppColors.placeHolderColor4F.withOpacity(0.6),
                    ),
                  ),
                  suffix: true,
                ),
                SizedBox(height: MySize.size20),
                Row(
                  children: [
                    CustomCheckBox(
                      isChecked: false,
                    ),
                    SizedBox(width: MySize.size7),
                    customTextMedium(
                        title: 'Remember Me',
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.titleColor29),
                  ],
                ),
                SizedBox(
                  height: MySize.size18,
                ),
                customButton(
                    colors: AppColors.buttonPrimaryColor5B,
                    text: "REGISTER",
                    fontWeight: FontWeight.w600,
                    borderRadius: 8.86,
                    ontap: () {
                      Timer(Duration(seconds: 3), () {
                        Get.to(SignInn());
                      });
                      // authcustombottomsheet(
                      //   context,
                      //   text1: "Account Created Successfully!",
                      //   text2:
                      //   "Thank you for Joining Us And We're Excited To Have "
                      //       "You On Board",
                      //   image: AppConstant.ic_success,
                      // );
                      authcustombottomsheet(
                        context,
                        text1: "Unable to Register Account.",
                        text2: "Please ensure all required fields are filled out correctly and try again.",
                        image: AppConstant.ic_error_smile,
                      );
                    }),
                SizedBox(height: MySize.size20),
                Row(
                  children: [
                    Expanded(child: customDivider()),
                    SizedBox(
                      width: MySize.size8,
                    ),
                    customTextMedium(
                        title: 'Or',
                        fontSize: MySize.size15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.titleColor29),
                    SizedBox(
                      width: MySize.size8,
                    ),
                    Expanded(child: customDivider()),
                  ],
                ),
                SizedBox(
                  height: MySize.size14,
                ),
                Row(
                  children: [
                    Expanded(
                        child: customContainer(
                      icon: AppConstant.ic_google,
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
                    Expanded(child: customContainer(icon: AppConstant.ic_apple)),
                    SizedBox(
                      width: MySize.size15,
                    ),
                    Expanded(
                        child: customContainer(icon: AppConstant.ic_microsoft)),
                    SizedBox(
                      width: MySize.size15,
                    ),
                    Expanded(
                        child: customContainer(icon: AppConstant.ic_discord)),
                  ],
                ),
                SizedBox(
                  height: MySize.size19,
                ),
                Wrap(
                  runSpacing: 5,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    CustomCheckBox(
                      isChecked: false,
                    ),
                    SizedBox(width: MySize.size7),
                    customTextMedium(
                        title: "Agree to",
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w400),
                    customTextMedium(
                      decoration: TextDecoration.underline,
                        title: "Terms of Use",
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.titleColor70),
                    customTextMedium(
                        title: " & ",
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w400),
                    customTextMedium(
                        decoration: TextDecoration.underline,
                        title: "Privacy Policy.",
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.titleColor70),
                  ],
                ),

                SizedBox(height: MySize.size100),


              ],
            ),
          ),
        ),
      ),
      bottomSheet: SizedBox(
        height: MySize.size40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customTextMedium(
                title: "If you already have an account.",
                fontSize: MySize.size14,
                fontWeight: FontWeight.w400),
            GestureDetector(
                onTap: () {
                  Get.to(() => const SignInn());
                },
                child: customTextMedium(
                  decoration: TextDecoration.underline,
                    title: " Login",
                    fontSize: MySize.size14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.titleColor70)
            ),
          ],
        ),
      ),
    );
  }
}
