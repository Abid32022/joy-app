import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/auth_bottomsheet.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';

import '../helpsupport/help_support.dart';

class RestPassword extends StatefulWidget {
  const RestPassword({super.key});

  @override
  State<RestPassword> createState() => _RestPasswordState();
}

class _RestPasswordState extends State<RestPassword> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: AppointmentAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.size24),
        child: Column(
          children: [
            SizedBox(
              height: MySize.size25,
            ),
            Center(
              child: SvgPicture.asset(AppConstant.house_joy_logo),
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 20,
            ),
            GestureDetector(
              onTap: (){
                Get.to(HelpSupport());
              },
              child: customTextMedium(
                  title: "Welcome Adnan",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
            ),
            customTextRegular(
                title: "Enter your new password to change your account\npassword and keep your account secure.",
                fontSize: MySize.size14,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w400),
            SizedBox(
              height: MySize.scaleFactorHeight * 20,
            ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               customTextMedium(
                   title: 'Current Password', fontSize: MySize.size16, fontWeight:
               FontWeight.w500),
               SizedBox(
                 height: MySize.size8,
               ),
               customTextField(
                 enableborder: false,
                 bordercolor: AppColors.borderColorAD,
                 suffix: true,
                 suffixWidget: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SvgPicture.asset(AppConstant.ic_show_passcode,
                     color:AppColors.placeHolderColor4F.withOpacity(0.6),
                   ),),
                 hintText: "Enter Password",
               ),
               SizedBox(height: MySize.size15),
               customTextMedium(
                   title: 'New Password', fontSize: MySize.size16, fontWeight:
               FontWeight.w500),
               SizedBox(
                 height: MySize.size8,
               ),
               customTextField(
                 enableborder: false,
                 bordercolor: AppColors.borderColorAD,
                 suffix: true,
                 suffixWidget: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SvgPicture.asset(AppConstant.ic_show_passcode,
                     color:AppColors.placeHolderColor4F.withOpacity(0.6),
                   ),),
                 hintText: "Enter Password",
               ),
               SizedBox(height: MySize.size15),
               customTextMedium(
                   title: 'Confirm Password', fontSize: MySize.size16, fontWeight:
               FontWeight.w500),
               SizedBox(
                 height: MySize.size8,
               ),
               customTextField(
                 enableborder: false,
                 bordercolor: AppColors.borderColorAD,
                 suffix: true,
                 suffixWidget: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SvgPicture.asset(AppConstant.ic_show_passcode,
                     color:AppColors.placeHolderColor4F.withOpacity(0.6),
                   ),),
                 hintText: "Enter Confirm Password",
               ),
               SizedBox(height: MySize.size15),
               customButton(
                   ontap: () {
                     authcustombottomsheet(
                       context,
                       text1: "Password Changed",
                       text2: "Your password has been successfully updated. Please log in with your new credentials and enjoy the experience.",
                       image: AppConstant.ic_success,
                     );
                   },
                   width: double.infinity,
                   height: MySize.scaleFactorHeight * 46,
                   text: "Done",
                   fontSize: MySize.size16,
                   fontWeight: FontWeight.w500,
                   fontColor: AppColors.blackColor0,
                   borderRadius: MySize.size8,
                   borderColor: Color(0xffD6DEDE),
                   colors: Color(0xffD6DEDE)),
             ],
           ),
          ],
        ),
      ),
    );
  }
}
