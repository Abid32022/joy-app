import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/make_apporientments/medicaldoctor/medical_doctor.dart';

class MedicalHopitalTab extends StatefulWidget {
  const MedicalHopitalTab({super.key});

  @override
  State<MedicalHopitalTab> createState() => _MedicalHopitalTabState();
}

class _MedicalHopitalTabState extends State<MedicalHopitalTab> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.size24),
        child: ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: MySize.size16),
              child: GestureDetector(
                onTap: (){
                  Get.to(()=> MedicalDoctor());
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    color: AppColors.whiteColorFF,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MySize.scaleFactorHeight * 132,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(MySize.size8),
                                  topLeft: Radius.circular(MySize.size8)),
                              child: Image.asset(
                                AppConstant.hospital,
                                width: double.infinity,
                                height: MySize.scaleFactorHeight * 132,
                              ),
                            ),

                            Positioned(
                              right: MySize.size5,
                              bottom: MySize.size20,
                              child: Container(
                                height: MySize.scaleFactorHeight * 23,
                                width: MySize.scaleFactorWidth * 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(MySize.size8),
                                  color: AppColors.whiteColorFF
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      AppConstant.ic_star_yellow,
                                      height: MySize.scaleFactorHeight * 11,
                                      width: MySize.scaleFactorWidth * 11,
                                    ),
                                    SizedBox(
                                      width: MySize.scaleFactorWidth * 2,
                                    ),
                                    SvgPicture.asset(
                                      AppConstant.ic_star_yellow,
                                      height: MySize.scaleFactorHeight * 11,
                                      width: MySize.scaleFactorWidth * 11,
                                    ),
                                    SizedBox(
                                      width: MySize.scaleFactorWidth * 2,
                                    ),
                                    SvgPicture.asset(
                                      AppConstant.ic_star_yellow,
                                      height: MySize.scaleFactorHeight * 11,
                                      width: MySize.scaleFactorWidth * 11,
                                    ),
                                    SizedBox(
                                      width: MySize.scaleFactorWidth * 2,
                                    ),
                                    SvgPicture.asset(
                                      AppConstant.ic_star_yellow,
                                      height: MySize.scaleFactorHeight * 11,
                                      width: MySize.scaleFactorWidth * 11,
                                    ),
                                    SizedBox(
                                      width: MySize.scaleFactorWidth * 2,
                                    ),
                                    SvgPicture.asset(
                                      AppConstant.ic_star_yellow,
                                      height: MySize.scaleFactorHeight * 11,
                                      width: MySize.scaleFactorWidth * 11,
                                    ),
                                    SizedBox(
                                      width: MySize.scaleFactorWidth * 2,
                                    ),
                                    customTextMedium(
                                        title: "4.5",
                                        fontWeight: FontWeight.w500,
                                        fontSize: MySize.size14),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MySize.scaleFactorWidth * 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MySize.scaleFactorHeight * 10,
                            ),
                            customTextMedium(
                                title: "Hospitals in Canada",
                                fontWeight: FontWeight.w500,
                                fontSize: MySize.size16),
                            SizedBox(
                              height: MySize.scaleFactorHeight * 10,
                            ),
                            customTextRegular(
                                title: "Dental, Skin care",
                                fontWeight: FontWeight.w400,
                                fontSize: MySize.size14),
                            SizedBox(
                              height: MySize.scaleFactorHeight * 10,
                            ),
                            Divider(
                              thickness: 1,
                              color: AppColors.lineColorC8,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      AppConstant.ic_hospital_location,
                                      height: MySize.scaleFactorHeight * 20,
                                      width: MySize.scaleFactorWidth * 13,
                                    ),
                                    SizedBox(
                                      width: MySize.scaleFactorWidth * 10,
                                    ),
                                    customTextRegular(
                                        title:
                                            "7250 Keele St, Vaughan, ON L4K 1Z8, Canada",
                                        fontWeight: FontWeight.w400,
                                        fontSize: MySize.size14),
                                  ],
                                ),
                                SizedBox(
                                  height: MySize.scaleFactorWidth * 19,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      AppConstant.ic_walking_man,
                                      height: MySize.scaleFactorHeight * 20,
                                      width: MySize.scaleFactorWidth * 13,
                                    ),
                                    SizedBox(
                                      width: MySize.scaleFactorWidth * 10,
                                    ),
                                    customTextRegular(
                                        title: "3.5 km . 50min",
                                        fontWeight: FontWeight.w400,
                                        fontSize: MySize.size14),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MySize.scaleFactorHeight * 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
