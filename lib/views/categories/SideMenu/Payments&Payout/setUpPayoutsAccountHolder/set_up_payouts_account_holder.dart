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
import '../setUpPayoutsBrithOfPlace/set_up_payouts_birth_of_place.dart';

class SetUpPayoutsAccountHolder extends StatefulWidget {
  const SetUpPayoutsAccountHolder({super.key});

  @override
  State<SetUpPayoutsAccountHolder> createState() =>
      _SetUpPayoutsAccountHolderState();
}

class _SetUpPayoutsAccountHolderState extends State<SetUpPayoutsAccountHolder> {
  TextEditingController accountHolderController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController roleController = TextEditingController();


  List<String> bankType = [
    'Personal',
    'Joint',
    'Business'
  ];
  List <bool> selectedIndex = [
    false,
    false,
    false
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
            vertical: MySize.scaleFactorHeight * 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              customTextMedium(title: 'Set Up Payouts', fontSize: MySize.size22, fontWeight: FontWeight.w500, ),
              SizedBox(height: MySize.scaleFactorHeight * 27,),
              customTextMedium(title: 'Account Holder', fontSize: MySize.size18, fontWeight: FontWeight.w500, ),
              SizedBox(height: MySize.scaleFactorHeight * 7,),
              customTextField(
                controller: accountHolderController,
                  minLines: 1,
                  hintText: 'Select Account holder (required)',
                  suffix: true,
                  filled: true,
                  fillcolor: AppColors.whiteColorFF,
                  bordercolor: AppColors.borderColorAD,
                  suffixWidget: IconButton(onPressed: () {

                  }, icon: SvgPicture.asset(AppConstant.ic_drop_down))
              ),
              SizedBox(height: MySize.size10,),
              Row(
                children: [
                  customTextRegular(title: 'This is where you opened your financial account.\t',fontWeight: FontWeight.w400,fontSize: MySize.size14,color: AppColors.hinttextcolor),
                  InkWell(
                      onTap: () {

                      },
                      child: customTextMedium(title: 'More info',fontWeight: FontWeight.w400,fontSize: MySize.size14,decoration: TextDecoration.underline)),
                ],
              ),
              SizedBox(height: MySize.size18,),
              customDivider(width: MySize.scaleFactorWidth * 320),
              SizedBox(height: MySize.size24,),
              customTextMedium(title: 'Type of bank account', fontSize: MySize.size18, fontWeight: FontWeight.w500, ),
              SizedBox(height: MySize.size16,),
              Container(
                width: MySize.scaleFactorWidth * 384,
                padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 18, vertical: MySize.size12),
                decoration: BoxDecoration(
                  color: AppColors.whiteColorFF,
                  border: Border.all(color: AppColors.borderColorAD, width: .5),
                    borderRadius: BorderRadius.circular(MySize.size10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i= 1; i <= bankType.length; i++ )
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              for (int j = 0; j < selectedIndex.length; j++) {
                                selectedIndex[j] = false;
                              }
                              selectedIndex [i-1] = !selectedIndex[i-1];
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customTextRegular(title: bankType[i-1], fontSize: MySize.size16, fontWeight: FontWeight.w500),
                              Container(
                                width: MySize.scaleFactorWidth * 28,
                                height: MySize.scaleFactorHeight * 28,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColors.borderColorAD,width: .5),
                                  color: selectedIndex[i-1] ? AppColors.titleColor50 : Colors.transparent,
                                ),
                                child: selectedIndex[i-1]
                                ? Center(child: SvgPicture.asset(AppConstant.ic_check2),)
                                :null,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: i == bankType.length ? 0 : MySize.size12,),
                        customDivider(width: i == bankType.length ? 0 : MySize.scaleFactorWidth * 320),
                        SizedBox(height: i == bankType.length ? 0 : MySize.size14,),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: MySize.size20,),
              customDivider(width: MySize.scaleFactorWidth * 320),
              SizedBox(height: MySize.size14,),
              customTextMedium(title: 'First Name', fontSize: MySize.size18, fontWeight: FontWeight.w500, ),
              SizedBox(height: MySize.size7,),
              customTextField(
                controller: firstNameController,
                minLines: 1,
                  hintText: 'Enter First Name(required)',
                  filled: true,
                  fillcolor: AppColors.whiteColorFF,
                  bordercolor: AppColors.borderColorAD,
              ),
              SizedBox(height: MySize.size8,),
              customTextRegular(title: 'Enter the account holder\'s name exactly as it appears on bank statements.', fontWeight: FontWeight.w400, fontSize: MySize.size14,color: AppColors.hinttextcolor),
              SizedBox(height: MySize.size18,),
              customDivider(width: MySize.scaleFactorWidth * 320),
              SizedBox(height: MySize.size14,),
              customTextMedium(title: 'Role', fontSize: MySize.size18, fontWeight: FontWeight.w500, ),
              SizedBox(height: MySize.size7,),
              customTextField(
                controller: roleController,
                  minLines: 1,
                  hintText: 'Select Your Role (Required)',
                  suffix: true,
                  filled: true,
                  fillcolor: AppColors.whiteColorFF,
                  bordercolor: AppColors.borderColorAD,
                  suffixWidget: IconButton(onPressed: () {

                  }, icon: SvgPicture.asset(AppConstant.ic_drop_down))
              ),
              SizedBox(height: MySize.size40,),
              customButton(
                  colors: AppColors.btnColorDE,
                  text: 'Continue',
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w600,
                  width: MySize.scaleFactorWidth * 360,
                  height: MySize.scaleFactorHeight * 46,
                  borderRadius: MySize.size10,
                  borderColor: AppColors.btnColorDE,
                  ontap: (){
                    Get.to(SetUpPayoutsBrithOfPlace());
                  }
              ),











            ],
          ),
        ),
      ),
    );
  }
}