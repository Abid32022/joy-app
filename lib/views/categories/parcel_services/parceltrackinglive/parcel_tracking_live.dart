import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
class ParcelTrackingLive extends StatefulWidget {
  const ParcelTrackingLive({super.key});

  @override
  State<ParcelTrackingLive> createState() => _ParcelTrackingLiveState();
}

class _ParcelTrackingLiveState extends State<ParcelTrackingLive> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          onBackTap: () {
            Get.back();
          },
        ),
        body: Column(
          children: [
            // CustomAppBar(backArrow: () {
            //   Get.back();
            // }),
            Container(
              height: MediaQuery.of(context).size.height * 0.85,
              width: double.infinity,
              child: Image.asset(AppConstant.google_map,fit: BoxFit.cover,),
            ),
          ],
        ),
      ),
    );
  }
}
