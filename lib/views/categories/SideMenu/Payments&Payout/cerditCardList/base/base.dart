import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';

import '../../../../../base/custom_button.dart';
import '../../yourPayment/your_payment.dart';

class CreditCardWidget {
  static Widget buildCreditCardTile({
    required String cardImage,
    required String cardHolder,
    required String cardNumber,
    required String expirationDate,
    required Function(bool) onSwitchChanged,
    required bool switchOn,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        margin: EdgeInsets.only(left: MySize.size8),
        padding: cardImage.contains(AppConstant.ic_visa_card) ? EdgeInsets.all(MySize.size4) : EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySize.size8),
          border: cardImage.contains(AppConstant.ic_visa_card) ?  Border.all(color: AppColors.borderColorAD) : Border.all(color: Colors.transparent),
        ),
        child: Image.asset(cardImage),
      ),
      title: Column(
        children: [
          Row(
            children: [
              customTextMedium(title: cardHolder),
              Spacer(),
              Visibility(
                  visible: switchOn,
                  child: Row(
                    children: [
                      customTextMedium(title: 'Set Default'),
                      SizedBox(width: MySize.scaleFactorWidth * 6),
                    ],
                  )),
              IconButton(
                splashRadius: MySize.size2,
                visualDensity: VisualDensity.compact,
                onPressed: () {
                  onSwitchChanged(!switchOn);
                },
                icon: switchOn
                    ? SvgPicture.asset(AppConstant.ic_switch_on)
                    : SvgPicture.asset(AppConstant.ic_switch_off),
              )
            ],
          ),
          Row(
            children: [
              customTextRegular(
                title: cardNumber,
                fontSize: MySize.size16,
                fontWeight: FontWeight.w400,
              ),
              Spacer(),
              customTextRegular(
                title: 'Expired at: $expirationDate',
                fontSize: MySize.size16,
                fontWeight: FontWeight.w400,
                color: AppColors.textColor53,
              ),
              SizedBox(width: MySize.size8),
            ],
          )
        ],
      ),
    );
  }
}

  class CerditCardList {
  void PaymentInformation(BuildContext context) {
    paymentInformationMessage(context);
  }
  void paymnentSuccessful(BuildContext context) {
    paymnentSuccessfulMessage(context);
  }

  Future paymentInformationMessage(BuildContext context) async {
    await showModalBottomSheet(
      backgroundColor: AppColors.whiteColorFF,
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 15, vertical: MySize.size19),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              customTextMedium(title: 'Payment Information', color: AppColors.textColor66, fontWeight: FontWeight.w600, fontSize: MySize.size18,),
              SizedBox(height: MySize.size20,),
              customTextMedium(title: 'Account Holder', fontSize: MySize.size16,fontWeight: FontWeight.w500,),
              customTextField(
                ontap: (){},
                minLines: 1,
                hintText: 'Enter Account holder Name',
                bordercolor: AppColors.borderColorAD,
              ),
              SizedBox(height: MySize.size20,),
              customTextMedium(title: 'Account Holder', fontSize: MySize.size16,fontWeight: FontWeight.w500,),
              customTextField(
                ontap: (){},
                minLines: 1,
                hintText: 'Enter Card Number',
                bordercolor: AppColors.borderColorAD,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: MySize.scaleFactorWidth * 172,
                  child:customTextField(
                    minLines: 1,
                    hintText: 'MM/ YY',
                    bordercolor: AppColors.borderColorAD,
                  ),),
                  SizedBox(width: MySize.size15,),
                  SizedBox(width: MySize.scaleFactorWidth * 172,
                  child: customTextField(
                    minLines: 1,
                    hintText: 'CVV',
                    bordercolor: AppColors.borderColorAD,
                  ),),
                ],
              ),
              SizedBox(height: MySize.size25,),
              customTextMedium(title: 'Country or Region', fontSize: MySize.size16,fontWeight: FontWeight.w500,),
              customTextField(
                  ontap: (){},
                  minLines: 1,
                hintText: 'Select Country',
                bordercolor: AppColors.borderColorAD,
                suffixWidget: IconButton(onPressed: () {
                  
                }, icon: SvgPicture.asset(AppConstant.ic_arrow_down, color: AppColors.borderColorAD,height: MySize.size12,)),
                suffix: true
              ),
              SizedBox(
                height: MySize.size10,
              ),
              customTextField(
                ontap: (){},
                minLines: 1,
                hintText: 'Enter Zipcode',
                bordercolor: AppColors.borderColorAD,
                suffix: true,
                  focusBorder: false,
                suffixWidget: IconButton(onPressed: () {

                },
                icon: Icon(Icons.more_horiz_outlined,color: AppColors.borderColorAD,size: MySize.size18,),)
              ),
              SizedBox(height: MySize.size10,),
              customButton(
                  colors: AppColors.btnColorDE,
                  text: 'Save now',
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  width: MySize.scaleFactorWidth * 360,
                  height: MySize.scaleFactorHeight * 46,
                  borderRadius: MySize.size10,
                  borderColor: AppColors.btnColorDE,
                  ontap: (){
                    Navigator.pop(context);
                    paymnentSuccessfulMessage(context);
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
  Future paymnentSuccessfulMessage(BuildContext context) async {
    await showModalBottomSheet(
      backgroundColor: AppColors.whiteColorFF,
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 15, vertical: MySize.size19),
        child: GestureDetector(
          onTap: (){
            Get.to(YourPaymentScreen());
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppConstant.ic_success,height: MySize.scaleFactorHeight * 61,color: AppColors.textColor6c,),
              SizedBox(height: MySize.scaleFactorHeight * 11,),
              customTextMedium(title: 'Successful',fontSize: MySize.size16, fontWeight: FontWeight.w500),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                customTextMedium(title: 'Congratulations! '),
                customTextRegular(title: 'on successfully adding your new card!',maxLines: 6)
              ],),
              customTextRegular(title: 'You\'re all set to enjoy secure and hassle-free transactions.',maxLines: 6)

            ],
          ),
        ),
      ),
    );
  }

}
