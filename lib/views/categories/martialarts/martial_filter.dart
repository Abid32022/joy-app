import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../../../utils/mysize.dart';
import '../donationfilter/donation_filter.dart';
import 'component/martial_art_style.dart';
import 'component/martial_categories_component.dart';
import 'component/reuse_listview.dart';

class MartialFilter extends StatefulWidget {
  const MartialFilter({super.key});

  @override
  State<MartialFilter> createState() => _MartialFilterState();
}

class _MartialFilterState extends State<MartialFilter> {
  bool switchValue = true;
  bool visibleValue = false;
  int? selectedValue1;
  int? selectedValue2;
  int? selectedValue3;
  int? selectedValue4;
  int? selectedValue5;
  int? selectedValue6;
  int? selectedValue7;
  List skill = ["Beginner", "Intermediate", "Advanced", ];
  List cost = [
    "Affordable",
    "Standard",
    "Premium",
  ];
  List age = [
    "Children",
    "Teens",
    "Adults",
  ];
  List classList = [
    "Group Classes",
    "Private Lessons",
    "Online Classes",
  ];
  List duration = [
    "Short-Term (e.g., workshops)",
    "Long-Term (e.g., ongoing classes)",
  ];
  List facility = [
    "Gym Facilities",
    "Equipment Availability",
    "Changing Rooms",
  ];
  List schedule = [
    "Weekdays",
    "Weekends",
    "Morning Classes",
    "Afternoon Classes",
    "Evening Classes",
  ];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: AppointmentAppBar(
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MySize.size24, vertical: MySize.size20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CategoriesComponents(),
            ReUseListView(

              title: "Skill Level",
              text: skill,
              itemCount: skill.length,
              selectedValue: selectedValue1,
              onChanged: (value) {
                setState(() {
                  selectedValue1 = value;
                });
              },
            ),
            ReUseListView(
              title: "Cost Range",
              text: cost,
              itemCount: cost.length,
              selectedValue: selectedValue2,
              onChanged: (value) {
                setState(() {
                  selectedValue2 = value;
                });
              },
            ),
            ReUseListView(
              title: "Age Group:",
              text: age,
              itemCount: age.length,
              selectedValue: selectedValue3,
              onChanged: (value) {
                setState(() {
                  selectedValue3 = value;
                });
              },
            ),
            ReUseListView(
              title: "Class Type",
              text: classList,
              itemCount: classList.length,
              selectedValue: selectedValue4,
              onChanged: (value) {
                setState(() {
                  selectedValue4 = value;
                });
              },
            ),
            ReUseListView(
              title: "Duration",
              text: duration,
              itemCount: duration.length,
              selectedValue: selectedValue5,
              onChanged: (value) {
                setState(() {
                  selectedValue5 = value;
                });
              },
            ),
            ReUseListView(
              title: "Facility Amenities",
              text: facility,
              itemCount: facility.length,
              selectedValue: selectedValue6,
              onChanged: (value) {
                setState(() {
                  selectedValue6 = value;
                });
              },
            ),
            ReUseListView(
              title: "Schedule",
              text: schedule,
              itemCount: schedule.length,
              selectedValue: selectedValue7,
              onChanged: (value) {
                setState(() {
                  selectedValue7 = value;
                });
              },
            ),
            SizedBox(height: MySize.size16),
            customTextMedium(
                title: "Trial Classes",
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500),
            Row(
              children: [
                customTextRegular(
                    title: "Availability of Trial Classes",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
                Spacer(),
                IconButton(
                    onPressed: () {
                      setState(() {
                        switchValue = !switchValue;
                      });
                    },
                    icon: switchValue
                        ? SvgPicture.asset(
                            AppConstant.ic_switch_on,
                            height: MySize.size18,
                          )
                        : SvgPicture.asset(AppConstant.ic_switch_off,
                            height: MySize.size18))
              ],
            ),
            customDivider(color: AppColors.lineColorAD, width: double.infinity),
            Visibility(
              visible: visibleValue == true,
              child:
            MartialArtStyle(),
            ),
                SizedBox(height: MySize.size20),
            customButton(
                ontap: () {
                  setState(() {
                    visibleValue = !visibleValue;
                  });
                },
                text: visibleValue ? "COLLAPSE AMENITIES":"MARTIAL ART STYLE",
                borderRadius: MySize.size8,
                fontWeight: FontWeight.w500,
                fontColor: AppColors.lineColor60,
                fontSize: MySize.size14,
                borderColor: visibleValue ?  AppColors.backGroundColorFA:AppColors.lineColorAD,
                colors: visibleValue ? AppColors.backGroundColorFA:Color(0xFFF3F3F3)),
            Visibility(
                visible: visibleValue == true,
                child: customDivider(
              height: 2,
              color: AppColors.primaryColor62,
              width: double.infinity
            )),
            SizedBox(
              height: MySize.size16,
            ),
            customButton(
                ontap: () {
                  Get.to(DonationFilter());
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
