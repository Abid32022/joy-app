import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../../parcel_services/summary/Component/re_use_row.dart';
import '../laundryaddresspoint/laundry_address_point.dart';



class LaundrySummary extends StatefulWidget {
  const LaundrySummary({super.key});

  @override
  State<LaundrySummary> createState() => _LaundrySummaryState();
}

class _LaundrySummaryState extends State<LaundrySummary> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(onBackTap: (){
          Get.back();
        },
        ),
      body: Column(children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: MySize.size24,vertical: MySize.size30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            customTextMedium(
                title: "Estimate Fare",
                fontSize: MySize.size20,
                fontWeight: FontWeight.w500),
            SizedBox(height: MySize.size18),
            Container(
              padding: EdgeInsets.all(MySize.size15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  border: Border.all(color: AppColors.lineColorAD)
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ReUseRow(text1: "Express delivery fees",text2: "\$50.00 "),
                    SizedBox(height: MySize.size12),
                    ReUseRow(text1: "Small box fee",text2: "\$10.00 "),
                    SizedBox(height: MySize.size12),
                    ReUseRow(text1: "Driver fee",text2: "\$4.49 "),
                    SizedBox(height: MySize.size12),
                    ReUseRow(text1: "Occupancy taxes & fees",text2: "\$1.27 "),
                    SizedBox(height: MySize.size12),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MySize.size16),
                      child: Row(
                        children: [
                          customTextMedium(
                            title: "Total (CAD)",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500,),
                          Spacer(),
                          customTextMedium(
                              title: "\$50.00 ",
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline
                          ),
                          customTextRegular(
                              title: "CAD",
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              Center(
                child: customDivider(
                    width: MySize.scaleFactorWidth * 363,
                    color: AppColors.lineColorAD),
              ),
              SizedBox(height: MySize.size10),
              customButton(
                ontap: () {
                   Get.to(LaundryAddressPoint());
                },
                borderRadius: MySize.size8,
                colors: AppColors.parcelSecondaryColor8B,
                text: "Continue",
                fontSize: MySize.size14,
                fontWeight: FontWeight.w500,
              ),
          ],),
        )
      ]),
    ));
  }
}
