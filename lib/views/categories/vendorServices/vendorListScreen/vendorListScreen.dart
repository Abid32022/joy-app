import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_rich_text.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/vendorServices/vendorListScreen/component/professionalList.dart';

import '../../../base/custom_app_bar.dart';
import '../vendorEstimateCharges/estimateCharges.dart';

class VendorListScreen extends StatefulWidget {
  const VendorListScreen({Key? key}) : super(key: key);

  @override
  State<VendorListScreen> createState() => _VendorListScreenState();
}

class _VendorListScreenState extends State<VendorListScreen> {
  bool switchBtn = false;
List count=[0,0,0,0,0,0,0];

///Models...
  List reservation = [
    "Bathroom Renovation",
    "Hardwood/Laminate Flooring",
    "Kitchen Carpentry",
    "Roofers",
    "Driveway sealing",
    "Painter",
    "Wet Basement",
  ];

  // int count = 0;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.vendorBgColor,
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size24,
              ),
              GestureDetector(
                onTap: (){
                  Get.to(EstimateChargesPage());
                },
                child: customTextMedium(
                  title: "Home Improvement",
                  fontSize: MySize.size24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: MySize.size15,
              ),
              customTextRegular(
                title:
                    "Your address is only shared with guests after they've made a reservation.",
                fontSize: MySize.size16,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: MySize.size22,
              ),
              Container(
                height: MySize.size56,
                width: double.infinity,
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  color: AppColors.whiteColorFF,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: AppColors.borderColorAD.withOpacity(0.2),
                    width: 0.5,
                  ),
                ),
                child: Row(
                  children: [
                    customTextBold(title: "Display Professionals"),
                    Spacer(),
                    Switch(
                      value: switchBtn,
                      activeColor: AppColors.parcelPrimaryColor5C,
                      hoverColor: AppColors.parcelPrimaryColor5C,
                      activeTrackColor: AppColors.lineColorE4,
                      inactiveTrackColor: AppColors.parcelPrimaryColor5C,
                      inactiveThumbColor: AppColors.lineColorE4,
                      onChanged: (value) {
                        setState(() {
                          switchBtn = value;
                        });
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MySize.size22,
              ),

              // Listview..

              if (!switchBtn)
                Container(
                    padding: EdgeInsets.zero,
                    // color: Colors.red,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: reservation.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: GestureDetector(
                              onTap: (){
                                count[index]++;
                                // print('count at index $index    ''${count[index]}');
                                setState(() {

                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 15, right: 12.76),
                                height: MySize.size56,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColorFF,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color:
                                        AppColors.borderColorAD.withOpacity(0.2),
                                    width: 0.5,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    customTextMedium(
                                        title: reservation[index]),
                                    Spacer(),
                                    count[index] >= 1 ?
                                    Row(children: [
                                      customTextRegular(title: ""
                                          "(${count[index]})",
                                          fontSize: 16),
                                      SizedBox(width: MySize.size7,),SvgPicture.asset(AppConstant.ic_forward)
                                    ],):
                                    SvgPicture.asset(AppConstant.ic_add)
                                  ],
                                ),
                              ),
                            ),
                          );
                        }))
              else
                Container(
                  padding: EdgeInsets.zero,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            // here calling professional list..

                            ProfessionalList(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: customDivider(
                                width: double.infinity,
                                color: AppColors.borderColorAD,
                              ),
                            ),
                          ],
                        );
                      }),
                )
            ],
          ),
        ),
      ),
        // bottomSheet:     switchBtn?SizedBox.shrink():Container(
        //   color:AppColors.whiteColorFF,
        //   height: 70,
        //   // color: Colors.red,
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 24),
        //     child: Column(
        //       children: [
        //         customDivider(
        //             color: AppColors.lineColorAD,
        //             width: double.infinity
        //         ),
        //         SizedBox(height: MySize.size10,),
        //         Row(
        //           children: [
        //             Container(
        //               padding: EdgeInsets.all(15),
        //               decoration: BoxDecoration(
        //                 color: AppColors.lineColorC8,
        //                 borderRadius: BorderRadius.circular(10),
        //
        //               ),
        //               child: SvgPicture.asset(AppConstant.ic_back),
        //             ),
        //             SizedBox(width: MySize.size14,),
        //             Container(
        //                 padding: EdgeInsets.all(15),
        //                 decoration: BoxDecoration(
        //                   color: AppColors.parcelPrimaryColor5C,
        //                   borderRadius: BorderRadius.circular(10),
        //                 ),
        //                 child: Row(
        //                   children: [
        //                     SizedBox(width: MediaQuery.of(context).size.width *
        //                         0.23 ,),
        //                     customTextBold(title: "CONTINUE",color: AppColors
        //                         .whiteColorFF,),
        //                     SizedBox(width: MediaQuery.of(context).size.width *
        //                         0.182 ,),
        //                     SvgPicture.asset(AppConstant.ic_forward,color: AppColors.whiteColorFF,)
        //                   ],
        //                 )
        //             )
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // )
    );
  }
}
