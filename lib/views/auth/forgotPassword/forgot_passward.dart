// ignore_for_file: avoid_print, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';

import '../../../utils/appconstant.dart';
import '../../base/custom_button.dart';
import '../../base/custom_textwidget.dart';

class ForgotPassward extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  Function onTap;

  ForgotPassward({super.key, required this.onTap});

  @override
  State<ForgotPassward> createState() => _ForgotPasswardState();
}

class _ForgotPasswardState extends State<ForgotPassward> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MySize.size80,
        ),
        Center(
            child: SvgPicture.asset(AppConstant.ic_logo_login,
                height: MySize.scaleFactorHeight*112, width: MySize
                    .scaleFactorWidth * 187)),
        SizedBox(
          height: MySize.size34,
        ),
        Center(
            child: customTextBold(
                title: "Forgot password",
                fontWeight: FontWeight.w500,
                fontSize: MySize.size18,
                textAlign: TextAlign.center)),
        SizedBox(
          height: MySize.size10,
        ),
        Center(
          child: SizedBox(
            width: MySize.scaleFactorWidth * 310,
            child: customTextRegular(
                textAlign: TextAlign.center,
                title:
                    "Enter the mobile number associated with your account and we'll send an one-time password (otp) with instructions to reset your password.",
                fontWeight: FontWeight.w400,
                fontSize: MySize.size14,
                ),
          ),
        ),
        SizedBox(
          height: MySize.size30,
        ),
        customTextMedium(
            title: "Mobile Number",
            fontWeight: FontWeight.w500,
            fontSize: MySize.size16,
            textAlign: TextAlign.center),
        SizedBox(height: MySize.size5),
        IntlPhoneField(
          style: const TextStyle(fontFamily: 'EnnVisions'),
          dropdownIconPosition: IconPosition.trailing,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            isCollapsed: false,
            isDense: true,
            // focusedBorder: InputBorder.none,
            hintText: '786 786004',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.borderColorAD, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  color: AppColors.borderColorAD, width: 1), // Set to red color
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  color: AppColors.borderColorAD, width: 1), // Set to red color
            ),
          ),
          initialCountryCode: 'PK',
          flagsButtonPadding: const EdgeInsets.symmetric(horizontal: 5),
          onChanged: (phone) {
            print(phone.completeNumber);
          },
        ),
        SizedBox(
          height: MySize.size5,
        ),
        customButton(
          fontWeight: FontWeight.w600,
          colors: AppColors.buttonPrimaryColor5B,
          text: "SUBMIT",
          borderRadius: 8.86,
          ontap: widget.onTap,
        ),
      ],
    );
  }
}
