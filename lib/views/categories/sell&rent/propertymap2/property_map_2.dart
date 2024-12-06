import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_bottom_sheet.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_rich_text.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';
import 'package:joyapp/views/categories/sell&rent/propertyplantour/property_plan_tour.dart';

import '../../../base/auth_bottomsheet.dart';

class PropertyMap2 extends StatefulWidget {
  const PropertyMap2({super.key});

  @override
  State<PropertyMap2> createState() => _PropertyMap2State();
}

class _PropertyMap2State extends State<PropertyMap2> {
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      backgroundColor: AppColors.backGroundColorFA,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySize.size25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  border: Border.all(color: AppColors.lineColorAD),
                  color: AppColors.whiteColorFF),
              child: Row(children: [
                Container(
                  width: MySize.scaleFactorWidth * 142,
                  height: MySize.scaleFactorHeight * 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                  ),
                  child: Image.asset(AppConstant.house2, fit: BoxFit.fill),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MySize.size12,
                      top: MySize.size12,
                      bottom: MySize.size12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MySize.scaleFactorWidth * 170,
                        child: customTextMedium(
                            title: "Upstairs rental your next home in the sky",
                            fontSize: MySize.size18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: MySize.size5,
                      ),
                      customTextRegular(
                          title: "8 bed . 4 bath . 2 stories",
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.subTitleColor37),
                      SizedBox(
                        height: MySize.size5,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Rent",
                            style: TextStyle(
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.primaryColor62,
                              color: AppColors.primaryColor62,
                            )),
                        TextSpan(
                            text: " \$1,490 ",
                            style: TextStyle(
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.blackColor00,
                              color: AppColors.blackColor00,
                            )),
                        TextSpan(
                            text: "CAD",
                            style: TextStyle(
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  AppColors.currencyShortCodeColor60,
                              color: AppColors.currencyShortCodeColor60,
                            )),
                      ]))
                    ],
                  ),
                )
              ]),
            ),
            SizedBox(
              height: MySize.size20,
            ),
            customDivider(width: double.infinity, color: AppColors.lineColorAD),
            SizedBox(
              height: MySize.size8,
            ),
            customTextMedium(
                title: "CreateReservation",
                fontSize: MySize.size20,
                fontWeight: FontWeight.w500),
            SizedBox(
              height: MySize.size8,
            ),
            customTextMedium(
                title: "Schedule",
                fontSize: MySize.size16,
                fontWeight: FontWeight.w500),
            Container(
              padding: EdgeInsets.symmetric(horizontal: MySize.size12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  border: Border.all(color: AppColors.lineColorAD),
                  color: AppColors.whiteColorFF),
              child: Row(children: [
                customTextRegular(
                    title: "${selectedDate}",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
                Spacer(),
                IconButton(
                    onPressed: () {
                      _selectDate();
                    },
                    icon: SvgPicture.asset(
                      AppConstant.ic_booked,
                      height: MySize.size24,
                    ))
              ]),
            ),
            SizedBox(
              height: MySize.size16,
            ),
            customTextMedium(
                title: "Subject",
                fontSize: MySize.size16,
                fontWeight: FontWeight.w500),
            customTextField(
                hintText: "Enter Subject",
                bordercolor: AppColors.lineColorAD,
                fontSize: MySize.size16,
                fontWeight: FontWeight.w400,
                hinttextcolor: AppColors.placeHolderColor4F,
                fillcolor: AppColors.whiteColorFF,
                filled: true),
            SizedBox(
              height: MySize.size16,
            ),
            customTextMedium(
                title: "Detail Message ",
                fontSize: MySize.size16,
                fontWeight: FontWeight.w500),
            Container(
              height: MySize.scaleFactorHeight * 170,
              child: customTextField(
                hintText: "Enter Subject",
                bordercolor: AppColors.lineColorAD,
                fontSize: MySize.size16,
                fontWeight: FontWeight.w400,
                hinttextcolor: AppColors.placeHolderColor4F,
                fillcolor: AppColors.whiteColorFF,
                filled: true,
              ),
            ),
            SizedBox(
              height: MySize.size60,
            ),
            customButton(
                ontap: () {
                  authcustombottomsheet(
                    context,
                    text1: "Successful",
                    text2:
                    "Parcel delivery request submitted successfully! We're actively finding the best driver for you.",
                    image: AppConstant.ic_success,
                  );
                },
                borderRadius: MySize.size8,
                colors: Color(0xFFE63946),
                text: "Submit",
                fontSize: MySize.size16,
                fontWeight: FontWeight.w500,
                borderColor: Color(0xFFE63946),
                fontColor: AppColors.whiteColorFF),
          ]),
        ),
      ),
    ));
  }
}
