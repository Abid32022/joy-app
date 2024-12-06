

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';

import '../../../../base/custom_textwidget.dart';

class ReuseContainer extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String text4;
  String assetName;
  void Function()? onTap;
  ReuseContainer({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.assetName,
    this.onTap,
    super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: MySize.size20),
        padding: EdgeInsets.symmetric(horizontal: MySize.size14,vertical: MySize.size10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySize.size8),
          border: Border.all(color: AppColors.lineColorAD,width: 0.3),
          color: AppColors.whiteColorFF,
        ),
        child: Expanded(
          child: Row(children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTextMedium(
                      title: text1,
                      fontSize: MySize.size18,
                      fontWeight: FontWeight.w500),
                  SizedBox(height: MySize.size6),
                  RichText(text: TextSpan(children: [
                    TextSpan(
                        text: text2,
                        style: TextStyle(
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.disableTextColor90,
                            decorationColor: AppColors.primaryColor62,
                            decoration: TextDecoration.lineThrough
                        )
                    ),
                    TextSpan(
                        text: text3,
                        style: TextStyle(
                          fontSize: MySize.size18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor00,

                        )
                    ),
                  ])),
                  SizedBox(height: MySize.size6),
                  customTextMedium(
                      title: text4,
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w500),
                ]),
            Spacer(),
            Container(
                width: MySize.scaleFactorWidth * 78,
                height: MySize.scaleFactorHeight * 78,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                ),
                child: Image(image: AssetImage(assetName),fit: BoxFit.fill,)
            ),
          ]),
        ),
      ),
    );
  }
}
