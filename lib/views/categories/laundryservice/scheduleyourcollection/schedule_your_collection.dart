import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
class ScheduleYourCollection extends StatefulWidget {
  const ScheduleYourCollection({super.key});

  @override
  State<ScheduleYourCollection> createState() => _ScheduleYourCollectionState();
}

class _ScheduleYourCollectionState extends State<ScheduleYourCollection> {
  int currentIndex = -1;
  int currentIndex1 = -1;
  List schedule = [
    ["Tomorrow", "Nov 10,2023"],
    ["Saturday", "Nov 11,2023"],
    ["Sunday", "Nov 12,2023"],
    ["Monday", "Nov 13,2023"],
    ["Tuesday", "Nov 14,2023"],
    ["Wednesday", "Nov 15,2023"],
    ["Thursday", "Nov 16,2023"],
  ];
  List schedule2 = [
   "11:00 am - 12:00 pm",
   "08:00 am - 09:00 pm",
   "09:00 am - 10:00 pm",
  ];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
        child: Scaffold(
            appBar:CustomAppBar(
            onBackTap: () {
              Get.back();
            },
            verifiedVisibile: false,
          ),
      backgroundColor: AppColors.backGroundColorFA,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(MySize.size24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextMedium(
                    title: "Schedule your collection",
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w500),
                SizedBox(
                  height: MySize.size12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ListView.builder(
                        itemCount: schedule.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              if (currentIndex == index) {
                              } else {
                                setState(() {
                                  currentIndex = index;
                                });
                              }
                            },
                            child: Wrap(
                              children: [
                                Container(
                                  width: MySize.scaleFactorWidth * 125,
                                  margin: EdgeInsets.only(top: MySize.size10),
                                  padding: EdgeInsets.only(
                                      top: MySize.size10,
                                      bottom: MySize.size8,
                                      left: MySize.size12),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(MySize.size8),
                                    border: Border.all(
                                        color: currentIndex == index
                                            ? Color(0xFFFBE1BF)
                                            : AppColors.lineColorAD),
                                    color: currentIndex == index
                                        ? Color(0xFFFFF5E7)
                                        : AppColors.whiteColorFF,
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        customTextMedium(
                                            title: schedule[index][0],
                                            fontSize: MySize.size16,
                                            fontWeight: FontWeight.w500),
                                        SizedBox(
                                          height: MySize.size4,
                                        ),
                                        customTextRegular(
                                            title: schedule[index][1],
                                            fontSize: MySize.size14,
                                            color:
                                                AppColors.placeHolderColor4F,
                                            fontWeight: FontWeight.w400),
                                      ]),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ListView.builder(
                        itemCount: schedule2.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              if (currentIndex1 == index) {
                              } else {
                                setState(() {
                                  currentIndex1 = index;
                                });
                              }
                            },
                            child: Wrap(
                              children: [
                                Container(
                                  width: MySize.scaleFactorWidth * 176,
                                  padding: EdgeInsets.only(
                                      top: MySize.size10,
                                      left: MySize.size12,
                                      bottom: MySize.size12),
                                  margin: EdgeInsets.only(top: MySize.size10,left: MySize.size10,),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(MySize.size8),
                                    border: Border.all(
                                        color: currentIndex1 == index
                                            ? Color(0xFFFBE1BF)
                                            : AppColors.lineColorAD),
                                    color: currentIndex1 == index
                                        ? Color(0xFFFFF5E7)
                                        : AppColors.whiteColorFF,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      customTextRegular(
                                          title: "between",
                                          fontSize: MySize.size14,
                                          color: AppColors.placeHolderColor4F,
                                          fontWeight: FontWeight.w400),
                                      SizedBox(
                                        height: MySize.size8,
                                      ),
                                      customTextMedium(
                                          title: schedule2[index],
                                          fontSize: MySize.size16,
                                          color: AppColors.placeHolderColor4F,
                                          fontWeight: FontWeight.w500),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },),
                    ),

                  ],
                ),
                SizedBox(height: MySize.size50),
                Center(
                  child: customDivider(
                      width: MySize.scaleFactorWidth * 363,
                      color: AppColors.lineColorAD),
                ),
                SizedBox(height: MySize.size10),
                customButton(
                  ontap: () {

                  },
                  borderRadius: MySize.size8,
                  colors: AppColors.parcelSecondaryColor8B,
                  text: "Schedule",
                  fontSize: MySize.size14,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
