import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../searchgallery/search_gallery.dart';
import '../vendorfilter/vendor_filter.dart';
import 'component/laundry_categories.dart';
import 'component/laundry_reuse_listview.dart';


class LaundryFilter extends StatefulWidget {
  const LaundryFilter({super.key});

  @override
  State<LaundryFilter> createState() => _LaundryFilterState();
}

class _LaundryFilterState extends State<LaundryFilter> {
  /// int
  int? currentValue;
  int? selectedIndex1;
  int? selectedIndex2;
  int? selectedIndex3;
  int? selectedIndex4;
  int? selectedIndex5;
  int? selectedIndex6;
  int? selectedIndex7;
  /// list
  List service = [
    "Wash and Fold",
    "Dry Cleaning",
    "Ironing",
    "Specialized Services",
  ];
  List pricing = [
    "Budget-friendly",
    "Standard",
    "Premium",
  ];
  List delivery = [
    "Same-day Delivery",
    "Next-day Delivery",
    "Preferred Time Slots",
  ];
  List special = [
    "Stain Removal",
    "Odor Removal",
    "Fabric Repair",
  ];
  List garment = [
    "Casual Wear",
    "Business Attire",
    "Formal Wear",
    "Bedding and Linens",
  ];
  List pickup = [
    "Home Pickup",
    "Drop-off Points",
    "Self-drop at the laundromat",
  ];
  List plans = [
    "Weekly Plans",
    "Monthly Plans",
    "One-Time Services",
  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: AppointmentAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MySize.size24,vertical: MySize.size20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    currentValue = 0;
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
                    currentValue = 1;
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
                ReUseListView(
                  title: "Service Type",
                  text: service,
                  itemCount: service.length,
                  selectedValue: selectedIndex1,
                  onChanged: (value) {
                    setState(() {
                      selectedIndex1 = value;
                    });
                  },
                ),
                ReUseListView(
                  title: "Pricing Range",
                  text: pricing,
                  itemCount: pricing.length,
                  selectedValue: selectedIndex2,
                  onChanged: (value) {
                    setState(() {
                      selectedIndex2 = value;
                    });
                  },
                ),
                ReUseListView(
                  title: "Delivery Preferences",
                  text: delivery,
                  itemCount: delivery.length,
                  selectedValue: selectedIndex3,
                  onChanged: (value) {
                    setState(() {
                      selectedIndex3 = value;
                    });
                  },
                ),
                ReUseListView(
                  title: "Special Treatments",
                  text: special,
                  itemCount: special.length,
                  selectedValue: selectedIndex4,
                  onChanged: (value) {
                    setState(() {
                     selectedIndex4 = value;
                    });
                  },
                ),
                ReUseListView(
                  title: "Garment Type",
                  text: garment,
                  itemCount: garment.length,
                  selectedValue: selectedIndex5,
                  onChanged: (value) {
                    setState(() {
                      selectedIndex5 = value;
                    });
                  },
                ),
                ReUseListView(
                  title: "Pickup and Delivery Options",
                  text: pickup,
                  itemCount: pickup.length,
                  selectedValue: selectedIndex6,
                  onChanged: (value) {
                    setState(() {
                      selectedIndex6 = value;
                    });
                  },
                ),
                ReUseListView(
                  title: "Subscription Plans",
                  text: plans,
                  itemCount: plans.length,
                  selectedValue: selectedIndex7,
                  onChanged: (value) {
                    setState(() {
                      selectedIndex7 = value;
                    });
                  },
                ),
                SizedBox(
                  height: MySize.size16,
                ),
                customButton(
                    ontap: (){
                      Get.to(VendorFilter());
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
