import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';


class ReUseContainer extends StatelessWidget {
  String title;
  String assetName;
  double? iconHeight,iconWidth;

  void Function()? onTap;
  ReUseContainer({
    required this.title,
    required this.assetName,
    this.iconHeight,
    this.iconWidth,
    this.onTap,
    super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: MySize.size16,horizontal: MySize.size15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySize.size8),
          border: Border.all(color:AppColors.lineColorAD),
          color: AppColors.whiteColorFF,

        ),
        child: Row(children: [
          customTextRegular(
              title:title,
              fontSize: MySize.size16,
              fontWeight: FontWeight.w400),
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
