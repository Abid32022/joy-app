import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/vendorfilter/component/categories_components.dart';

import '../martialarts/martial_filter.dart';
import 'component/select_features.dart';

class VendorFilter extends StatefulWidget {
  const VendorFilter({super.key});

  @override
  State<VendorFilter> createState() => _VendorFilterState();
}

class _VendorFilterState extends State<VendorFilter> {
  int? selectedCheckboxIndex;
  int? selectedCheckboxIndex1;
  int? selectedCheckboxIndex2;
  int? selectedCheckboxIndex3;
  int? selectedCheckboxIndex4;
  int? currentValue;
  bool visibleValue = false;
  List  budgetRange = [
    "Affordable",
    "Standard",
    "Premium",
  ];
  List appointment = [
    "Weekdays",
    "Weekdays",
    "Evenings",
  ];
  List urgency = [
    "Emergency",
    "Same-Day",
    "Scheduled",
  ];
  List subscription = [
    "Monthly Maintenance Plans",
    "One-Time Services",
  ];
  List response = [
    "Quick Response",
    "Scheduled Appointments",
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
          padding: EdgeInsets.symmetric(horizontal: MySize.size24,vertical: MySize.size20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CategoriesComponents(),
            SizedBox(
              height: MySize.size8,
            ),
            customTextMedium(
                title: "Turnaround Time",
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500),
            SizedBox(height: MySize.size10),
            customTextRegular(
                title: "Find rooms, entire homes, or any kind of accommodation.",
                fontSize: MySize.size14,
                fontWeight: FontWeight.w400),
            SizedBox(height: MySize.size16),
            Row(children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    currentValue = currentValue == 0 ? null : 0;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: MySize.size19,),
                  width: MySize.scaleFactorWidth * 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    border: Border.all(color: AppColors.lineColorAD,width: 0.3),
                    color: currentValue == 0 ? AppColors.primaryColor62:AppColors.whiteColorFF,
                  ),
                  child: Center(
                    child: customTextMedium(
                        title: "Express Service",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Spacer(),
        
              GestureDetector(
                onTap: (){
                  setState(() {
                    currentValue = currentValue == 1 ? null : 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: MySize.size19,),
                  width: MySize.scaleFactorWidth * 160,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    border: Border.all(color: AppColors.lineColorAD,width: 0.3),
                    color: currentValue == 1 ?AppColors.primaryColor62: AppColors.whiteColorFF,
                  ),
                  child: Center(
                    child: customTextMedium(
                        title: "Standard Service",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],),
            SizedBox(height: MySize.size20),
            customDivider(
              width: MySize.scaleFactorWidth * 363,
            ),
            SizedBox(height: MySize.size10),
            customTextMedium(
                title: "Budget Range",
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500),
            ListView.builder(
              shrinkWrap: true,
              itemCount: budgetRange.length,
                physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                customTextRegular(
                    title: budgetRange[index],
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
                Spacer(),
                Transform.scale(
                  scale: 1.2,
                  child: Checkbox(
                    activeColor: AppColors.primaryColor62,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MySize.size5),
                    ),
                      side: BorderSide(color: AppColors.lineColorAD,width: 0.5),
                    value:  selectedCheckboxIndex == index,
                    onChanged: (value) {
                     setState(() {
                       if (value == true) {

                         selectedCheckboxIndex = index;
                       } else {
                         selectedCheckboxIndex = null;
                       }
                     });
                    },),
                ),
        
              ],);
            },),
            customDivider(
              width: MySize.scaleFactorWidth * 363,
            ),
            SizedBox(height: MySize.size10),
            customTextMedium(
                title: "Appointment Availability",
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500),
            ListView.builder(
              shrinkWrap: true,
              itemCount: appointment.length,
                physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    customTextRegular(
                        title: appointment[index],
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400),
                    Spacer(),
                    Transform.scale(
                      scale: 1.2,
                      child: Checkbox(
                        activeColor: AppColors.primaryColor62,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(MySize.size5),
                        ),
                        side: BorderSide(color: AppColors.lineColorAD,width: 0.5),
                        value:  selectedCheckboxIndex1 == index,
                        onChanged: (value) {
                          setState(() {
                            if (value == true) {

                              selectedCheckboxIndex1 = index;
                            } else {
                              selectedCheckboxIndex1 = null;
                            }
                          });
                        },),
                    ),
        
                  ],);
              },),
            customDivider(
              width: MySize.scaleFactorWidth * 363,
            ),
            SizedBox(height: MySize.size10),
            customTextMedium(
                title: "Urgency",
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: urgency.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    customTextRegular(
                        title: urgency[index],
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400),
                    Spacer(),
                    Transform.scale(
                      scale: 1.2,
                      child: Checkbox(
                        activeColor: AppColors.primaryColor62,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(MySize.size5),
                        ),
                        side: BorderSide(color: AppColors.lineColorAD,width: 0.5),
                        value:  selectedCheckboxIndex2 == index,
                        onChanged: (value) {
                          setState(() {
                            if (value == true) {

                              selectedCheckboxIndex2 = index;
                            } else {
                              selectedCheckboxIndex2 = null;
                            }
                          });
                        },),
                    ),
        
                  ],);
              },),
            customDivider(
              width: MySize.scaleFactorWidth * 363,
            ),
            SizedBox(height: MySize.size10),
            customTextMedium(
                title: "Subscription Plans",
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500),
            ListView.builder(
              shrinkWrap: true,
              itemCount: subscription.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    customTextRegular(
                        title: subscription[index],
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400),
                    Spacer(),
                    Transform.scale(
                      scale: 1.2,
                      child: Checkbox(
                        activeColor: AppColors.primaryColor62,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(MySize.size5),
                        ),
                        side: BorderSide(color: AppColors.lineColorAD,width: 0.5),
                        value:  selectedCheckboxIndex3 == index,
                        onChanged: (value) {
                          setState(() {
                            if (value == true) {

                              selectedCheckboxIndex3 = index;
                            } else {
                              selectedCheckboxIndex3 = null;
                            }
                          });
                        },),
                    ),

                  ],);
              },),
            customDivider(
              width: MySize.scaleFactorWidth * 363,
            ),
            SizedBox(height: MySize.size10),
            customTextMedium(
                title: "Response Time",
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500),
            ListView.builder(
              shrinkWrap: true,
              itemCount: response.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    customTextRegular(
                        title: response[index],
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400),
                    Spacer(),
                    Transform.scale(
                      scale: 1.2,
                      child: Checkbox(
                        activeColor: AppColors.primaryColor62,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(MySize.size5),
                        ),
                        side: BorderSide(color: AppColors.lineColorAD,width: 0.5),
                        value:  selectedCheckboxIndex4 == index,
                        onChanged: (value) {
                          setState(() {
                            if (value == true) {

                              selectedCheckboxIndex4 = index;
                            } else {
                              selectedCheckboxIndex4 = null;
                            }
                          });
                        },),
                    ),

                  ],);
              },),
            customDivider(
              width: MySize.scaleFactorWidth * 363,
            ),
            SizedBox(height: MySize.size10),
            Visibility(
              visible: visibleValue ==true,
              child: SelectFeatures(),),
            customButton(
              ontap: (){
                setState(() {
                  visibleValue = !visibleValue;
                });
              },
              colors:visibleValue?AppColors.backGroundColorFA:Color(0xFFF3F3F3),
              borderRadius:MySize.size8,
              fontColor: AppColors.lineColor60,
              fontWeight: FontWeight.w500,
              fontSize: MySize.size14,
              borderColor: visibleValue ?  AppColors.backGroundColorFA:AppColors.lineColorAD,
              text: visibleValue ? "collapse   Amenities":"SPECIALIZATIONS",
            ),
           Visibility(
               visible: visibleValue,
               child: customDivider(
             height: MySize.size2,
              width: double.infinity,
             color: AppColors.primaryColor62
           )),
           SizedBox(
             height: MySize.size16,
           ),
            customButton(
              ontap: (){
                Get.to(MartialFilter());
              },
              text: "APPLY FILTER",
              borderRadius: MySize.size8,
              fontWeight: FontWeight.w500,
              fontSize: MySize.size14,
              borderColor: AppColors.btnColorDE,
              colors: AppColors.btnColorDE
            ),
          ]),
        ),
      ),
    ));
  }
}
