import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class ReUseColumn extends StatelessWidget {
   String title;
   String text;
   bool switchValue;
   Function()? onSwitchPressed;

   ReUseColumn({
    Key? key,
    required this.title,
    required this.text,
    required this.switchValue,
    this.onSwitchPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          SizedBox(height: MySize.size16),
        customTextMedium(
          title: title,
          fontSize: MySize.size18,
          fontWeight: FontWeight.w500,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customTextRegular(
              title: text,
              fontSize: MySize.size16,
              fontWeight: FontWeight.w400,
            ),
            Spacer(),
            IconButton(
              onPressed: onSwitchPressed,
              icon: switchValue
                  ? SvgPicture.asset(
                AppConstant.ic_switch_on,
                height: MySize.size18,
              )
                  : SvgPicture.asset(
                AppConstant.ic_switch_off,
                height: MySize.size18,
              ),
            )
          ],
        ),
        customDivider(
          width: double.infinity,
          color: AppColors.lineColorAD,
        ),
      ],
    );
  }
}
