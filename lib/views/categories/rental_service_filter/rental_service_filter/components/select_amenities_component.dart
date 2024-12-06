import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';
import 'package:provider/provider.dart';
import '../../../../../providers/rentalservice_provider.dart';
import '../../../../../providers/rentandsale_provider.dart';
import '../../../../../utils/appcolors.dart';
import '../../../../../utils/appconstant.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_textwidget.dart';

class SelectAmenitiesComponent extends StatefulWidget {
  Function() OnTap;

  SelectAmenitiesComponent({required this.OnTap, super.key});

  @override
  State<SelectAmenitiesComponent> createState() =>
      _SelectAmenitiesComponentState();
}

class _SelectAmenitiesComponentState extends State<SelectAmenitiesComponent> {
  List selectAmenitiesData = [
    "Amenities",
    "Features",
    "Safety",
  ];

  List<String> expansionTileData = [
    "Wifi",
    "Kitchen",
    "Washing Machine",
    "Dryer",
    "Air Conditioning",
    "Heating",
    "Dedicated Workspace",
    "TV",
    "Hair Dryer",
    "Hair Dryer",
    "Iron",
  ];

  List<String> selectFeatures = [
    "Pool",
    "Hot Tub",
    "Free Parking",
    "EV Charger",
    "Cot",
    "King bed",
    "Gym",
    "BBQ Grill",
    "Breakfast",
    "Indoor Fireplace",
    "Smoking Allowed",
  ];

  List<String> smokeAlarms = [
    "Smoke Alarm",
    "Carbon Monoxide Alarm",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MySize.size16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customTextRegular(
              title: "Select Amenities",
              color: AppColors.titleColor29,
              fontSize: MySize.size18,
              // fontFamily: 'EnnVisions',
              fontWeight: FontWeight.w500,
            ),
            Transform.rotate(
              angle: 180 * (3.141592653589793 / 180),
              child: Consumer<SaleAndRentProvider>(
                builder: (context, saleAndRentProvider, child) {
                  return InkWell(
                    onTap: widget.OnTap,
                    child: SvgPicture.asset(
                      AppConstant.arrow_down,
                      width: MySize.size15,
                      height: MySize.size10,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: MySize.size18,
        ),
        ///Amenities Data
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.backGroundColorEA,
            borderRadius: BorderRadius.circular(MySize.size8),
            border: Border.all(
              color: Color(0xFFC6C6C8),
              width: MySize.scaleFactorWidth * 0.88,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(MySize.size8),
                    child: customTextMedium(
                      title: "Amenities",
                      fontSize: MySize.size16,
                      color: Color(0xFF061229),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: MySize.size18),
                    child: Transform.rotate(
                      angle: 360 * (3.141592653589793 / 180),
                      child: SvgPicture.asset(
                        AppConstant.arrow_down,
                        width: MySize.size15,
                        height: MySize.size10,
                      ),
                    ),
                  ),


                ],
              ),

            ],
          ),

        ),
        SizedBox(height: MySize.size16,),
        ///Consumer 1
        Consumer<RentalServiceProvider>(
          builder: (context, getSelectedCheckBox1, child) {


            return ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: expansionTileData.length,
              itemBuilder: (context, subIndex) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: MySize.size3, top: MySize.size10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customTextRegular(
                        title: expansionTileData[subIndex],
                        color: AppColors.titleColor29,
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                          activeColor: AppColors.primaryColor62,
                          materialTapTargetSize:
                          MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(MySize.size4),
                            side: BorderSide(
                              width: MySize.scaleFactorWidth * 0.89,
                              color: AppColors.lineColorC8,
                            ),
                          ),
                          value: getSelectedCheckBox1
                              .checkboxValues1[subIndex],
                          onChanged: (value) {
                            getSelectedCheckBox1.setSelectedCheckBox1(
                                value ?? false, subIndex);
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),



        SizedBox(
          height: MySize.size18,
        ),
        ///Features Data
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.backGroundColorEA,
            borderRadius: BorderRadius.circular(MySize.size8),
            border: Border.all(
              color: Color(0xFFC6C6C8),
              width: MySize.scaleFactorWidth * 0.88,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(MySize.size8),
                    child: customTextMedium(
                      title: "Features",
                      fontSize: MySize.size16,
                      color: Color(0xFF061229),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: MySize.size18),
                    child: Transform.rotate(
                      angle: 360 * (3.141592653589793 / 180),
                      child: SvgPicture.asset(
                        AppConstant.arrow_down,
                        width: MySize.size15,
                        height: MySize.size10,
                      ),
                    ),
                  ),


                ],
              ),

            ],
          ),

        ),
        SizedBox(height: MySize.size16,),
        ///Consumer 2
        Consumer<RentalServiceProvider>(
          builder: (context, getSelectedCheckBox2, child) {


            return ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: selectFeatures.length,
              itemBuilder: (context, subIndex) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: MySize.size3, top: MySize.size10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customTextRegular(
                        title: selectFeatures[subIndex],
                        color: AppColors.titleColor29,
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                          activeColor: AppColors.primaryColor62,
                          materialTapTargetSize:
                          MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(MySize.size4),
                            side: BorderSide(
                              width: MySize.scaleFactorWidth * 0.89,
                              color: AppColors.lineColorC8,
                            ),
                          ),
                          value: getSelectedCheckBox2
                              .checkboxValues2[subIndex],
                          onChanged: (value) {
                            getSelectedCheckBox2.setSelectedCheckBox2(
                                value ?? false, subIndex);
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),



        SizedBox(
          height: MySize.size18,
        ),
        ///Features Data
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.backGroundColorEA,
            borderRadius: BorderRadius.circular(MySize.size8),
            border: Border.all(
              color: Color(0xFFC6C6C8),
              width: MySize.scaleFactorWidth * 0.88,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(MySize.size8),
                    child: customTextMedium(
                      title: "Features",
                      fontSize: MySize.size16,
                      color: Color(0xFF061229),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: MySize.size18),
                    child: Transform.rotate(
                      angle: 360 * (3.141592653589793 / 180),
                      child: SvgPicture.asset(
                        AppConstant.arrow_down,
                        width: MySize.size15,
                        height: MySize.size10,
                      ),
                    ),
                  ),


                ],
              ),

            ],
          ),

        ),
        SizedBox(height: MySize.size16,),
        ///Consumer 2
        Consumer<RentalServiceProvider>(
          builder: (context, getSelectedCheckBox3, child) {


            return ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: smokeAlarms.length,
              itemBuilder: (context, subIndex) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: MySize.size3, top: MySize.size10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customTextRegular(
                        title: smokeAlarms[subIndex],
                        color: AppColors.titleColor29,
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                          activeColor: AppColors.primaryColor62,
                          materialTapTargetSize:
                          MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(MySize.size4),
                            side: BorderSide(
                              width: MySize.scaleFactorWidth * 0.89,
                              color: AppColors.lineColorC8,
                            ),
                          ),
                          value: getSelectedCheckBox3
                              .checkboxValues3[subIndex],
                          onChanged: (value) {
                            getSelectedCheckBox3.setSelectedCheckBox3(
                                value ?? false, subIndex);
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
        SizedBox(
          height: MySize.size32,
        ),
        customTextRegular(
          title: "Booking Options",
          color: AppColors.titleColor29,
          fontSize: MySize.size20,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(
          height: MySize.size32,
        ),
        customTextRegular(
          title: "Instant Book",
          color: AppColors.titleColor29,
          fontSize: MySize.size20,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(
          height: MySize.size5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customTextRegular(
              title: "Book without waiting for the host to respond",
              color: AppColors.placeHolderColor4F,
              fontSize: MySize.size14,
              fontWeight: FontWeight.w400,
            ),
            GFToggle(
              onChanged: (val) {},
              value: true,
              disabledText: "",
              enabledText: "",
              enabledThumbColor: AppColors.titleColor50,
              disabledThumbColor: AppColors.backGroundColorEA,
              // disabledTrackColor: AppColors.toggleColorE0,
              enabledTrackColor: AppColors.backGroundColorEA,

              type: GFToggleType.custom,
            )
          ],
        ),
        SizedBox(
          height: MySize.size25,
        ),
        customTextRegular(
          title: "Self Check-in",
          color: AppColors.titleColor29,
          fontSize: 20,
          // fontFamily: 'EnnVisions',
          fontWeight: FontWeight.w400,
        ),
        SizedBox(
          height: MySize.size8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customTextRegular(
              title:
                  "Ensuring the property is easy to\naccess when you arrive.",
              color: AppColors.placeHolderColor4F,
              fontSize: MySize.size14,
              fontWeight: FontWeight.w400,
            ),
            GFToggle(
              onChanged: (val) {},
              value: true,
              disabledText: "",
              enabledText: "",
              enabledThumbColor: AppColors.titleColor50,
              disabledThumbColor: AppColors.backGroundColorEA,
              // disabledTrackColor: AppColors.toggleColorE0,
              enabledTrackColor: AppColors.backGroundColorEA,

              type: GFToggleType.custom,
            )
          ],
        ),
        SizedBox(
          height: MySize.scaleFactorHeight * 21,
        ),
        GestureDetector(
          onTap: widget.OnTap,
          child: Center(
            child: customTextRegular(
              title: "collapse Amenities",
              color: AppColors.collapseColor60,
              fontSize: MySize.size14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          height: MySize.size12,
        ),
      ],
    );
  }
}
