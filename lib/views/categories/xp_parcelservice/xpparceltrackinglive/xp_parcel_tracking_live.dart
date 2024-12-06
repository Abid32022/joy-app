import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
class XpParcelTrackingLive extends StatefulWidget {
  const XpParcelTrackingLive({super.key});

  @override
  State<XpParcelTrackingLive> createState() => _XpParcelTrackingLiveState();
}

class _XpParcelTrackingLiveState extends State<XpParcelTrackingLive> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.85,
            width: double.infinity,
            child: Image.asset(AppConstant.google_map,fit: BoxFit.cover,),
          ),
        ],
      ),
    );
  }
}
