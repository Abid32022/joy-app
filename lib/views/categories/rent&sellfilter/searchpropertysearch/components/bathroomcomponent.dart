

import 'package:flutter/material.dart';
import 'package:joyapp/providers/rentandsale_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../utils/appcolors.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_divider.dart';
import '../../../../base/custom_textwidget.dart';

class BathroomComponents extends StatelessWidget {
  BathroomComponents({super.key});

  List numbers = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MySize.scaleFactorHeight * 20,
        ),
        customTextBold(
          textAlign: TextAlign.center,
          title: "Bathroom",
          color: AppColors.blackColor00,
          fontSize: MySize.size16,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: MySize.scaleFactorHeight * 8,
        ),
        SizedBox(
          height: MySize.size38,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return Consumer<SaleAndRentProvider>(
                builder: (context, getBathNumberProvider, child) {
                  return InkWell(
                    onTap: () {
                      getBathNumberProvider.setNumberIndex1(index);
                    },
                    child: Container(
                      width: MySize.scaleFactorWidth * 37,
                      height: MySize.scaleFactorHeight * 34,
                      margin: EdgeInsets.only(right: MySize.size10),
                      decoration: BoxDecoration(
                        color: getBathNumberProvider.currentNumberIndex1 == index
                            ? AppColors.btnColorDE
                            : AppColors.whiteColorFF,
                        borderRadius: BorderRadius.circular(MySize.size7),
                        border: Border.all(
                          color: getBathNumberProvider.currentNumberIndex1 == index
                              ? AppColors.primaryColor62
                              : AppColors.backGroundColorEA,
                        ),
                      ),
                      child: Center(
                        child: customTextMedium(
                          title: numbers[index],
                          color: getBathNumberProvider.currentNumberIndex1 == index
                              ? AppColors.primaryColor62
                              : Color(0xFF4F4F4F),
                          fontSize: 16,
                          fontWeight:
                          getBathNumberProvider.currentNumberIndex1 == index
                              ? FontWeight.w500
                              : FontWeight.w400,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
        SizedBox(height: MySize.size18,),
        customDivider(
            color: AppColors.dividerColor,
            width: double.infinity,
            height: MySize.scaleFactorHeight * 1),
      ],
    );
  }
}
