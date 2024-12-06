import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/rentalservice_provider.dart';
import '../../../../../providers/rentandsale_provider.dart';
import '../../../../../utils/appconstant.dart';

class TypeOfPropertyComponent extends StatelessWidget {
  TypeOfPropertyComponent({super.key});

  List residentialData = [
    {"icon": AppConstant.ic_house, "label": "House"},
    {"icon": AppConstant.ic_flat, "label": "Flat"},
    {"icon": AppConstant.ic_lower, "label": "Lower Portion"},
    {"icon": AppConstant.ic_upper, "label": "Upper Portion"},
    // {"icon": AppConstant.ic_room, "label": "Room"},
    // {"icon": AppConstant.ic_farm_house, "label": "Farm House"},
    // {"icon": AppConstant.ic_guesthouse, "label": "Guest House"},
    // {"icon": AppConstant.ic_penthouse, "label": "Pent House"},
    // {"icon": AppConstant.ic_annexe, "label": "Annexe"},
    // {"icon": AppConstant.ic_hostel, "label": "Hostel"},
    // {"icon": AppConstant.ic_house, "label": "Hotel Suites"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MySize.scaleFactorHeight * 21,
        ),
        customTextRegular(
          title: "Type of property",
          color: AppColors.titleColor29,
          fontSize: MySize.size20,
          // fontFamily: 'EnnVisions',
          fontWeight: FontWeight.w400,
        ),
        SizedBox(
          height: MySize.scaleFactorHeight * 22,
        ),
        GridView.builder(
        itemCount: residentialData.length,

          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: MySize.size20,
            mainAxisSpacing: MySize.size15,
            mainAxisExtent: MySize.size120,
          ),
          itemBuilder: (context, index) {
            return Consumer<RentalServiceProvider>(
              builder: (context, getCurrTabProvider, child) {
                bool isSelected =
                    getCurrTabProvider.selectedTab == index;

                return InkWell(
                  borderRadius: BorderRadius.circular(MySize.size10),
                  onTap: () {
                    getCurrTabProvider.setSelectedTab(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: getCurrTabProvider.selectedTab == index
                          ? Color(0xFFEAEAEA)
                          : AppColors.whiteColorFF,
                      border: Border.all(
                        width: MySize.scaleFactorWidth * 1,
                        color:  getCurrTabProvider.selectedTab == index
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
          height: MySize.scaleFactorHeight * 20,
        ),
        Divider(
          thickness: 0.5,
          color: Color(0xFFC6C6C8),

        )
      ],
    );
  }
}
