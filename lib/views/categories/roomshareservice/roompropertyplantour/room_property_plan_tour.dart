import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
class RoomPropertyPlanTour extends StatefulWidget {
  const RoomPropertyPlanTour({super.key});

  @override
  State<RoomPropertyPlanTour> createState() => _RoomPropertyPlanTourState();
}

class _RoomPropertyPlanTourState extends State<RoomPropertyPlanTour> {
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
