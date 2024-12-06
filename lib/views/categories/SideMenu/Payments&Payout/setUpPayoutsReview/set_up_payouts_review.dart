import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import '../../../../../utils/appcolors.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/auth_bottomsheet.dart';
import '../../../../base/custom_app_bar.dart';
import '../../../../base/custom_button.dart';
import '../../../../base/custom_textwidget.dart';
import '../transactionHistory/transaction_history.dart';
import 'base/base.dart';

class SetUpPayoutsReview extends StatefulWidget {
  const SetUpPayoutsReview({super.key});

  @override
  State<SetUpPayoutsReview> createState() => _SetUpPayoutsReviewState();
}

class _SetUpPayoutsReviewState extends State<SetUpPayoutsReview> {
  TextEditingController streetAddressController = TextEditingController();
  TextEditingController flatSuiteBldgController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();

  List<Map<String, String>> textFieldsData = [
    {
      'label': 'Payout method',
      'hintText': 'Bank account in CAD',
    },
    {
      'label': 'Bank account type',
      'hintText': 'Checking',
    },
    {
      'label': 'Account holder name',
      'hintText': 'Adnan Qureshi',
    },
    {
      'label': 'Bank Name',
      'hintText': 'TD Bank',
    },
    {
      'label': 'Transit Number',
      'hintText': '23243',
    },
    {
      'label': 'Institution Number',
      'hintText': '828328',
    },
    {
      'label': 'Account Number',
      'hintText': '828328',
    },
  ];

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
            vertical: MySize.scaleFactorHeight * 19),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextMedium(
                title: 'Let\'s review your info',
                fontSize: MySize.size22,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: MySize.scaleFactorHeight * 15),
              customTextLight(
                  title:
                      'Almost done! Just double-check that everything looks good before you submit.',
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.hinttextcolor),
              SizedBox(
                height: MySize.size16,
              ),
              for (int index = 0; index < textFieldsData.length; index++)
                Column(
                  children: [
                    PaymentReviewFields(
                      label: textFieldsData[index]['label'] ?? '',
                      hintText: textFieldsData[index]['hintText'] ?? '',
                    ),
                    SizedBox(
                      height: MySize.size20,
                    ),
                  ],
                ),
              SizedBox(
                height: MySize.size100,
              ),
              customDivider(width: MySize.scaleFactorWidth * 320),
              SizedBox(
                height: MySize.size18,
              ),
              customButton(
                  colors: AppColors.btnColorDE,
                  text: 'Submit',
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w600,
                  width: MySize.scaleFactorWidth * 360,
                  height: MySize.scaleFactorHeight * 46,
                  borderRadius: MySize.size10,
                  borderColor: AppColors.btnColorDE,
                  ontap: () {
                    Timer(Duration(seconds: 3), () {
                      Get.to(TransactionHistory());
                    });
                    authcustombottomsheet(
                      context,
                      text1: "Successful",
                      text2:
                      "Congratulations! on successfully adding your new card! You're all set to enjoy secure and hassle-free transactions.",
                      image: AppConstant.ic_success,
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
