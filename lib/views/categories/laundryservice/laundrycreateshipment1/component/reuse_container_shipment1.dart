import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';


class ReUseContainer extends StatelessWidget {
  String title;
  String assetName;
  double? iconHeight,iconWidth;
  Color? backgroundColor;
  FontWeight fontWeight = FontWeight.w400;
  Color borderColor = AppColors.lineColorAD;
  Color textColor = const Color(0xFF02091E);
  void Function()? onTap;
  ReUseContainer({
    required this.title,
    required this.assetName,
    this.borderColor =AppColors.lineColorAD,
    this.backgroundColor,
    this.textColor = const Color(0xFF02091E),
    this.iconHeight,
    this.iconWidth,
    this.fontWeight = FontWeight.w400,
    this.onTap,
    super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: MySize.size14,horizontal: MySize.size10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySize.size8),
          border: Border.all(color:borderColor),
          color:backgroundColor,
        ),
        child: Row(children: [
          customTextRegular(
              title:title,
              fontSize: MySize.size16,
              color:textColor,
              fontWeight: fontWeight),
          Spacer(),
          SvgPicture.asset(assetName,
          height: iconHeight,
            width: iconWidth,
          ),
        ]),
      ),
    );
  }
}
