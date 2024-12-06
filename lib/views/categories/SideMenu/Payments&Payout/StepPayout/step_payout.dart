import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import '../../../../../utils/appcolors.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_app_bar.dart';
import '../../../../base/custom_button.dart';
import '../../../../base/custom_textwidget.dart';
import '../base/faqs.dart';
import '../payoutMethodList/payout_method_list.dart';

class StepPayout extends StatefulWidget {
  const StepPayout({super.key});

  @override
  State<StepPayout> createState() => _StepPayoutState();
}

class _StepPayoutState extends State<StepPayout> {
  bool visible = true;

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextMedium(
                  title: 'Payout Methods',
                  fontSize: MySize.size22,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: MySize.size22,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MySize.scaleFactorWidth * 13,
                      vertical: MySize.scaleFactorHeight * 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size10),
                      border: Border.all(
                          color: AppColors.borderColorAD, width: .5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextMedium(
                        title: 'How you\'ll get paid',
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        height: MySize.size12,
                      ),
                      customTextRegular(
                        title:
                            'Add at least one payout method so we know where to send your money.',
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MySize.size16,
                ),
                customButton(
                    colors: AppColors.btnColorDE,
                    text: 'SET UP PAYOUT',
                    fontSize: MySize.size14,
                    fontWeight: FontWeight.w600,
                    width: MySize.scaleFactorWidth * 360,
                    height: MySize.scaleFactorHeight * 46,
                    borderRadius: MySize.size10,
                    borderColor: AppColors.btnColorDE,
                    ontap: () {
                      Get.to(PayoutMethodList());
                    }),
                SizedBox(
                  height: MySize.size22,
                ),
                customDivider(width: MySize.scaleFactorWidth * 320),
                Faqs(onCollapseClicked: showFAQs)
              ],
            ))));
  }

  void showFAQs() {
    setState(() {
      visible = true;
    });
  }
}
