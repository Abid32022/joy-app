import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/views/auth/loginScreen/sign_in.dart';

import '../../../utils/appconstant.dart';
import '../../../utils/mysize.dart';
import '../../base/auth_bottomsheet.dart';
import '../../base/custom_button.dart';
import '../../base/custom_textwidget.dart';
import '../../base/textfield.dart';

class ResetPassward extends StatefulWidget {
  const ResetPassward({super.key});

  @override
  State<ResetPassward> createState() => _ResetPasswardState();
}

class _ResetPasswardState extends State<ResetPassward> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MySize.size64),
          Center(
              child: SvgPicture.asset(
            AppConstant.ic_logo_login,
            height: MySize.scaleFactorHeight * 90,
            width: 174,
          )),
          SizedBox(
            height: MySize.size19,
          ),
          Center(
              child: customTextMedium(
                  title: "Welcome Adnan Qureeshi",
                  fontWeight: FontWeight.w500,
                  fontSize: MySize.size20,
                  textAlign: TextAlign.center)),
          SizedBox(
            height: MySize.size10,
          ),
          Center(
              child: customTextRegular(
            title:
                "Enter your new password to reset your account password and keep your account secure.",
            textAlign: TextAlign.center,

            fontWeight: FontWeight.w400,
            fontSize: MySize.size14,
          )),
          SizedBox(
            height: MySize.size18,
          ),
          customTextMedium(
              title: 'Passcode',
              fontSize: MySize.size15,
              fontWeight: FontWeight.w500),
          SizedBox(
            height: MySize.size8,
          ),
          customTextField(
            suffix: true,
            suffixWidget: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(AppConstant.ic_show_passcode,
                color:AppColors.placeHolderColor4F.withOpacity(0.6),),
            ),
            bordercolor: AppColors.borderColorAD,
            hintText: "Enter Password",
          ),
          SizedBox(height: MySize.size19),
          customTextMedium(
              title: 'Confirm Password',
              fontSize: MySize.size15,
              fontWeight: FontWeight.w500),
          SizedBox(
            height: MySize.size8,
          ),
          customTextField(
            suffix: true,
            suffixWidget: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(AppConstant.ic_show_passcode,
                color:AppColors.placeHolderColor4F.withOpacity(0.6),),
            ),
            bordercolor: AppColors.borderColorAD,
            hintText: "Enter Confirm Password",
          ),
          SizedBox(
            height: MySize.size19,
          ),
          customButton(
            fontWeight: FontWeight.w600,
            colors: AppColors.buttonPrimaryColor5B,
            text: "SUBMIT",
            borderRadius: 8.86,
            ontap: () {
              Timer(Duration(seconds: 3), () {
                Get.to(() => const SignInn());
              });
              authcustombottomsheet(
                context,
                text1: "Password Changed",
                text2:
                    "Your password has been successfully updated. Please log in with your new credentials and enjoy the experience.",
                image: AppConstant.ic_success,
              );
            },
          ),
        ],
      ),
    );
  }
}
