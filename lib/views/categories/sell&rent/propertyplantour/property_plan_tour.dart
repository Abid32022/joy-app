import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
class PropertyPlanTour extends StatefulWidget {
  const PropertyPlanTour({super.key});

  @override
  State<PropertyPlanTour> createState() => _PropertyPlanTourState();
}

class _PropertyPlanTourState extends State<PropertyPlanTour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
    );
  }
}
