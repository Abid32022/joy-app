import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';

import '../donationfilter/component/donation_reuse_listview.dart';
import '../laundryfilter/laundry_filter.dart';
import '../martialarts/component/martial_art_style.dart';
import '../searchgallery/search_gallery.dart';
import 'component/medical_categories.dart';
import 'component/medical_reuse_column.dart';

class MedicalFilter extends StatefulWidget {
  const MedicalFilter({super.key});

  @override
  State<MedicalFilter> createState() => _MedicalFilterState();
}

class _MedicalFilterState extends State<MedicalFilter> {
  /// int
  int? selectedIndex1;
  int? selectedIndex2;
  int? selectedIndex3;
  int? selectedIndex4;
  int? selectedIndex5;
  int? selectedIndex6;
  int? selectedIndex7;
  int? selectedIndex8;
  int? selectedIndex9;

  /// bool
  bool visibleValue = false;
  bool switchValue1 = true;
  bool switchValue2 = true;
  bool switchValue3 = true;
  bool switchValue4 = true;

  ///list
  List service = [
    "Consultation",
    "Diagnostic Tests",
    "Surgery",
    "Therapy",
    "Vaccination",
    "General",
  ];
  List insurance = [
    "Allow Insurance",
    "Not Allow Accepted",
  ];
  List urgency = [
    "Emergency Relief",
    "Ongoing Support",
  ];
  List appointment = [
    "Same-Day Appointments",
    "Weekday/Weekend Appointments",
    "Emergency Appointments",
  ];
  List gender = [
    "Male",
    "Female",
  ];
  List cost = [
    "Affordable",
    "Standard",
    "Premium",
  ];
  List patient = [
    "Pediatrics",
    "Adults",
    "Geriatrics",
  ];
  List special = [
    "Radiology Services",
    "Laboratory Services",
    "Pharmacy On-site",
  ];
  List accessibility = [
    "Wheelchair Accessibility",
    "Parking Facilities",
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
          child: Column(children: [
            CategoriesComponents(),
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
              title: "Insurance",
              text: insurance,
              itemCount: insurance.length,
              selectedValue: selectedIndex2,
              onChanged: (value) {
                setState(() {
                  selectedIndex2 = value;
                });
              },
            ),
            ReUseListView(
              title: "Urgency",
              text: urgency,
              itemCount: urgency.length,
              selectedValue: selectedIndex3,
              onChanged: (value) {
                setState(() {
                  selectedIndex3 = value;
                });
              },
            ),
            ReUseListView(
              title: "Appointment Availability",
              text: appointment,
              itemCount: appointment.length,
              selectedValue: selectedIndex4,
              onChanged: (value) {
                setState(() {
                  selectedIndex4 = value;
                });
              },
            ),
            ReUseListView(
              title: "Doctor's Gender",
              text: gender,
              itemCount: gender.length,
              selectedValue: selectedIndex5,
              onChanged: (value) {
                setState(() {
                  selectedIndex5 = value;
                });
              },
            ),
            ReUseListView(
              title: "Cost Range",
              text: cost,
              itemCount: cost.length,
              selectedValue: selectedIndex6,
              onChanged: (value) {
                setState(() {
                  selectedIndex6 = value;
                });
              },
            ),
            ReUseListView(
              title: "Patient Age Group",
              text: patient,
              itemCount: patient.length,
              selectedValue: selectedIndex7,
              onChanged: (value) {
                setState(() {
                  selectedIndex7 = value;
                });
              },
            ),
            ReUseColumn(
              title: "Virtual Waiting Room",
              text: "Clinics providing virtual waiting room options",
              switchValue: switchValue1,
              onSwitchPressed: () {
                setState(() {
                  switchValue1 = !switchValue1;
                });
              },
            ),
            ReUseColumn(
              title: "Prescription Services",
              text: "Clinics providing online prescription services.",
              switchValue: switchValue2,
              onSwitchPressed: () {
                setState(() {
                  switchValue2 = !switchValue2;
                });
              },
            ),
            ReUseListView(
              title: "Special Facilities",
              text: special,
              itemCount: special.length,
              selectedValue: selectedIndex8,
              onChanged: (value) {
                setState(() {
                  selectedIndex8 = value;
                });
              },
            ),
            ReUseColumn(
              title: "Chronic Disease Management",
              text: "Specialized services for chronic conditions",
              switchValue: switchValue3,
              onSwitchPressed: () {
                setState(() {
                  switchValue3 = !switchValue3;
                });
              },
            ),
            ReUseColumn(
              title: "Availability of Home Visits",
              text:
                  "Doctors or healthcare professionals offering\nhome visits.",
              switchValue: switchValue4,
              onSwitchPressed: () {
                setState(() {
                  switchValue4 = !switchValue4;
                });
              },
            ),
            ReUseListView(
              title: "Accessibility Features:",
              text: accessibility,
              itemCount: accessibility.length,
              selectedValue: selectedIndex9,
              onChanged: (value) {
                setState(() {
                  selectedIndex9 = value;
                });
              },
            ),
            SizedBox(
              height: MySize.size16,
            ),
            Visibility(visible: visibleValue, child: MartialArtStyle()),
            customButton(
                ontap: () {
                  setState(() {
                    visibleValue = !visibleValue;
                  });
                },
                text: visibleValue ? "COLLAPSE AMENITIES" : "MARTIAL ART STYLE",
                borderRadius: MySize.size8,
                fontWeight: FontWeight.w500,
                fontColor: AppColors.lineColor60,
                fontSize: MySize.size14,
                borderColor: visibleValue
                    ? AppColors.backGroundColorFA
                    : AppColors.lineColorAD,
                colors: visibleValue
                    ? AppColors.backGroundColorFA
                    : Color(0xFFF3F3F3)),
            Visibility(
                visible: visibleValue == true,
                child: customDivider(
                    height: 2,
                    color: AppColors.primaryColor62,
                    width: double.infinity)),
            SizedBox(
              height: MySize.size16,
            ),
            customButton(
                ontap: () {
                  Get.to(SearchGallery());
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
