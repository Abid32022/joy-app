// sale_and_rent_components.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../../../../providers/rentandsale_provider.dart';
import '../../../../../utils/appcolors.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_textwidget.dart';


class SaleAndRentComponents extends StatelessWidget {
  String image;
  String text;
  double? iconWidth;
  double? iconHeight;

  SaleAndRentComponents({
    required this.text,
    required this.image,
    required this.iconWidth,
    this.iconHeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final saleAndRentProvider = Provider.of<SaleAndRentProvider>(context);

    return GestureDetector(
      onTap: () {
        saleAndRentProvider.setSelectedType(text);
      },
      child: Container(
        width: MySize.scaleFactorWidth * 162,
        height: MySize.scaleFactorHeight * 58,
        decoration: BoxDecoration(
          color: saleAndRentProvider.selectedType == text
              ? AppColors.backGroundColorEA
              : AppColors.whiteColorFF,
          border: Border.all(
            width: MySize.scaleFactorWidth * 1,
            color: AppColors.lineColorC8,
          ),
          borderRadius: BorderRadius.circular(MySize.size7),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(MySize.size12),
              child: SvgPicture.asset(
                image,
                color: AppColors.blackColor00,
                height: iconHeight,
                width: iconWidth,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MySize.size19, bottom: MySize.size19),
              child: customTextMedium(
                title: text,
                color: Colors.black,
                fontSize: MySize.size16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
