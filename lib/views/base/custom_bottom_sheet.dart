import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/appcolors.dart';

void custombottomsheet(BuildContext context, {double? height,Widget? content,}){
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      clipBehavior: Clip.none,
      builder: (context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState ) {
              return SizedBox(
                  child: Container(
                      height: height,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: AppColors.backGroundColorFA,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight:  Radius.circular(14)
                          )
                      ),
                      //  padding: EdgeInsets.symmetric(horizontal: 19 ,vertical: 30 ),
                      child: SingleChildScrollView(
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(left: 19,right: 19,top: 40,bottom: 10),
                                child: SizedBox(
                                    child: content
                                ),
                              ),
                            ),
                            Positioned(
                                top: 10,
                                right: 19,
                                child: GestureDetector(
                                    onTap: (){
                                      Get.back();
                                    },
                                    child: SvgPicture.asset("AppConstant.icbackcross",height: 24 ,width: 24))),
                          ],
                        ),
                      )
                  )
              );
            }
        );
      }
  );
}