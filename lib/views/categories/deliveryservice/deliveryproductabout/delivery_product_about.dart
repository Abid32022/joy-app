import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../../../../utils/mysize.dart';
import '../../../base/custom_app_bar.dart';

class DeliveryProductAbout extends StatefulWidget {
  const DeliveryProductAbout({super.key});

  @override
  State<DeliveryProductAbout> createState() => _DeliveryProductAboutState();
}

class _DeliveryProductAboutState extends State<DeliveryProductAbout> {
  int count = 0;
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
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MySize.size24, vertical: MySize.size17),
          child: Column(children: [
            Container(
              height: MySize.scaleFactorHeight * 335,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  border: Border.all(color: AppColors.lineColorAD,width: 0.5),
                  color: AppColors.whiteColorFF),
              child: Image(
                  image: AssetImage(AppConstant.king_burger_img),
                  fit: BoxFit.fill),
            ),
            SizedBox(height: MySize.size24),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MySize.size34, vertical: MySize.size16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  border: Border.all(color: AppColors.lineColorAD,width: 0.5),
                  color: AppColors.whiteColorFF),
              child: Column(
                children: [
                  customTextMedium(
                      title: "Big Mac Bacon [600.0 Cals]",
                      fontSize: MySize.size25,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor47),
                  SizedBox(height: MySize.size5),
                  customTextRegular(
                      title:
                          "Big Mac Bacon boasts six hundred calories,\n    A tasty treat that many savor with ease. ",
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.subTitleColor37),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MySize.size12, vertical: MySize.size16),
              child: Row(children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "\$50.00",
                      style: TextStyle(
                        fontSize: MySize.size23,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: AppColors.errorFailureColor26,
                        color: Color(0xFFDBDBDB),
                      )),
                  TextSpan(
                      text: " \$45.00",
                      style: TextStyle(
                        fontSize: MySize.size24,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryColor47,
                      )),
                ])),
                Spacer(),
                GestureDetector(
                    onTap: (){
                      if(count == 0){
                      }else{
                        setState(() {
                          count-- ;
                        });
                      }
                    },
                    child: SvgPicture.asset(AppConstant.ic_minus, height: MySize.size32)),
                SizedBox(width: MySize.size12),
                customTextMedium(
                    title: "$count",
                    fontSize: MySize.size22,
                    fontWeight: FontWeight.w500),
                SizedBox(width: MySize.size12),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        count++;
                      });
                    },
                    child: SvgPicture.asset(AppConstant.ic_plus, height: MySize.size32)),
              ]),
            ),
            Container(
              padding: EdgeInsets.all(MySize.size15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  border: Border.all(color: AppColors.lineColorAD,width: 0.5),
                  color: AppColors.whiteColorFF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTextMedium(
                      title: "What is?",
                      fontSize: MySize.size18,
                      fontWeight: FontWeight.w500),
                  SizedBox(
                    height: MySize.size8,
                  ),
                  customTextRegular(
                      maxLines: 5,
                      title:
                          "Big Mac Bacon boasts six hundred calories, A tasty treat that many savor with ease. Juicy beef, special sauce, and bacon's delight, In each bite, a flavor explosion takes flight.Golden arches beckon, Big Mac Bacon calls, Sizzling allure within its sesame-seed walls. ",
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w400,
                  color: AppColors.subTitleColor37
                  ),
                ],
              ),
            ),
            SizedBox(height: MySize.size20),
            Container(
              padding: EdgeInsets.all(MySize.size15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  border: Border.all(color: AppColors.lineColorAD,width: 0.5),
                  color: AppColors.whiteColorFF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTextMedium(
                      title: "Allergy info",
                      fontSize: MySize.size18,
                      fontWeight: FontWeight.w500),
                  SizedBox(
                    height: MySize.size8,
                  ),
                  customTextRegular(
                      maxLines: 5,
                      title:
                          "For allergy concerns, it's wise to inquire, Ingredients listed, don't let it backfire. Check for allergens, be cautious, be clear, Enjoy the meal without any fear Review the allergy info to ensure a safe experience for me.",
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w400,
                  color: AppColors.subTitleColor37,
                  ),
                ],
              ),
            ),

          ]),
        ),
      ),
    ));
  }
}
