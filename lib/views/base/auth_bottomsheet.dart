import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'custom_textwidget.dart';

void authcustombottomsheet(
  BuildContext context, {
  String text1 = "",
  String text2 = "",
  String image = "",
  double? height,
}) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      clipBehavior: Clip.none,
      builder: (context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return SizedBox(
              child: Container(
                  height: height,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14))),
                  padding: EdgeInsets.symmetric(horizontal: 19, vertical: 30),
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(image, height: 70, width: 61),
                                SizedBox(height: 15),
                                customTextMedium(
                                    textAlign: TextAlign.center,
                                    // align: TextAlign.center,
                                    title: text1,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                                SizedBox(
                                  height: 8,
                                ),
                                customTextRegular(
                                    title: text2,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.5,
                                    color: Colors.black,
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            right: 5,
                            child: GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              // child: SvgPicture.asset(AppConstant.icbackcross,height: 24.h,width: 24.w,)
                            )),
                      ],
                    ),
                  )));
        });
      });
}
