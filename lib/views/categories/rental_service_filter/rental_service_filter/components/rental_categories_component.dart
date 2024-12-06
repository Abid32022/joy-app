import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/rentalservice_provider.dart';
import '../../../../../utils/appcolors.dart';
import '../../../../../utils/appconstant.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_divider.dart';
import '../../../../base/custom_textwidget.dart';

class RentalCategoriesComponent extends StatelessWidget {
  RentalCategoriesComponent({super.key});

  List<String> catagoriesList = [
    AppConstant.ic_home,
    AppConstant.ic_rental,
    AppConstant.ic_room_share,
    AppConstant.ic_hotel_room,
    AppConstant.ic_laundry,
    AppConstant.ic_handyman,
    AppConstant.ic_martial,
    // AppConstant.ic_donation,
    // AppConstant.ic_medical,
    // AppConstant.ic_grocery,
    // AppConstant.ic_sport,
    // AppConstant.ic_shop,
    // AppConstant.ic_events,
    // AppConstant.ic_travel_tour,
    // AppConstant.ic_parcell_delivery,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MySize.size19,
        ),

        ///Categories Text
        customTextMedium(
          title: "Categories",
          color: AppColors.titleColor29,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: MySize.size20,
        ),

        ///Categories List
        SizedBox(
          height: MySize.size50,
          child: ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: catagoriesList.length,
            itemBuilder: (context, index) {
              return Consumer<RentalServiceProvider>(
                builder: (context, getCategoriesProvider, child) {
                  return InkWell(
                    borderRadius: BorderRadius.circular(MySize.size35),
                    onTap: () {
                      getCategoriesProvider.setSelectedCategories(index);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: MySize.size10),
                      child: Container(
                        padding: EdgeInsets.all(MySize.size12),
                        width: MySize.scaleFactorWidth * 47,
                        height: MySize.scaleFactorHeight * 47,
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(MySize.size35),
                            border: Border.all(
                                color:
                                    getCategoriesProvider.selectedCategories ==
                                            index
                                        ? AppColors.primaryColor62
                                        : AppColors.lineColorAD,
                                width:
                                    getCategoriesProvider.selectedCategories ==
                                            index
                                        ? 1
                                        : 0.8),
                            shape: BoxShape.circle,
                            color: Color(0xffF7F7F7)),
                        child: SvgPicture.asset(
                          catagoriesList[index].toString(),
                          height: MySize.size23,
                          width: MySize.size23,
                          // fit: BoxFit.fill,
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

        ///Using Custom Divider
        customDivider(
            color: AppColors.dividerColor,
            width: double.infinity,
            height: MySize.scaleFactorHeight * 1),
      ],
    );
  }
}
