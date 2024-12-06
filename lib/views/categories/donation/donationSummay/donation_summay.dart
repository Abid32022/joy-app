import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';
import '../../../base/appointment_app_bar.dart';
import '../../../base/custom_button.dart';
import 'base/base.dart';
class DonationSummay extends StatefulWidget {
  const DonationSummay({super.key});
  @override
  State<DonationSummay> createState() => _DonationSummayState();
}
class _DonationSummayState extends State<DonationSummay> {
  double _consumedData = 6 / 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppointmentAppBar(
        onBackTap: (){
          Get.back();
        },
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: MySize.size22,vertical: MySize.size16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MySize.scaleFactorWidth * 380,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(MySize.size10),
                    border: Border.all(color: AppColors.borderColorAD)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: MySize.size12, vertical: MySize.size12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customTextMedium(title: 'Helping feed the impoverished \nduring Ramadan', fontWeight: FontWeight.w500, fontSize: MySize.size18, textAlign: TextAlign.left,),
                            SizedBox(height: MySize.size16,),
                            customTextRegular(title: 'Your donation will benefit Adnan Qureshi', fontWeight: FontWeight.w500, fontSize: MySize.scaleFactorHeight * 13, textAlign: TextAlign.left,),
                          ],
                        ),
                        Image.asset(AppConstant.ic_donation_pic, height: MySize.size72,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MySize.size20,),
                customDivider(
                  width: MySize.scaleFactorWidth * 365,
                ),
                SizedBox(height: MySize.size10,),
                customTextMedium(title: 'Edit your donation', fontWeight: FontWeight.w500, fontSize: MySize.size18, textAlign: TextAlign.left,),
                SizedBox(height: MySize.size10,),
                customTextField(
                  hintText: '\$100',
                  bordercolor: AppColors.borderColorAD,
                  borderRadius: MySize.size6,
                  suffix: true,
                  suffixWidget: Padding(
                    padding:  EdgeInsets.only(top: MySize.size14,left: MySize.size10),
                    child: customTextRegular(title: 'USD', fontSize: MySize.size18, fontWeight: FontWeight.w400),
                  )
                ),
                SizedBox(height: MySize.size20,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MySize.size10),
                  child: customDivider(
                    width: MySize.scaleFactorWidth * 365,
                  ),
                ),
                SizedBox(height: MySize.size10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size6),
                    border: Border.all(color: AppColors.borderColorAD,width: .5)
                  ),
                  child:Padding(
                    padding:  EdgeInsets.symmetric(horizontal: MySize.size10,vertical: MySize.scaleFactorHeight * 11),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customTextMedium(title: 'Tip EnnVisions Services', fontSize: MySize.size18, fontWeight: FontWeight.w500,),
                        SizedBox(height: MySize.size5,),
                        customTextRegular(title: 'EnnVisions has a 0% platform fee for organizers. EnnVisions will continue offering its services thanks to donors who will leave an optional amount here:',
                          fontSize: MySize.size16, fontWeight: FontWeight.w400,maxLines: 3),
                        SizedBox(height: MySize.size8,),
                        LinearProgressIndicator(
                          value: _consumedData,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MySize.size20,),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: MySize.size10),
                    child: customDivider(
                      width: MySize.scaleFactorWidth * 365,
                    ),
                  ),
                ),
                SizedBox(height: MySize.size10,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(text: TextSpan(
                        children: [
                          WidgetSpan(child: customTextMedium(title: "Your donation:",fontWeight: FontWeight.w500, fontSize: MySize.size18)),
                          WidgetSpan(child: customTextMedium(title: "\$ 100.00",fontWeight: FontWeight.w500, fontSize: MySize.size18,color:AppColors.textColor53)),
                        ]
                      )),
                      SizedBox(height: MySize.size10,),
                      RichText(text: TextSpan(
                        children: [
                          WidgetSpan(child: customTextMedium(title: "EnnVisions tip:",fontWeight: FontWeight.w500, fontSize: MySize.size18)),
                          WidgetSpan(child: customTextMedium(title: "\$ 15.00",fontWeight: FontWeight.w500, fontSize: MySize.size18,color:AppColors.textColor53 )),
                        ]
                      )),
                      SizedBox(height: MySize.size10,),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            customDivider(width: MySize.scaleFactorWidth * 200),
                            customDivider(width: MySize.scaleFactorWidth * 133,height: MySize.size2,color: AppColors.textColor53),
                          ],
                        ),
                      ),
                      SizedBox(height: MySize.size10,),
                      RichText(text: TextSpan(
                        children: [
                          WidgetSpan(child: customTextMedium(title: "Total due today:",fontWeight: FontWeight.w500, fontSize: MySize.size20)),
                          WidgetSpan(child: customTextMedium(title: "\$115.00",fontWeight: FontWeight.w500, fontSize: MySize.size20,color:AppColors.textColor53)),
                        ]
                      )),
                    ],
                  ),
                ),
                SizedBox(height: MySize.scaleFactorHeight* 200,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MySize.size8),
                  child: customButton(
                      text: 'PAY NOW',
                      fontWeight: FontWeight.w600,
                      ontap: (){
                        DonationBottomSheet().DonationMessage(context);
                      },
                      colors: AppColors.borderColorAD,
                      borderColor: AppColors.borderColorAD,
                      width: MySize.scaleFactorWidth * 348,
                      height: MySize.size48,
                      borderRadius: MySize.size10
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
