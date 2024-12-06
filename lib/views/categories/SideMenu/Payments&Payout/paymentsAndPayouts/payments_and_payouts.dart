import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../../../../base/custom_app_bar.dart';
import '../cerditCardList/cerdit_card_list.dart';
import 'base/base.dart';

class paymentsAndPayouts extends StatelessWidget {
  const paymentsAndPayouts({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: () {
          Navigator.pop(context);
        },
        showBackButton: true,
        verifiedVisibile: false,
      ),
      body: SafeArea(child: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.size23, vertical: MySize.size22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(CerditCardListScreen());
                  },
                  child: customTextMedium(title: 'Payment & Payouts',fontSize: MySize.size22,
                    fontWeight:FontWeight.w500,),
                ),
                Spacer(),
                customTextMedium(title: '\$1,490',fontSize: MySize.size16,fontWeight: FontWeight.w500,decoration: TextDecoration.underline),
                customTextRegular(title: '\tCAD',fontSize: MySize.size14,fontWeight: FontWeight.w400, color: AppColors.hinttextcolor,decoration: TextDecoration.underline,decorationColor: AppColors.hinttextcolor),
              ],
            ),
            SizedBox(height: MySize.size30,),
            customTextMedium(title: 'Payment',fontWeight: FontWeight.w500,fontSize: MySize.size18,),
            SizedBox(height: MySize.scaleFactorHeight * 13,),
            PayoutContainer(
              row1Text: 'Payment Methods',
              row2Text: 'Your Payment',
              row3Text: 'Credits & Coupons',
              row1Tap: () {},
              row2Tap: () {},
              row3Tap: () {}
            ),
            SizedBox(height: MySize.scaleFactorHeight * 27,),
            Align(
                alignment: Alignment.center,
                child: customDivider(width: MySize.scaleFactorWidth * 320)),
            SizedBox(height: MySize.size26,),
            customTextMedium(title: 'Payouts',fontWeight: FontWeight.w500,fontSize: MySize.size18,),
            SizedBox(height: MySize.scaleFactorHeight * 13,),
            PayoutContainer(
                row1Text: 'Payout Methods',
                row2Text: 'Transaction History',
                row3Text: 'Donations',
                row1Tap: () {},
                row2Tap: () {},
                row3Tap: () {}
            ),
          ],
        ),
      )),
    );
  }
}
