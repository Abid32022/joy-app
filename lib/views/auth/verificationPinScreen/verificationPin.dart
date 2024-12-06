import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:pinput/pinput.dart';

import '../../../utils/appconstant.dart';
import '../../base/auth_bottomsheet.dart';
import '../../base/custom_button.dart';
import '../../base/custom_textwidget.dart';

// ignore: must_be_immutable
class VerificationPin extends StatefulWidget {
  Function onTap;

  VerificationPin({super.key, required this.onTap});

  @override
  State<VerificationPin> createState() => _VerificationPinState();
}

class _VerificationPinState extends State<VerificationPin> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 10 * 1000;
  String remainingTime = "0:10";

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now().millisecondsSinceEpoch;
      if (endTime > now) {
        final secondsRemaining = (endTime - now) ~/ 1000;
        final minutes = secondsRemaining ~/ 60;
        final seconds = secondsRemaining % 60;
        setState(() {
          remainingTime = '$minutes:${seconds.toString().padLeft(2, '0')}';
        });
      } else {
        timer.cancel();
        authcustombottomsheet(
          context,
          text1: "One-time password  Expire",
          text2:
              "The otp to reset your passcode has expired. Please request a One-time password",
          image: AppConstant.ic_error_smile,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MySize.size44,
        ),
        Center(
            child: SvgPicture.asset(AppConstant.ic_logo_login,
                height: MySize.scaleFactorHeight*112, width: MySize
                    .scaleFactorWidth * 187)),
        SizedBox(
          height: MySize.size28,
        ),
        Center(
            child: customTextBold(
                title: "Verification one time pin",
                fontWeight: FontWeight.w500,
                fontSize: MySize.size18,
                textAlign: TextAlign.center)),
        SizedBox(
          height: MySize.size10,
        ),
        Center(
          child: SizedBox(
            width: MySize.scaleFactorWidth * 300,
            child: Center(
              child: customTextRegular(
                textAlign: TextAlign.justify,
                title:
                    "A verification code has been sent to your mobile number. Please enter the OTP below to confirm your identity. ",
                fontWeight: FontWeight.w400,
                fontSize: MySize.size14,
              ),
            ),
          ),
        ),
        SizedBox(
          height: MySize.size12,
        ),
        Center(
          child: customTextBold(
              title: "+1 (617) 397-8483",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              textAlign: TextAlign.center),
        ),
        SizedBox(
          height: MySize.size30,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: PinputExample(),
        ),
        SizedBox(
          height: MySize.size22,
        ),
        customButton(
          fontWeight: FontWeight.w600,
          colors: AppColors.buttonPrimaryColor5B,
          text: "Submit",
          borderRadius: 8.86,
          ontap: widget.onTap,
        ),
         SizedBox(height: MySize.size20),
        Center(
          child: customTextBold(
              title: "The OTP will expire in $remainingTime",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              textAlign: TextAlign.center,
              color: AppColors.titleColor50),
        ),
      ],
    ));
    // bottomNavigationBar: SizedBox(
    //     height: 40.h,
    //     child: Column(
    //       children: [
    //         customDivider(height: 1.h,width: Get.width),
    //         SizedBox(height: 8.h,),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             customTextRegular(title: "Already have an account.",fontSize: 14.sp,fontWeight: FontWeight.w500),
    //             GestureDetector(
    //                 onTap: (){
    //                   Get.to(()=> const SignIn());
    //                 },
    //                 child: customTextRegular(title: " Login",fontSize: 14.sp,fontWeight: FontWeight.w500,color: AppColors.primaryblueColor)),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
  }
}

class PinputExample extends StatefulWidget {
  const PinputExample({Key? key}) : super(key: key);

  @override
  State<PinputExample> createState() => _PinputExampleState();
}

class _PinputExampleState extends State<PinputExample> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = AppColors.borderColorAD;
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
     var borderColor = AppColors.borderColorAD.withOpacity(0.2);

    final defaultPinTheme = PinTheme(
      width: 46,
      height: 46,
      textStyle: TextStyle(
        fontFamily: 'EnnVisions',
        fontSize: 22,
        color: const Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
    );

    /// Optionally you can use form to validate the Pinput
    return Form(
      key: formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Directionality(
              // Specify direction if desired
              textDirection: TextDirection.ltr,
              child: Pinput(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                controller: pinController,
                focusNode: focusNode,
                androidSmsAutofillMethod:
                    AndroidSmsAutofillMethod.smsUserConsentApi,
                listenForMultipleSmsOnAndroid: true,
                defaultPinTheme: defaultPinTheme,
                separatorBuilder: (index) => const SizedBox(width: 8),
                validator: (value) {
                  return value == '2222' ? null : 'Pin is incorrect';
                },
                // onClipboardFound: (value) {
                //   debugPrint('onClipboardFound: $value');
                //   pinController.setText(value);
                // },
                hapticFeedbackType: HapticFeedbackType.lightImpact,
                onCompleted: (pin) {
                  debugPrint('onCompleted: $pin');
                },
                onChanged: (value) {
                  debugPrint('onChanged: $value');
                },
                cursor: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 9),
                      width: 22,
                      height: 1,
                      color: focusedBorderColor,
                    ),
                  ],
                ),
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: focusedBorderColor),
                  ),
                ),
                submittedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    color: fillColor,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: focusedBorderColor),
                  ),
                ),
                errorPinTheme: defaultPinTheme.copyBorderWith(
                  border: Border.all(color: Colors.redAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
