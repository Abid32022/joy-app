import 'package:flutter/material.dart';
import 'package:joyapp/utils/appconstant.dart';

import '../../../../../utils/appcolors.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_textwidget.dart';

class BurgerDetailList extends StatelessWidget {
  const BurgerDetailList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.whiteColorFF,
            border: Border.all(
                width: 0.1,
                color: AppColors.borderColorAD
            )
        ),
        child: Stack(

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 7,left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTextMedium(title: "Big Mac Bacon [600.0 Cals]"),
                  Row(
                    children: [
                      customTextRegular(
                          title: "\$50.00",
                          decoration: TextDecoration.lineThrough,
                          decorationColor: AppColors.line2B,
                          fontSize: 13,
                          color: AppColors.borderColorAD),
                      SizedBox(
                        width: MySize.size10,
                      ),
                      customTextBold(
                          title: "\$45.00", fontSize: 15)
                    ],
                  ),
                  customTextRegular(title: "Medium 50 g"),
                  SizedBox(height: MySize.size30,)

                ],
              ),
            ),
            Positioned(
              right: MySize.size8,
              top: MySize.size8,
              child: Container(
                height: MySize.size80,
                width: MySize.size80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[100]
                ),
                child: Image(image: AssetImage(AppConstant.pasta_img)),
              ),
            ),
            Positioned(
              right: MySize.size110,
              bottom: MySize.size16,
              child: customTextMedium(title: "4 tems",color:
              AppColors.completedFinishedColor4D),
            )
          ],
        ),
      ),
    );
  }
}
