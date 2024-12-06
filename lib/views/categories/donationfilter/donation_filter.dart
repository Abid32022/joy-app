import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';

import '../martialarts/component/martial_categories_component.dart';
import '../medicalservice/medical_filter.dart';
import 'component/donation_reuse_listview.dart';


class DonationFilter extends StatefulWidget {
  const DonationFilter({super.key});

  @override
  State<DonationFilter> createState() => _DonationFilterState();
}

class _DonationFilterState extends State<DonationFilter> {
  int? selectedIndex;
  int? selectedIndex2;
  int? selectedIndex3;
  int? selectedIndex4;
  int? selectedIndex5;
  int? selectedIndex6;
  List cause = [
    "Education",
    "Healthcare",
    "Environment",
    "Poverty Alleviation",
    "Animal Welfare",
    "Arts and Culture",
  ];
  List geographic = [
    "Local",
    "National",
    "International",
  ];
  List urgency = [
    "Emergency Relief",
    "Ongoing Support",
  ];
  List target = [
    "Children",
    "Elderly",
    "Women",
    "Refugees",
    "People with Disabilities",

  ];
  List project = [
    "Specific Projects",
    "General Fund",
    "Research Initiatives",
  ];
  List organization = [
    "Small NGOs",
    "Medium NGOs",
    "Large NGOs",
  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: AppointmentAppBar(
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MySize.size24,vertical: MySize.size20),
          child: Column(children: [
            CategoriesComponents(),
            ReUseListView(
              title: "Cause Type",
              text: cause,
              itemCount: cause.length,
              selectedValue: selectedIndex,
              onChanged: (value){
                setState(() {
                  selectedIndex = value;
                });
              },
            ),
            ReUseListView(
              title: "Geographic Focus",
              text: geographic,
              itemCount: geographic.length,
              selectedValue: selectedIndex2,
              onChanged: (value){
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
              onChanged: (value){
                setState(() {
                  selectedIndex3 = value;
                });
              },
            ),
            ReUseListView(
              title: "Target Demographic",
              text: target,
              itemCount: target.length,
              selectedValue: selectedIndex4,
              onChanged: (value){
                setState(() {
                  selectedIndex4 = value;
                });
              },
            ),
            ReUseListView(
              title: "Project Type",
              text: project,
              itemCount: project.length,
              selectedValue: selectedIndex5,
              onChanged: (value){
                setState(() {
                  selectedIndex5 = value;
                });
              },
            ),
            ReUseListView(
              title: "Organization Size",
              text: organization,
              itemCount: organization.length,
              selectedValue: selectedIndex6,
              onChanged: (value){
                setState(() {
                  selectedIndex6 = value;
                });
              },
            ),
            SizedBox(
              height: MySize.size16,
            ),
            customButton(
                ontap: () {
                  Get.to(MedicalFilter());
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
