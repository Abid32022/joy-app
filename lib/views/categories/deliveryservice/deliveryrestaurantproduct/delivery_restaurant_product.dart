import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_divider.dart';

import '../../../../utils/appconstant.dart';
import '../../../../utils/mysize.dart';
import '../../../base/custom_textwidget.dart';
import '../productAbout/productAbout.dart';

class DeliveryRestaurantProduct extends StatefulWidget {
  const DeliveryRestaurantProduct({super.key});

  @override
  State<DeliveryRestaurantProduct> createState() =>
      _DeliveryRestaurantProductState();
}

class _DeliveryRestaurantProductState extends State<DeliveryRestaurantProduct> {

  List listViewBuilder1 = [
    ["Small Premium Roast Coffee [3.0 Cals]","CA\$0.21"],
    ["Med Premium Roast Coffee [4.0 Cals]","CA\$0.31"],
    ["Lrg Premium Roast Coffee [5.0 Cals]","CA\$0.33"],
    ["XL Premium Roast Coffee [5.0 Cals]","CA\$0.43"],

  ];
  List listViewBuilder2 = [
    "Sml Premium Roast Decaf Coffee [0.0 Cals]",
    "Med Decaf Coffee [0.0 Cals]",
    "Lrg Decaf Coffee [0.0 Cals]",
    "XL Decaf Coffee [0.0 Cals]",
    "Med Orange Pekoe Tea [0.0 Cals]",
    "Lrg Orange Pekoe Tea [0.0 Cals]",
    "XL Orange Pekoe Tea [0.0 Cals]",


  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MySize.size24,vertical: MySize.size18),
          child: Column(children: [
            Row(children: [
              customTextMedium(
                  title: "Coffee or Tea",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
              Spacer(),
              customTextMedium(
                  title: "Required",
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.errorFailureColor26),
            ]),
            ListView.builder(
              itemCount: listViewBuilder1.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Get.to(ProductAbout());
                  },
                  child: Padding(
                    padding:  EdgeInsets.only(left: MySize.size5,top: MySize.size15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            customTextMedium(
                              title: listViewBuilder1[index][0],
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: MySize.size15,
                              backgroundColor: Color(0xFFF5F0EB),
                              child: SvgPicture.asset(AppConstant.ic_done),
                            ),
                            SizedBox(width: MySize.size15),
                            SvgPicture.asset(AppConstant.ic_forward),
                          ],
                        ),
                        customTextRegular(
                          title: listViewBuilder1[index][1],
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.disableTextColor90
                        ),
                        SizedBox(height: MySize.size12),
                        customDivider(
                          width: double.infinity,
                          color: AppColors.lineColorAD
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: listViewBuilder2.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding:  EdgeInsets.only(left: MySize.size5,top: MySize.size15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          customTextMedium(
                            title: listViewBuilder2[index],
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500,
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: MySize.size15,
                            backgroundColor: Color(0xFFF5F0EB),
                            child: SvgPicture.asset(AppConstant.ic_done),
                          ),
                        ],
                      ),
                      customTextRegular(
                        title: "CA\$0.70",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.disableTextColor90
                      ),
                      SizedBox(height: MySize.size12),
                      customDivider(
                        width: double.infinity,
                        color: AppColors.lineColorAD
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: MySize.size18),
            customDivider(
              width: MySize.scaleFactorWidth * 363,
              color: AppColors.lineColorAD,
            ),
            SizedBox(height: MySize.size10),
            Container(
              height: MySize.scaleFactorHeight *46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(MySize.size8),
                color: Color(0xFFD6DEDE),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customTextMedium(
                        title: "Save   . ",fontSize: MySize.size16,fontWeight: FontWeight.w500),
                    customTextMedium(
                        title: " \$ 10.50 CAD",fontSize: MySize.size16,fontWeight: FontWeight.w500),
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
