import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';

class CustomGradientContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MySize.scaleFactorWidth * 384,
      height: MySize.scaleFactorHeight * 221,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySize.size8),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          tileMode: TileMode.clamp,
          colors: [
            AppColors.titleColor70,  // White color at the top
            AppColors.titleColor50,  // Your original color
          ],
          stops: [0.1, 1.0],  // Adjust the stop values to control the gradient spread
        ),
      ),
      child: Center(
        child: SvgPicture.asset(AppConstant.housejoy_logo, height: MySize.size120,),
      ),
    );
  }
}
