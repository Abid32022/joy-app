import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../../../../utils/appcolors.dart';
import '../../../../utils/mysize.dart';
import '../deliverymenu/delivery_menu.dart';
import 'component/delivery_reuse_row.dart';

class DeliveryRestaurantList extends StatefulWidget {
  const DeliveryRestaurantList({super.key});

  @override
  State<DeliveryRestaurantList> createState() => _DeliveryRestaurantListState();
}

class _DeliveryRestaurantListState extends State<DeliveryRestaurantList> {

  int currentIndex = 0;
  List destinationScreen = [
    DeliveryMenu(),

  ];
  List Food = [
    AppConstant.meal,
    AppConstant.burrger,
    AppConstant.barBQ,
  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MySize.size24, vertical: MySize.size15),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: MySize.size15,vertical: MySize.size6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(color: Color(0xFFC0D4DC)),
                      color: Color(0xFFECF6FA)
                    ),
                    child:Row(children: [
                      SvgPicture.asset(AppConstant.ic_search),
                      SizedBox(width: MySize.size10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        customTextMedium(title: "Want to update?",fontSize: MySize.size16,fontWeight: FontWeight.w500),
                        customTextRegular(title: "You currently selected Islamabad",fontSize: MySize.size16,fontWeight: FontWeight.w400,color: AppColors.subTitleColor37),
                      ],)
                    ],)
                  ),
                ),
                SizedBox(width: MySize.size16),
                Container(
                  padding: EdgeInsets.all(MySize.size7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(color: Color(0xffC0D4DC)),
                      color: Color(0xffECF6FA)),
                  child: SvgPicture.asset(AppConstant.ic_setting),
                ),
              ],
            ),
          ),
          customDivider(width: double.infinity, color: AppColors.lineColorAD),
          ListView.builder(
            itemCount: Food.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                 if(currentIndex >= 0 && currentIndex < destinationScreen.length){
                  Get.to(destinationScreen[index]);
                  print(currentIndex);
                }
              },
              child: Container(
                margin: EdgeInsets.only(left: MySize.size24,right: MySize.size24,top: MySize.size20),
                padding: EdgeInsets.only(bottom: MySize.size18),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    border: Border.all(color: AppColors.lineColorAD,width: 0.2)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                          Image(
                              image: AssetImage(Food[index]),
                              width: double.infinity,
                              height: MySize.scaleFactorHeight * 204),
                          Positioned(
                            top: MySize.size20,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: MySize.size10,
                                  vertical: MySize.size8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                      MySize.size6,
                                    ),
                                    bottomRight: Radius.circular(MySize.size6)),
                                color: Color(0xFF34C759),
                              ),
                              child: customTextMedium(
                                  title: "BUY 1, GET 1 FREE",
                                  fontSize: MySize.size15,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.whiteColorFF),
                            ),
                          ),
                          Positioned(
                            top: MySize.scaleFactorHeight * 175,
                            left: MySize.scaleFactorWidth * 240,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: MySize.size2,
                                  horizontal: MySize.size25),
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(MySize.size80),
                                  border:
                                  Border.all(color: AppColors.lineColorAD,width: 0.2),
                                  color: AppColors.whiteColorFF),
                              child:Column(children: [
                                customTextMedium(
                                    title: "15-25",
                                    fontSize: MySize.size18,
                                    fontWeight: FontWeight.w500),
                                customTextRegular(
                                    title: "min",
                                    fontSize: MySize.size18,
                                    fontWeight: FontWeight.w500),
                              ],)
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(height: MySize.size18),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: MySize.size18,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customTextMedium(
                                title: "McDonald's (Keele & Finch)",
                                fontSize: MySize.size18,
                                fontWeight: FontWeight.w500),
                            SizedBox(height: MySize.size10),
                            DeliveryReuseRow(
                              Image1: AppConstant.star,
                              text1: "4.5",
                              Image2: AppConstant.ic_truck,
                              text2: "\$ 4.5 CAD",
                            ),
                            SizedBox(height: MySize.size12),
                            Row(
                              children: [
                                customTextRegular(
                                    title: "\$\$ .",
                                    fontSize: MySize.size16,
                                    fontWeight: FontWeight.w400),
                                customTextRegular(
                                    title: " BarBQ .",
                                    fontSize: MySize.size16,
                                    fontWeight: FontWeight.w400),
                                customTextRegular(
                                    title: " DesiFood ",
                                    fontSize: MySize.size16,
                                    fontWeight: FontWeight.w400),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ]),
              ),
            );
          },),
          SizedBox(height: MySize.size20),
        ]),
      ),
    ));
  }
}
