import 'package:flutter/material.dart';
import 'package:joyapp/providers/rentandsale_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../utils/appcolors.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_textwidget.dart';

class BedRoomComponents extends StatelessWidget {
  BedRoomComponents({super.key});

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
          height: MySize.scaleFactorHeight * 13,
        ),
        customTextBold(
          textAlign: TextAlign.center,
          title: "Bedroom",
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
                builder: (context, getNumberProvider, child) {
                  return InkWell(
                    onTap: () {
                      getNumberProvider.setNumberIndex(index);
                    },
                    child: Container(
                      width: MySize.scaleFactorWidth * 37,
                      height: MySize.scaleFactorHeight * 34,
                      margin: EdgeInsets.only(right: MySize.size10),
                      decoration: BoxDecoration(
                        color: getNumberProvider.currentNumberIndex == index
                            ? AppColors.btnColorDE
                            : AppColors.whiteColorFF,
                        borderRadius: BorderRadius.circular(MySize.size7),
                        border: Border.all(
                          color: getNumberProvider.currentNumberIndex == index
                              ? AppColors.primaryColor62
                              : AppColors.backGroundColorEA,
                        ),
                      ),
                      child: Center(
                        child: customTextMedium(
                          title: numbers[index],
                          color: getNumberProvider.currentNumberIndex == index
                              ? AppColors.primaryColor62
                              : Color(0xFF4F4F4F),
                          fontSize: 16,
                          fontWeight:
                              getNumberProvider.currentNumberIndex == index
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
      ],
    );
  }
}
