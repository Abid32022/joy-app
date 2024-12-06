import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/textfield.dart';
import '../../../../../utils/appcolors.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_app_bar.dart';
import '../../../../base/custom_button.dart';
import '../../../../base/custom_textwidget.dart';
import '../base/faqs.dart';
import '../base/logo_container.dart';
import '../couponCard/coupon_card.dart';
class FrequentlyAskedQuestion extends StatefulWidget {
  const FrequentlyAskedQuestion({super.key});

  @override
  State<FrequentlyAskedQuestion> createState() =>
      _FrequentlyAskedQuestionState();
}

class _FrequentlyAskedQuestionState extends State<FrequentlyAskedQuestion> {
  bool checkbox = true;
  bool visible = false;
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
                customTextMedium(title: 'Let’s redeem your gift card', fontSize: MySize.size22, fontWeight: FontWeight.w500, ),
                SizedBox(height: MySize.size23,),
                CustomGradientContainer(),
                SizedBox(height: MySize.size20,),
                customTextMedium(title: 'Gift Card Pin', fontSize: MySize.size18, fontWeight: FontWeight.w500, ),
                SizedBox(height: MySize.scaleFactorHeight * 7,),
                customTextField(
                  borderRadius: MySize.size8,
                  hintText: 'Enter Gift Card Pin (Required)',
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
                            title: 'By redeeming, you agree to the Gift Card Terms.',
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
                    text: 'Redeem gift card',
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w600,
                    width: MySize.scaleFactorWidth * 360,
                    height: MySize.scaleFactorHeight * 46,
                    borderRadius: MySize.size10,
                    borderColor: AppColors.btnColorDE,
                    ontap: (){
                      Get.to(CouponCard());
                    }
                ),
                SizedBox(height: MySize.scaleFactorHeight * 23,),
              
                customDivider(width: MySize.scaleFactorWidth * 330),
                SizedBox(height: MySize.scaleFactorHeight * 18,),
                Visibility(
                  replacement: Faqs(onCollapseClicked: showFAQs),
                  visible: visible,
                  child: customButton(
                      colors: AppColors.whitecolor,
                      text: 'Frequently asked question',
                      fontColor: AppColors.lineColor60,
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w600,
                      width: MySize.scaleFactorWidth * 360,
                      height: MySize.scaleFactorHeight * 46,
                      borderRadius: MySize.size10,
                      borderColor: AppColors.borderColorAD,
                      ontap: (){
                        setState(() {
                          visible = !visible;
                        });
                      }
                  ),
                ),
              ]),
            )));
  }
  void showFAQs() {
    setState(() {
      visible = true;
    });
  }

}
