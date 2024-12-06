import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/model/bathroomRenovationModelClass.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_rich_text.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:pinput/pinput.dart';

import '../vendorAddPhoto/addPhoto.dart';

class EstimateChargesPage extends StatefulWidget {
  const EstimateChargesPage({super.key});

  @override
  State<EstimateChargesPage> createState() => _EstimateChargesPageState();
}

class _EstimateChargesPageState extends State<EstimateChargesPage> {

  // bool isAdd = false;
  int count = 0;

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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MySize.size20,),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.to(AddPhotoPage());
                    },
                    child: customTextMedium(title: "Bathroom Renovation",fontSize: MySize
                        .size24,fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  customTextMedium(title: "Start From",fontWeight: FontWeight
                      .w500,fontSize: 16,color: AppColors.startColor),
                ],
              ),
              SizedBox(height: MySize.size19,),
              customTextRegular(title: "Your address is only shared with "
                  "guests after they've made a reservation.",fontSize: MySize.size16),
              SizedBox(height: MySize.size18,),

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemCount: renovationDetails.length,
                  itemBuilder: (context,index)
              {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        // isAdd = !isAdd;
                        // count++;
                        renovationDetails[index].count++;
                      });

                    },
                    child: Container(
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: AppColors.borderColorAD,
                            width: 0.5,
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 13,right: 13,top: 14,
                            bottom: 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                customTextBold(title:
                                renovationDetails[index].headName,
                                    fontSize: MySize
                                    .size16,fontWeight: FontWeight.w500),
                                Spacer(),
                                CustomRichText(text1:
                                renovationDetails[index].price, text2:
                                renovationDetails[index].cad, text3:
                                renovationDetails[index].sqft, fontSize:MySize.size16,),
                                SizedBox(width: MySize.size8,),
                                  customTextBold(title:
                                  renovationDetails[index].count
                                      == 0
                                      ?"":"${renovationDetails[index].count}",
                                      fontSize: 16),
                                SizedBox(width: MySize.size2,),
                                GestureDetector(
                                  onTap: (){
                                    // count--;
                                    renovationDetails[index].count--;
                                    setState(() {

                                    });
                                    },
                                  child: renovationDetails[index].count == 0 ?
                                    SizedBox
                                      .shrink()
                                      :SvgPicture
                                  .asset
                                    (AppConstant.ic_delete,height: MySize
                                      .size24,),
                                ),
                              ],
                            ),
                            SizedBox(height: MySize.size10,),
                            customTextRegular(title: renovationDetails[index].detail,fontSize: MySize.size14,)
                          ],
                        ),
                      ),
                    ),
                  ),
                );

              }
              ),
              SizedBox(height: MySize.size160,),
            ],
          ),
        ),
      ),
      // bottomSheet: Container(
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
      //                     customTextBold(title: "SAVE",color: AppColors.whiteColorFF,),
      //                     SizedBox(width: MediaQuery.of(context).size.width *
      //                         0.26 ,),
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
