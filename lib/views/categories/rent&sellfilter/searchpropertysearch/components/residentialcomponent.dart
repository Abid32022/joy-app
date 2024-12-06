// ResidentialComponent.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joyapp/providers/rentandsale_provider.dart';
import 'package:provider/provider.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/utils/appconstant.dart';

import '../../../../base/custom_divider.dart';
import '../../../../base/custom_textwidget.dart';

class ResidentialComponent extends StatelessWidget {
  ResidentialComponent({Key? key});

  List residentialData = [
    {"icon": AppConstant.ic_house, "label": "House"},
    {"icon": AppConstant.ic_flat, "label": "Flat"},
    {"icon": AppConstant.ic_lower, "label": "Lower Portion"},
    {"icon": AppConstant.ic_upper, "label": "Upper Portion"},
    {"icon": AppConstant.ic_room, "label": "Room"},
    {"icon": AppConstant.ic_farm_house, "label": "Farm House"},
    {"icon": AppConstant.ic_guesthouse, "label": "Guest House"},
    {"icon": AppConstant.ic_penthouse, "label": "Pent House"},
    {"icon": AppConstant.ic_annexe, "label": "Annexe"},
    {"icon": AppConstant.ic_hostel, "label": "Hostel"},
    {"icon": AppConstant.ic_house, "label": "Hotel Suites"},
  ];

  @override
  Widget build(BuildContext context) {
    bool isExpanded = Provider.of<SaleAndRentProvider>(context).expanded;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MySize.size14,
        ),

        ///Grid View Data of Residents
        GridView.builder(
          itemCount: Provider.of<SaleAndRentProvider>(context).expanded
              ? residentialData.length
              : 4,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: MySize.size20,
            mainAxisSpacing: MySize.size15,
            mainAxisExtent: MySize.size120,
          ),
          itemBuilder: (context, index) {
            return Consumer<SaleAndRentProvider>(
              builder: (context, getCurrentIndexProvider, child) {
                bool isSelected =
                    getCurrentIndexProvider.selectedIndex == index;

                return InkWell(
                  borderRadius: BorderRadius.circular(MySize.size10),
                  onTap: () {
                    getCurrentIndexProvider.setSelectedIndex(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: getCurrentIndexProvider.selectIndex == index
                          ? Color(0xFFEAEAEA)
                          : AppColors.whiteColorFF,
                      border: Border.all(
                        width: MySize.scaleFactorWidth * 1,
                        color: getCurrentIndexProvider.selectIndex == index
                            ? Color(0xFF061229)
                            : Color(0xFFDDDDDD),
                      ),
                      borderRadius: BorderRadius.circular(MySize.size10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: MySize.scaleFactorHeight * 21,
                        left: MySize.scaleFactorWidth * 17,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            residentialData[index]["icon"],
                            color: AppColors.blackColor00,
                            height: MySize.scaleFactorHeight * 36,
                            width: MySize.scaleFactorWidth * 36,
                          ),
                          SizedBox(
                            height: MySize.scaleFactorHeight * 11,
                          ),
                          customTextMedium(
                            title: residentialData[index]["label"],
                            color: isSelected
                                ? Colors.black
                                : AppColors.blackColor00,
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),

        SizedBox(
          height: MySize.size16,
        ),
        Center(
          child: InkWell(
            borderRadius: BorderRadius.circular(MySize.size10),
            onTap: () {
              Provider.of<SaleAndRentProvider>(context, listen: false)
                  .toggleExpanded();
            },
            child: customTextMedium(
              textAlign: TextAlign.center,
              title: Provider.of<SaleAndRentProvider>(context).expanded
                  ? "collapse for See more"
                  : "Expand for See more",
              color: Provider.of<SaleAndRentProvider>(context).expanded
                  ? Color(0xFF415060)
                  : AppColors.primaryColor62,
              fontSize: MySize.size16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        SizedBox(
          height: MySize.size16,
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
