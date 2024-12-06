import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';




class DeliveryReuseRow extends StatelessWidget {
  String Image1;
  String Image2;
  String text1;
  String text2;
  DeliveryReuseRow({
    required this.Image1,
    required this.text1,
    required this.Image2,
    required this.text2,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SvgPicture.asset(Image1,color: AppColors.primaryColor62,height: MySize.size12),
      SizedBox(width: MySize.size7),
      customTextMedium(title: text1,fontSize: MySize.size16,fontWeight: FontWeight.w500),
      SizedBox(width: MySize.size15),
      SvgPicture.asset(Image2,height: MySize.size15,color: AppColors.blackColor00,),
      SizedBox(width: MySize.size10),
      customTextMedium(title: text2,fontSize: MySize.size16,fontWeight: FontWeight.w500),
    ],);
  }
}
