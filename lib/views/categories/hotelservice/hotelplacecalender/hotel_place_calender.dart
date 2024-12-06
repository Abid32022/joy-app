import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/categories/hotelservice/hotelplacesummary/hotel_place_summary.dart';
class HotelPlaceCalender extends StatefulWidget {
  const HotelPlaceCalender({super.key});

  @override
  State<HotelPlaceCalender> createState() => _HotelPlaceCalenderState();
}

class _HotelPlaceCalenderState extends State<HotelPlaceCalender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      backgroundColor: AppColors.backGroundColorFA,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
          child: Column(
            children: [
              CalendarDatePicker(initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2050),
                onDateChanged: (value) {
                },),
              SizedBox(
                height: MySize.scaleFactorHeight * 20,
              ),
              CalendarDatePicker(initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2050),
                onDateChanged: (value) {
                  Get.to(HotelPlaceSummary());
                },)
            ],
          ),
        ),
      ),
    );
  }
}
