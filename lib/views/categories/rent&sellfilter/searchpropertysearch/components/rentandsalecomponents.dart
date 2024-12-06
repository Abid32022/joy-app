

import 'package:flutter/material.dart';
import 'package:joyapp/views/categories/rent&sellfilter/searchpropertysearch/components/sale&rentcomponents.dart';

import '../../../../../utils/appcolors.dart';
import '../../../../../utils/appconstant.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_divider.dart';
import '../../../../base/custom_textwidget.dart';


class SaleAndRentGoalsComponents extends StatelessWidget {
  const SaleAndRentGoalsComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MySize.size19,
        ),
        customTextMedium(
          title: "What are your intentions or goals?",
          color: Colors.black,
          fontSize: MySize.size20,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: MySize.size23,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SaleAndRentComponents(
              image: AppConstant.ic_house,
              iconWidth: MySize.size34,
              iconHeight: MySize.size34,
              text: "Sale",
            ),
            SaleAndRentComponents(
              iconWidth: MySize.size22,
              iconHeight: MySize.size24,
              image: AppConstant.ic_key,
              text: "RENT",
            ),
          ],
        ),
        SizedBox(
          height: MySize.size20,
        ),
        customDivider(
          color: AppColors.dividerColor,
          width: double.infinity,
          height: MySize.scaleFactorHeight * 1,
        ),
      ],
    );
  }
}
