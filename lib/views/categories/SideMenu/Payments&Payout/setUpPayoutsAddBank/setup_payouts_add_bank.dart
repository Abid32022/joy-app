import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/textfield.dart';
import '../../../../../utils/appcolors.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_app_bar.dart';
import '../../../../base/custom_button.dart';
import '../../../../base/custom_textwidget.dart';
import '../setUpPayoutsAddress/set_up_payouts_address.dart';

class setUpPayoutsAddBank extends StatefulWidget {
  const setUpPayoutsAddBank({super.key});

  @override
  State<setUpPayoutsAddBank> createState() => _setUpPayoutsAddBankState();
}

class _setUpPayoutsAddBankState extends State<setUpPayoutsAddBank> {

  List<String> accountType = [
    'Checking',
    'Saving',
  ];
  List<bool> selectedIndex = [
    false,
    false,
  ];

  TextEditingController bankNameController = TextEditingController();
  TextEditingController institutionNumberController = TextEditingController();
  TextEditingController transitNumberController = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController confirmAccountNumberController = TextEditingController();



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
                title: 'Add bank account info',
                fontSize: MySize.size22,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.scaleFactorHeight*21),
              customTextMedium(
                title: 'Is this a current or saving account?',
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.size14,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: MySize.size15, vertical: MySize.scaleFactorHeight * 11),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size10),
                  border: Border.all(color: AppColors.borderColorAD,
                  width: .5),
                  color: AppColors.whiteColorFF,
                ),
                child: Column(
                  children: [
                    for (int i = 1; i<= accountType.length; i++)
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              for (int j = 0; j < selectedIndex.length; j++) {
                                selectedIndex[j] = false;
                              }

                              selectedIndex[i-1]= !selectedIndex[i-1];
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customTextLight(title: accountType[i-1],fontSize: MySize.size16, fontWeight: FontWeight.w500),
                              Container(
                                width: MySize.scaleFactorWidth*28,
                                height: MySize.scaleFactorHeight *28,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.borderColorAD,width: .5),
                                  shape: BoxShape.circle,
                                  color: selectedIndex[i-1] ? AppColors.titleColor70 : Colors.transparent,
                                ),
                                child: selectedIndex[i-1]
                                  ? Center(child: SvgPicture.asset(AppConstant.ic_check2))
                                    : null
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: i ==  accountType.length ? 0 : MySize.size7,),
                        customDivider(width: i ==  accountType.length ? 0 : MySize.scaleFactorWidth * 320),
                        SizedBox(height: i ==  accountType.length ? 0 : MySize.size7,)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: MySize.size22,),
              customTextMedium(title: 'Bank Name',
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.scaleFactorHeight * 7,),
              customTextField(
                controller: bankNameController,
                  minLines: 1,
                  hintText: 'Select Bank Name (Required)',
                  suffix: true,
                  filled: true,
                  borderWidth: .5,
                  fillcolor: AppColors.whiteColorFF,
                  bordercolor: AppColors.borderColorAD,
                  suffixWidget: IconButton(onPressed: () {

                  }, icon: SvgPicture.asset(AppConstant.ic_drop_down))
              ),
              
              SizedBox(height: MySize.size22,),
              customTextMedium(title: 'Institution number',
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.scaleFactorHeight * 7,),
              customTextField(
                controller: institutionNumberController,
                  minLines: 1,
                  hintText: 'Enter Institution number (Required)',
                  filled: true,
                  borderWidth: .5,
                  fillcolor: AppColors.whiteColorFF,
                  bordercolor: AppColors.borderColorAD,
              ),
              SizedBox(height: MySize.scaleFactorHeight * 9,),
              customTextLight(
                  title: 'The bank code or the financial institution number identifies your bank and should be located in your bank statement or account details.',
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.hinttextcolor),
              SizedBox(height: MySize.size16,),
              customDivider(width: MySize.scaleFactorWidth * 320),
              SizedBox(height: MySize.scaleFactorHeight * 17,),
              customTextMedium(title: 'Transit number',
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.scaleFactorHeight * 7,),
              customTextField(
                controller: transitNumberController,
                minLines: 1,
                hintText: 'Enter Transit number (Required)',
                filled: true,
                borderWidth: .5,
                fillcolor: AppColors.whiteColorFF,
                bordercolor: AppColors.borderColorAD,
              ),
              SizedBox(height: MySize.scaleFactorHeight * 9,),
              customTextLight(
                  title: 'The branch or transit number identifies a specific branch of your bank.',
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.hinttextcolor),
              SizedBox(height: MySize.size15,),
              customDivider(width: MySize.scaleFactorWidth * 320),
              SizedBox(height: MySize.scaleFactorHeight* 7,),
              customTextMedium(title: 'Account number',
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.scaleFactorHeight * 7,),
              customTextField(
                controller: accountNumberController,
                minLines: 1,
                hintText: 'Enter Account Number (Required)',
                filled: true,
                borderWidth: .5,
                fillcolor: AppColors.whiteColorFF,
                bordercolor: AppColors.borderColorAD,
              ),
              SizedBox(height: MySize.size14,),
              customTextField(
                controller: confirmAccountNumberController,
                minLines: 1,
                hintText: 'Confirm Account Number (Required)',
                filled: true,
                borderWidth: .5,
                fillcolor: AppColors.whiteColorFF,
                bordercolor: AppColors.borderColorAD,
              ),
              SizedBox(height: MySize.size32,),
              customButton(
                  colors: AppColors.btnColorDE,
                  text: 'Continue',
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w600,
                  width: MySize.scaleFactorWidth * 360,
                  height: MySize.scaleFactorHeight * 46,
                  borderRadius: MySize.size10,
                  borderColor: AppColors.btnColorDE,
                  ontap: () {
                    Get.to(SetUpPayoutsAddress());
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}