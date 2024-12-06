import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
class HelpSupport extends StatefulWidget {
  const HelpSupport({super.key});

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
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
            customTextMedium(
                title: "Welcome Adnan",
                fontSize: MySize.size20,
                fontWeight: FontWeight.w500),
            customTextRegular(
                title: "Enter your new password to change your account\npassword and keep your account secure.",
                fontSize: MySize.size14,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w400),
            SizedBox(
              height: MySize.scaleFactorHeight * 20,
            ),
          ],
        ),
      ),
    );
  }
}
