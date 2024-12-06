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
import '../setUpPayoutsAccountHolder/set_up_payouts_account_holder.dart';
import 'base/base.dart';

class PayoutMethodList extends StatefulWidget {
  const PayoutMethodList({super.key});

  @override
  State<PayoutMethodList> createState() => _PayoutMethodListState();
}

class _PayoutMethodListState extends State<PayoutMethodList> {
  TextEditingController billingCountryController = TextEditingController();
  List<bool> isSelectedList = [
    true,  // Set the initial selected state for the first item
    false, // Set the initial selected state for the second item
    false, // Set the initial selected state for the third item
    false, // Set the initial selected state for the fourth item
  ];
  List<String> bankNames = [
    'Bank account in CAD',
    'PayPal in CAD',
    'PayPal in USD',
    'Payoneer in USD',
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
            vertical: MySize.scaleFactorHeight * 23),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextMedium(title: 'Set Up Payouts', fontSize: MySize.size22, fontWeight: FontWeight.w500, ),
              SizedBox(height: MySize.size12,),
              Container(
                width: MySize.scaleFactorWidth * 384,
                padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 13, vertical: MySize.scaleFactorHeight * 15),
                decoration: BoxDecoration(
                  color: AppColors.whiteColorFF,
                    borderRadius: BorderRadius.circular(MySize.size10),
                    border: Border.all(color: AppColors.borderColorAD, width: .5)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextMedium(title: 'Let\'s add a payout method', fontSize: MySize.size16, fontWeight: FontWeight.w500, ),
                    SizedBox(height: MySize.size12,),
                    customTextRegular(title: 'To start, let us know where you\'d like us to send your money.', fontSize: MySize.size14, fontWeight: FontWeight.w500, ),
                  ],
                ),
              ),
              SizedBox(height: MySize.size18,),
              customTextMedium(title: 'Billing Country / Region', fontSize: MySize.size22, fontWeight: FontWeight.w500, ),
              SizedBox(height: MySize.scaleFactorHeight * 7,),
              customTextField(
                controller: billingCountryController,
                minLines: 1,
                hintText: 'Select Billing Country / Region(Required)',
                suffix: true,
                filled: true,
                fillcolor: AppColors.whiteColorFF,
                bordercolor: AppColors.borderColorAD,
                suffixWidget: IconButton(onPressed: () {
                  
                }, icon: SvgPicture.asset(AppConstant.ic_drop_down))
              ),
              SizedBox(height: MySize.scaleFactorHeight * 10,),
              customTextRegular(title: 'This is where you opened your financial',fontWeight: FontWeight.w400,fontSize: MySize.size16,color: AppColors.hinttextcolor,maxLines: 2),

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  customTextRegular(title: 'account.\t',fontWeight: FontWeight.w400,fontSize: MySize.size16,color: AppColors.hinttextcolor,maxLines: 2),
                  InkWell(
                      onTap: () {

                      },
                      child: customTextMedium(title: 'More info',fontWeight: FontWeight.w400,fontSize: MySize.size16,decoration: TextDecoration.underline,)),
                ],
              ),
              SizedBox(height: MySize.size14),
              customDivider(width: MySize.scaleFactorWidth * 320),
              SizedBox(height: MySize.size24),
              customTextMedium(title: 'How would you like to get paid?', fontSize: MySize.size22, fontWeight: FontWeight.w500, ),
              SizedBox(height: MySize.size18),
              for(int i=1; i<=bankNames.length; i++ )
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        // Set all items to false
                        for (int j = 0; j < isSelectedList.length; j++) {
                          isSelectedList[j] = false;
                        }
                        // Set the selected item to true
                        isSelectedList[i - 1] = true;
                      });
                    },
                    child: SelectPayMethod(
                      bankName: bankNames[i - 1],
                      isSelected: isSelectedList[i - 1], // Set the selected status based on your logic
                    ),
                  ),
                  SizedBox(height: i ==bankNames.length ? MySize.scaleFactorHeight * 27: MySize.size20,),
                ],
              ),
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
                    Get.to(SetUpPayoutsAccountHolder());
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
