import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';

import '../scheduleyourcollection/schedule_your_collection.dart';



class LaundryAddressPoint extends StatefulWidget {
  const LaundryAddressPoint({super.key});

  @override
  State<LaundryAddressPoint> createState() => _LaundryAddressPointState();
}

class _LaundryAddressPointState extends State<LaundryAddressPoint> {
  List selectPickup = [
    "Office",
    "Hotel",
    "Villa",
    "Apartment",
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    return SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(onBackTap: (){
            Get.back();
          },
            verifiedVisibile: false,
          ),
      backgroundColor: AppColors.backGroundColorFA,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MySize.size24,vertical: MySize.size28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
              customTextMedium(
                  title: "Select Pickup - Point Address Type",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
                SizedBox(height: MySize.size18),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: selectPickup.length,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    crossAxisSpacing: MySize.size12,
                    mainAxisSpacing: MySize.size10,
                    mainAxisExtent: MySize.size56,
                  ), itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectedIndex == index) {
                          // If the selected item is tapped again, unselect it
                          selectedIndex = -1;
                        } else {
                          // Select the tapped item
                          selectedIndex = index;
                        }
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: MySize.size10,vertical: MySize.size16),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(MySize.size8),
                         border: Border.all(color:selectedIndex == index ?Color(0xFFFBE1BF): AppColors.lineColorAD),
                         color:selectedIndex == index  ?Color(0xFFFFF5E7):AppColors.backGroundColorFA,
                       ),
                      child: customTextRegular(
                          title: selectPickup[index],
                          fontSize:MySize.size16,
                          fontWeight:selectedIndex == index ? FontWeight.w600:FontWeight.w400),
                    ),
                  );
                },),
                SizedBox(
                  height: MySize.size20,
                ),
                Center(
                  child: customDivider(
                    height: 2,
                    width: MySize.size363,
                    color: AppColors.lineColorAD
                  ),
                ),
                SizedBox(
                  height: MySize.size12,
                ),
                customTextMedium(
                    title: "Apartment Details",
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w500),
                SizedBox(
                  height: MySize.size16,
                ),
                customTextMedium(
                    title: "Building",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500),
                SizedBox(
                  height: MySize.size5,
                ),
                customTextField(
                  borderRadius: MySize.size8,
                  bordercolor: AppColors.lineColorAD,
                  hintText: "Enter Building",
                  hinttextcolor: AppColors.placeHolderColor4F,
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w400,
                  fillcolor: AppColors.whiteColorFF,
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                customTextMedium(
                    title: "Apartment number",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500),
                SizedBox(
                  height: MySize.size5,
                ),
                customTextField(
                  borderRadius: MySize.size8,
                  bordercolor: AppColors.lineColorAD,
                  hintText: "Enter Apartment Number",
                  hinttextcolor: AppColors.placeHolderColor4F,
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w400,
                  fillcolor: AppColors.whiteColorFF,
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                RichText(text: TextSpan(children: [
                  TextSpan(
                    text: "Short note ",
                    style: TextStyle(
                      fontSize: MySize.size15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor00
                    )
                  ),
                  TextSpan(
                    text: "(Optional)",
                    style: TextStyle(
                      fontSize: MySize.scaleFactorHeight * 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.placeHolderColor4F
                    ),
                  ),
                ])),
                SizedBox(
                  height: MySize.size5,
                ),
                customTextField(
                  borderRadius: MySize.size8,
                  bordercolor: AppColors.lineColorAD,
                  hintText: "Enter short note",
                  hinttextcolor: AppColors.placeHolderColor4F,
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w400,
                  fillcolor: AppColors.whiteColorFF,
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                Center(
                  child: customDivider(
                      height: 2,
                      width: MySize.size363,
                      color: AppColors.lineColorAD
                  ),
                ),
                SizedBox(
                  height: MySize.size10,
                ),
                customTextMedium(
                    title: "Complete Address",
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w500),
                SizedBox(
                  height: MySize.size30,
                ),
                customTextMedium(
                    title: "Complete Address",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500),
                SizedBox(
                  height: MySize.size5,
                ),
                customTextField(
                  borderRadius: MySize.size8,
                  bordercolor: AppColors.lineColorAD,
                  hintText: "Locate your apartment, villa, office, or hotel address.",
                  hinttextcolor: AppColors.placeHolderColor4F,
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w400,
                  fillcolor: AppColors.whiteColorFF,
                ),
                SizedBox(
                  height: MySize.size100,
                ),
                Center(
                  child: customDivider(
                      height: 2,
                      width: MySize.size363,
                      color: AppColors.lineColorAD
                  ),

                ),
                SizedBox(
                  height: MySize.size10,
                ),
                customButton(
                    ontap: (){
                      Get.to(ScheduleYourCollection());
                    },
                    borderRadius: MySize.size8,
                    colors:AppColors.parcelSecondaryColor8B,
                    text: "Save Address",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500,
                    ),
            ],),
          ),
        ]),
      ),
    ));
  }
}
