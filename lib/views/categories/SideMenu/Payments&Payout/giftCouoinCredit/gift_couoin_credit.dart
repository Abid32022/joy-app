import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import '../../../../base/custom_button.dart';
import '../frequentlyAskedQuestion/frequently_asked_question.dart';

class GiftCouoinCredit extends StatelessWidget {
  const GiftCouoinCredit({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: (){
          Navigator.pop(context);
        },
        verifiedVisibile: false,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 23, vertical: MySize.scaleFactorHeight * 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customTextMedium(title: 'Gift Credit', fontSize: MySize.size22, fontWeight: FontWeight.w500, ),
            SizedBox(height: MySize.size12,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 13, vertical: MySize.size14),
              decoration: BoxDecoration(
                color: AppColors.whiteColorFF,
                borderRadius: BorderRadius.circular(MySize.size8),
                border: Border.all(color: AppColors.borderColorAD, width: .4)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTextMedium(title: 'Gift Credit', fontWeight: FontWeight.w500,fontSize: MySize.size16),
                  SizedBox(height: MySize.size12,),
                  customTextRegular(title: 'Gift credit in the app allows users to send or receive virtual currency, enabling them to make in-app purchases or unlock premium features', maxLines: 4,fontSize: MySize.size14)
                ],
              ),
            ),
            SizedBox(height: MySize.size20,),
            customButton(
                colors: AppColors.btnColorDE,
                text: 'Add Gift Card',
                fontSize: MySize.size16,
                fontWeight: FontWeight.w600,
                width: MySize.scaleFactorWidth * 360,
                height: MySize.scaleFactorHeight * 46,
                borderRadius: MySize.size10,
                borderColor: AppColors.btnColorDE,
                ontap: (){
                }
            ),
            SizedBox(height: MySize.size22,),
            customDivider(width: MySize.scaleFactorWidth * 300),
            SizedBox(height: MySize.scaleFactorHeight * 21,),
            customTextMedium(title: 'Coupons', fontSize: MySize.size22, fontWeight: FontWeight.w500, ),
            SizedBox(height: MySize.size12,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 13, vertical: MySize.size14),
              decoration: BoxDecoration(
                  color: AppColors.whiteColorFF,
                  borderRadius: BorderRadius.circular(MySize.size8),
                  border: Border.all(color: AppColors.borderColorAD, width: .4)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTextMedium(title: 'Your coupon', fontWeight: FontWeight.w500,fontSize: MySize.size16),
                  SizedBox(height: MySize.size12,),
                  customTextRegular(title: 'Gift credit in the app allows users to send or receive virtual currency, enabling them to make in-app purchases or unlock premium features', maxLines: 4,fontSize: MySize.size14)
                ],
              ),
            ),
            SizedBox(height: MySize.size20,),
            customButton(
                colors: AppColors.btnColorDE,
                text: 'Add Coupon',
                fontSize: MySize.size16,
                fontWeight: FontWeight.w600,
                width: MySize.scaleFactorWidth * 360,
                height: MySize.scaleFactorHeight * 46,
                borderRadius: MySize.size10,
                borderColor: AppColors.btnColorDE,
                ontap: (){
                  Get.to(FrequentlyAskedQuestion());
                }
            ),
            SizedBox(height: MySize.size20,),
            customDivider(width: MySize.scaleFactorWidth * 300),
          ],
        ),
      ),
    );
  }
}
