import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../base/auth_bottomsheet.dart';
import '../../base/custom_button.dart';
import '../../base/custom_textwidget.dart';
import '../../base/textfield.dart';


class NewPassward extends StatefulWidget {
  const NewPassward({super.key});

  @override
  State<NewPassward> createState() => _NewPasswardState();
}

class _NewPasswardState extends State<NewPassward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SvgPicture.asset(AppConstant.icback),

                // SvgPicture.asset(AppConstant.indicator3),
                SizedBox(),
              ],
            ),
            SizedBox(height: 73,),
            // Center(child: Image.asset(AppConstant.icloginlogoBlueOne,height: 104.h,width: 174,)),
            SizedBox(height: 29,),

            Center(child: customTextBold(title: "Welcome Marc Wilson", fontWeight: FontWeight.w500, fontSize: 18,textAlign: TextAlign.center)),
            SizedBox(height: 10,),
            Center(child: customTextBold(title: "Enter your new 6-digit passcode to reset your account password and keep your account secure.", fontWeight: FontWeight.w400, fontSize: 14,textAlign: TextAlign.center)),
            SizedBox(height: 30,),
            customTextBold(title: "Passcode", fontWeight: FontWeight.w500, fontSize: 16,textAlign: TextAlign.center),
            SizedBox(height: 4.32,),

            customTextField(
              prefixImage: Padding(
                padding: const EdgeInsets.all(14),
                // child: SvgPicture.asset(AppConstant.iclock,height: 15.h,width: 11.w,),
              ),
              hintText: "Enter Passcode",
              suffixWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                // child: SvgPicture.asset(AppConstant.passcode,height: 32.h,width: 32.w,),
              ),
              suffix: true,
            ),
            SizedBox(height: 16,),
            customTextBold(title: "Confirm Passcode", fontWeight: FontWeight.w500, fontSize: 16,textAlign: TextAlign.center),
            SizedBox(height: 4),

            customTextField(
              prefixImage: Padding(
                padding: const EdgeInsets.all(14),
                // child: SvgPicture.asset(AppConstant.iclock,height: 15.h,width: 11.w,),
              ),
              suffixWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                // child: SvgPicture.asset(AppConstant.passcode,height: 32.h,width: 32.w,),
              ),
              suffix: true,
              // isPrefixIcon: true,
              // isprefixImage: true,

              hintText: "Enter Confirm Passcode",
            ),
            SizedBox(height: 16,),
            customButton(
                text: "Submit",
                borderRadius: 8.86,
                ontap: (){
                   authcustombottomsheet(
                     context,
                     text1: "One-time password Expire",
                     text2: "The otp to reset your passcode has expired. Please request a One-time password",
                     // image: AppConstant.icreject,
                   );
                }
            ),
          ],
        ),
      ),
    );
  }
}
