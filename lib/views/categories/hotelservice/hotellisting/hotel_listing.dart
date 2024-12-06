import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/model/bathroomRenovationModelClass.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_rich_text.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/hotelservice/hotelplacesummary/hotel_place_summary.dart';
import 'package:joyapp/views/categories/hotelservice/hotelplacesummary2/hotel_place_summary2.dart';
import 'package:pinput/pinput.dart';
class HotelListing extends StatefulWidget {
  const HotelListing({super.key});

  @override
  State<HotelListing> createState() => _HotelListingState();
}

class _HotelListingState extends State<HotelListing> {
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
                    customTextMedium(title: "Bathroom Renovation",fontSize: MySize
                        .size24,fontWeight: FontWeight.w500),
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


              ],
            ),
          ),
        ),
      bottomNavigationBar: Container(
        height: MySize.scaleFactorHeight * 60,
        width: double.infinity,
        color: AppColors.backGroundColorFA,
        child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customButton(
                    ontap: (){
                      Get.to(HotelPlaceSummary2());
                    },
                    text: 'Next',
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400,
                    height: MySize.scaleFactorHeight * 46,
                    width: double.infinity,
                    colors:Color(0xffD6DEDE),
                    fontColor: AppColors.blackColor00,
                    borderRadius: MySize.size14
                ),
              ],
            )
        ),
      ),
    );
  }
}
