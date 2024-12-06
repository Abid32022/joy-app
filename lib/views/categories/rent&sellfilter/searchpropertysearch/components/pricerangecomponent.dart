import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/appcolors.dart';
import '../../../../../utils/appconstant.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_textwidget.dart';
import '../../../../base/textfield.dart';

class PriceRangeComponent extends StatelessWidget {
  const PriceRangeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MySize.size20,
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
                  title: "Price Range",
                  color: AppColors.blackColor00,
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                ),
                Spacer(),
                customTextMedium(
                  textAlign: TextAlign.center,
                  title: "CAD",
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
                Container(
                  width: MySize.scaleFactorWidth * 162,
                  // height: MySize.scaleFactorHeight * 53,
                  padding:
                      EdgeInsets.only(top: MySize.size6, bottom: MySize.size6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(
                        color: AppColors.backGroundColorEA,
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MySize.size7,
                            left: MySize.size12,
                            bottom: MySize.size6),
                        child: customTextRegular(
                          textAlign: TextAlign.center,
                          title: "Area",
                          color: AppColors.placeHolderColor4F,
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      customTextField(
                        enableborder: false,
                        focusBorder: false,

                        // verticalpadding: 12,
                        maxLines: 1,
                        minLines: 1,
                        ontap: () {},
                        isKeyboard: true,

                      )
                    ],
                  ),
                ),
                Container(
                  width: MySize.scaleFactorWidth * 162,
                  // height: MySize.scaleFactorHeight * 53,
                  padding:
                      EdgeInsets.only(top: MySize.size6, bottom: MySize.size6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(
                        color: AppColors.backGroundColorEA,
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MySize.size7,
                            left: MySize.size12,
                            bottom: MySize.size6),
                        child: customTextRegular(
                          textAlign: TextAlign.center,
                          title: "Maximum",
                          color: AppColors.placeHolderColor4F,
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      customTextField(
                        enableborder: false,
                        focusBorder: false,
                        // verticalpadding: 12,
                        ontap: () {},
                        isKeyboard: true,
                        maxLines: 1,
                        minLines: 1,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
