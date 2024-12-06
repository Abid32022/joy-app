import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/textfield.dart';
import '../../../../../utils/appcolors.dart';
import '../../../../../utils/appconstant.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/auth_bottomsheet.dart';
import '../../../../base/custom_app_bar.dart';
import '../../../../base/custom_button.dart';
import '../../../../base/custom_textwidget.dart';
import '../base/logo_container.dart';
import '../payoutMethods/payout_methods.dart';
class CouponCard extends StatefulWidget {
  const CouponCard({super.key});

  @override
  State<CouponCard> createState() =>
      _CouponCardState();
}

class _CouponCardState extends State<CouponCard> {
  bool checkbox = true;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
        appBar: CustomAppBar(
          onBackTap: () {
            Navigator.pop(context);
          },
          verifiedVisibile: false,
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MySize.scaleFactorWidth * 22,
                vertical: MySize.scaleFactorHeight * 23),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, children: [
                customTextMedium(title: 'Let’s redeem your Coupon card', fontSize: MySize.size22, fontWeight: FontWeight.w500, ),
                SizedBox(height: MySize.size23,),
                CustomGradientContainer(),
                SizedBox(height: MySize.size20,),
                customTextMedium(title: 'Coupon', fontSize: MySize.size18, fontWeight: FontWeight.w500, ),
                SizedBox(height: MySize.scaleFactorHeight * 7,),
                customTextField(
                    borderRadius: MySize.size8,
                    hintText: 'Enter a coupon code(Required))',
                    bordercolor: AppColors.borderColorAD,
                    minLines: 1
                ),
                SizedBox(height: MySize.scaleFactorHeight * 10,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      checkbox = !checkbox;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.zero,
                    child: Row(
                      children: [
                        Checkbox(
                          value: checkbox,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MySize.size4)),
                          onChanged: (bool? value) {
                            setState(() {
                              checkbox = value!;
                            });
                          },
                          activeColor: AppColors.titleColor50,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        Expanded(
                          child: customTextRegular(
                            title: 'By redeeming you agree to the Coupon Terms',
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MySize.scaleFactorHeight * 5,),
                customButton(
                    colors: AppColors.btnColorDE,
                    text: 'Apply',
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w600,
                    width: MySize.scaleFactorWidth * 360,
                    height: MySize.scaleFactorHeight * 46,
                    borderRadius: MySize.size10,
                    borderColor: AppColors.btnColorDE,
                    ontap: (){
                      Timer(Duration(seconds: 3), () {
                        Get.to(PayoutMethods());
                      });
                      authcustombottomsheet(
                        context,
                        text1: "Successful",
                        text2:
                        "Congratulations! on successfully adding your new card! You're all set to enjoy secure and hassle-free transactions.",
                        image: AppConstant.ic_success,
                      );
                    }
                ),
                SizedBox(height: MySize.scaleFactorHeight * 17,),
                customDivider(width: MySize.scaleFactorWidth * 330),
              ]),
            )));
  }
}
