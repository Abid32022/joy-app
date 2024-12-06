import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/roomsharefilter/component/room_share_categories.dart';

import '../hotelfilter/hotel_filter.dart';
import 'component/room_share_ price_range.dart';
import 'component/room_share_reuse2 _listview.dart';
import 'component/room_share_reuse_listview.dart';

class RoomShareFilter extends StatefulWidget {
  const RoomShareFilter({super.key});

  @override
  State<RoomShareFilter> createState() => _RoomShareFilterState();
}

class _RoomShareFilterState extends State<RoomShareFilter> {
  /// int
  int? currentValue;
  int? selectedIndex;
  int? selectedIndex2;
  int? selectedIndex3;
  int value = 0;

  /// bool

  /// List
  List gender = [
    "Male",
    "Female",
    "Other",
  ];
  List duration = [
    "Short Term",
    "Long Term",
  ];
  List smoking = [
    "Smoking",
    "Non-Smoking",
  ];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: AppointmentAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MySize.size24, vertical: MySize.size20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CategoriesComponents(),
            SizedBox(height: MySize.size10),
            customTextMedium(
                title: "Type of Place",
                fontSize: MySize.size18,
                fontWeight: FontWeight.w400),
            SizedBox(height: MySize.size10),
            customTextRegular(
                title:
                    "Find rooms, entire homes, or any kind of accommodation.",
                fontSize: MySize.size14,
                fontWeight: FontWeight.w400),
            SizedBox(height: MySize.size16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentValue = currentValue == 0 ? null : 0;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: MySize.size19,
                    ),
                    width: MySize.scaleFactorWidth * 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border:
                          Border.all(color: AppColors.lineColorAD, width: 0.3),
                      color: currentValue == 0
                          ? AppColors.primaryColor62
                          : AppColors.whiteColorFF,
                    ),
                    child: Center(
                      child: customTextMedium(
                          title: "ANY TYPE",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentValue = currentValue == 1 ? null : 1;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: MySize.size19,
                    ),
                    width: MySize.scaleFactorWidth * 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border:
                          Border.all(color: AppColors.lineColorAD, width: 0.3),
                      color: currentValue == 1
                          ? AppColors.primaryColor62
                          : AppColors.whiteColorFF,
                    ),
                    child: Center(
                      child: customTextMedium(
                          title: "SHARE ROOM",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentValue = currentValue == 2 ? null : 2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: MySize.size19,
                    ),
                    width: MySize.scaleFactorWidth * 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border:
                          Border.all(color: AppColors.lineColorAD, width: 0.3),
                      color: currentValue == 2
                          ? AppColors.primaryColor62
                          : AppColors.whiteColorFF,
                    ),
                    child: Center(
                      child: customTextMedium(
                          title: "PRIVATE ROOM",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MySize.size20),
            customDivider(
              width: MySize.scaleFactorWidth * 363,
            ),
            SizedBox(height: MySize.size10),
            PriceRangeComponent(),
            SizedBox(height: MySize.size20),
            customDivider(
              width: MySize.scaleFactorWidth * 363,
            ),
            SizedBox(height: MySize.size10),
            ReUseListView(
              title: "Gender Preferences",
              text: gender,
              itemCount: gender.length,
              selectedValue: selectedIndex,
              onChanged: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            ),
            ReUseListView2(
              title: "Duration of Stay",
              text: duration,
              itemCount: duration.length,
              selectedValue: selectedIndex2,
              onChanged: (value) {
                setState(() {
                  selectedIndex2 = value;
                });
              },
            ),
            ReUseListView2(
              title: "Smoking Preferences",
              text: duration,
              itemCount: duration.length,
              selectedValue: selectedIndex3,
              onChanged: (value) {
                setState(() {
                  selectedIndex3 = value;
                });
              },
            ),
            SizedBox(height: MySize.size10),
            Padding(
              padding:  EdgeInsets.only(right: MySize.size12),
              child: Row(
                children: [
                  customTextRegular(
                      title: "Distance to Public Transportation",
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w400),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        if(value == 0){
                        }else{
                          setState(() {
                            value--;
                          });
                        }
                      },
                      child: SvgPicture.asset(AppConstant.ic_minus, height: MySize.size28)),
                  SizedBox(width: MySize.size5),
                  customTextMedium(
                      title: "${value}",
                      fontSize: MySize.size18,
                      fontWeight: FontWeight.w500),
                  SizedBox(width: MySize.size5),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          value++;
                        });
                      },
                      child: SvgPicture.asset(AppConstant.ic_plus, height: MySize.size28)),
                ],
              ),
            ),
            SizedBox(height: MySize.size5),
            Row(
              children: [
                customTextRegular(
                    title: "Pet-Friendly",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
                Spacer(),
                Transform.scale(
                  scale: 1.2,
                  child: Checkbox(
                    activeColor: AppColors.primaryColor62,
                    checkColor: AppColors.primaryColor62,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MySize.size20),
                    ),
                    side: BorderSide(
                      color: AppColors.lineColorAD,
                      width: 0.5,
                    ),
                    value: true,
                    onChanged: (value) {

                    },
                  ),
                ),
              ],
            ),
                SizedBox(height: MySize.size10),
                customDivider(
                  width: MySize.scaleFactorWidth * 363,
                ),
                SizedBox(height: MySize.size16),
                customButton(
                    ontap: () {
                        Get.to(HotelFilter());
                    },
                    text: "APPLY FILTER",
                    borderRadius: MySize.size8,
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size14,
                    borderColor: AppColors.btnColorDE,
                    colors: AppColors.btnColorDE),
          ]),
        ),
      ),
    ));
  }
}
