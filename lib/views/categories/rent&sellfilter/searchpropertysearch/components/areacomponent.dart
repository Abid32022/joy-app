import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/appcolors.dart';
import '../../../../../utils/appconstant.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_textwidget.dart';
import '../../../../base/textfield.dart';

class AreaComponents extends StatelessWidget {
  const AreaComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MySize.size23,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customTextMedium(
                  textAlign: TextAlign.center,
                  title: "Area",
                  color: AppColors.blackColor00,
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                ),
                Spacer(),
                customTextMedium(
                  textAlign: TextAlign.center,
                  title: "Marla",
                  color: AppColors.primaryColor62,
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  width: MySize.size8,
                ),
                SvgPicture.asset(
                  AppConstant.arrow_down,
                  width: MySize.size15,
                  height: MySize.size8,
                  color: AppColors.blackColor00,
                )
              ],
            ),
            SizedBox(
              height: MySize.size8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MySize.scaleFactorWidth * 160,
                  child: customTextField(
                      filled: true,
                      focusBorder: true,
                      // enableborder: false,
                      verticalpadding: MySize.size12,
                      controller: TextEditingController(),
                      fillcolor: Colors.white,
                      maxLines: 1,
                      minLines: 1,
                      bordercolor: Color(0xFFEAEAEA),
                      ontap: () {},
                      textFieldColor: Colors.black,
                      isKeyboard: true,
                      validator: () {}),
                ),
                SizedBox(
                  width: MySize.scaleFactorWidth * 160,
                  child: customTextField(
                      filled: true,
                      isKeyboard: true,
                      minLines: 1,
                      maxLines: 1,
                      verticalpadding: MySize.size12,
                      controller: TextEditingController(),
                      fillcolor: Colors.white,
                      bordercolor: Color(0xFFEAEAEA),
                      ontap: () {},
                      validator: () {}),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
