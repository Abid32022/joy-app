import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';

import '../laundryfilter/laundry_filter.dart';
import 'component/hotel_categories.dart';
import 'component/hotel_checking_time.dart';
import 'component/hotel_price_range.dart';
import 'component/rooms_component.dart';

class HotelFilter extends StatefulWidget {
  const HotelFilter({super.key});

  @override
  State<HotelFilter> createState() => _HotelFilterState();
}

class _HotelFilterState extends State<HotelFilter> {
  bool visibleValue = false;
  List items = [
    "Room 1",
    "Room 2",
    "Room 3",
    "Room 4",
    "Room 5",
  ];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: AppointmentAppBar(
        verifiedVisibile: false,
        onBackTap: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MySize.size24, vertical: MySize.size20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            HotelCategoriesComponents(),
            SizedBox(height: MySize.size10),
            CheckingTime(text: "Check In"),
            SizedBox(height: MySize.size16),
            CheckingTime(text: "Check Out"),
            HotelPriceRangeComponent(),
            SizedBox(height: MySize.size10),
            ListView.builder(
              itemCount: visibleValue ? 2 : items.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: MySize.size16),
                  child: HotelRooms(
                    text: items[index],
                  ),
                );
              },
            ),
            SizedBox(height: MySize.size16),
            customDivider(
                width: MySize.scaleFactorWidth * 363,
                color: AppColors.lineColorAD),
            customButton(
                ontap: () {
                  setState(() {
                    visibleValue = !visibleValue;
                  });
                },
                text: visibleValue ? "ADD MORE ROOM" : "CLOSED",
                borderRadius: MySize.size8,
                fontWeight: FontWeight.w600,
                fontSize: MySize.size14,
                fontColor: visibleValue
                    ? AppColors.primaryColor62
                    : AppColors.errorFailureColor26,
                borderColor: AppColors.backGroundColorFA,
                colors: AppColors.backGroundColorFA),
            SizedBox(height: MySize.size10),
            customDivider(
                width: MySize.scaleFactorWidth * 363,
                color: visibleValue
                    ? AppColors.primaryColor62
                    : AppColors.lineColorAD),
            SizedBox(height: MySize.size16),
            customButton(
                ontap: () {
                  Get.to(LaundryFilter());
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
