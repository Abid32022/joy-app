import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/providers/rentandsale_provider.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:provider/provider.dart';
import '../../../../../utils/appcolors.dart';
import '../../../../base/custom_textwidget.dart';

class SelectFeaturesComponent extends StatelessWidget {
  SelectFeaturesComponent({super.key});

  List expansionTileData = [
    "Tv lounge",
    "Store room",
    "Laundry room",
    "Study room",
    "Dinning room",
    "Drawing room",
    "Powder room",
    "Servant quarter",
  ];
  List expansionHeaderData = [
    "Primary Features",
    "Utilities",
    "Communication",
    "Communication",
    "Landmarks Nearby",
    "Landmarks Nearby",
    "Secondary Features",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MySize.size14),

        ///Select Features Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customTextMedium(
              title: "Select Features",
              color: AppColors.titleColor29,
              fontSize: MySize.size18,
              fontWeight: FontWeight.w500,
            ),
            /// ---Rotating Image into 180 degree
            Consumer<SaleAndRentProvider>(builder: (context, SaleAndRentProvider, child) {
              return GestureDetector(
                onTap: (){
                  SaleAndRentProvider.toggleSelectFeaturesVisibility();
                  print(SaleAndRentProvider.isSelectFeaturesVisible);
                },
                child: Transform.rotate(
                  angle: 180 * (3.141592653589793 / 180),
                  child: SvgPicture.asset(
                    AppConstant.arrow_down,
                    width: MySize.size15,
                    height: MySize.size10,
                  ),
                ),
              );
            },)
          ],
        ),
        SizedBox(height: MySize.size18),
        Consumer<SaleAndRentProvider>(
          builder: (context, saleAndRentProvider, child) {
            return Visibility(
              visible: saleAndRentProvider.isSelectFeaturesVisible,
              child: ListView.builder(
                itemCount: expansionHeaderData.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: MySize.size20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: saleAndRentProvider.selectedExpansionIndex ==
                                    index
                                ? AppColors.backGroundColorEA
                                : Colors.white,
                            borderRadius: BorderRadius.circular(MySize.size8),
                            border: Border.all(
                              color:
                                  saleAndRentProvider.selectedExpansionIndex ==
                                          index
                                      ? AppColors.backGroundColorEA
                                      : Color(0xFFC6C6C8),
                              width: MySize.scaleFactorWidth * 0.88,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:  EdgeInsets.all(MySize.size8),
                                child: customTextMedium(
                                  title: expansionHeaderData[index],
                                  fontSize: MySize.size16,
                                  color: Color(0xFF061229),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  saleAndRentProvider.setExpanded(index ==
                                          saleAndRentProvider
                                              .selectedExpansionIndex
                                      ? false
                                      : true);
                                  saleAndRentProvider
                                      .setSelectedExpansionIndex(index);
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(right: MySize.size18),
                                  child: Transform.rotate(
                                    angle: saleAndRentProvider
                                                .selectedExpansionIndex ==
                                            index
                                        ? saleAndRentProvider.isExpanded
                                            ? 360 * (3.141592653589793 / 180)
                                            : 270 * (3.141592653589793 / 180)
                                        : 270 * (3.141592653589793 / 180),
                                    child: SvgPicture.asset(
                                      AppConstant.arrow_down,
                                      width: MySize.size15,
                                      height: MySize.size10,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        /// visibility Container
                        Visibility(
                          visible: saleAndRentProvider.isExpanded &&
                              saleAndRentProvider.selectedExpansionIndex ==
                                  index,
                          child: Consumer<SaleAndRentProvider>(
                            builder:
                                (context, selectedIndexDataProvider, child) {
                              return Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(top: MySize.size15),
                                child: GridView.builder(
                                  itemCount: expansionTileData.length,
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisSpacing: MySize.size15,
                                    crossAxisSpacing: MySize.size15,
                                    childAspectRatio: 7.2 / 2,
                                    crossAxisCount: 2,
                                  ),
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        selectedIndexDataProvider
                                            .setSelectedData(index);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              MySize.size8),
                                          border: Border.all(
                                            color: selectedIndexDataProvider
                                                        .selectedIndexData ==
                                                    index
                                                ? AppColors.primaryColor62
                                                : Color(0xFFEAEAEA),
                                            width:
                                                MySize.scaleFactorWidth * 0.88,
                                          ),
                                        ),
                                        child: Center(
                                          child: customTextMedium(
                                            title: expansionTileData[index],
                                            color: selectedIndexDataProvider
                                                        .selectedIndexData ==
                                                    index
                                                ? AppColors.primaryColor62
                                                : Color(0xFF415060),
                                            fontSize: MySize.size16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
