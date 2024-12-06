import 'package:flutter/material.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/rentalservice_provider.dart';
import '../../../../../providers/rentandsale_provider.dart';
import '../../../../../utils/appcolors.dart';

class BathRoomComponent extends StatelessWidget {
  BathRoomComponent({super.key});

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
          height: MySize.size30,
        ),
        customTextRegular(
          title: "Bathrooms",
          color: Color(0xFF051129),
          fontSize: MySize.size18,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(
          height: MySize.size7,
        ),
        SizedBox(
          height: MySize.size38,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return Consumer<RentalServiceProvider>(
                builder: (context, getBathRoomProvider, child) {
                  return InkWell(
                    onTap: () {
                      getBathRoomProvider.setSelectedBathRooms(index);
                    },
                    child: Container(
                      width: MySize.scaleFactorWidth * 37,
                      height: MySize.scaleFactorHeight * 34,
                      margin: EdgeInsets.only(right: MySize.size10),
                      decoration: BoxDecoration(
                        color: getBathRoomProvider.selectedBathRooms == index
                            ? AppColors.btnColorDE
                            : AppColors.whiteColorFF,
                        borderRadius: BorderRadius.circular(MySize.size7),
                        border: Border.all(
                          color:  getBathRoomProvider.selectedBathRooms == index
                              ? AppColors.primaryColor62
                              : AppColors.backGroundColorEA,
                        ),
                      ),
                      child: Center(
                        child: customTextMedium(
                          title: numbers[index],
                          color: getBathRoomProvider.selectedBathRooms== index
                              ? AppColors.primaryColor62
                              : Color(0xFF4F4F4F),
                          fontSize: 16,
                          fontWeight:
                          getBathRoomProvider.selectedBathRooms == index
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
        SizedBox(
          height: MySize.size20,
        ),
        Divider(
          thickness: 0.5,
          color: Color(0xFFC6C6C8),
        )
      ],
    );
  }
}
