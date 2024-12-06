
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../../../../utils/appcolors.dart';
import '../../../base/appointment_app_bar.dart';
import '../../../base/custom_button.dart';
import '../donationSummay/donation_summay.dart';

class DonationDetail extends StatelessWidget {
  const DonationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: AppointmentAppBar(
        onBackTap: (){
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: MySize.size23, vertical: MySize.size20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                customTextMedium(title: 'Helping feed the impoverished during Ramadan',fontSize: MySize.size20, fontWeight: FontWeight.w500, textAlign: TextAlign.left),
                SizedBox(height: MySize.size5,),
                customTextMedium(title: 'Ramadan Food Packs (\$ 100 to feed a family of five for the entire month of Ramadan)',fontSize: MySize.size15, fontWeight: FontWeight.w500, textAlign: TextAlign.left),
                SizedBox(height: MySize.scaleFactorHeight * 9.8,),
                customTextRegular(title: 'Assalamu Alaikum, my name is Adnan Qureshi, Those that know me will know it has been a lifelong dream for me to help others and do some charity work, and Alhamdullilah with your help for the past 2 Ramadan. This year I would like to do something a little different! My target now is to provide food packs to the poor and needy for the month of Ramadan. Our food packs will ensure they are able to participate in the ritual of fasting as we do. We will be providing food packs in poor villages where drought and poverty are high.',
                    fontSize: MySize.size14, fontWeight: FontWeight.w500, textAlign: TextAlign.left,maxLines: 10),
                SizedBox(height: MySize.size26),
                customTextRegular(title: 'A donation of \$100 will help feed a family of 5 for the entire month of Ramadan. The food packs will consist of essential items in line with international nutritional standards which includes; \nDates, Cooking oil, Wheat Flour, Rice, Lentils, Salt, Sugar, Milk, Tea leafs',
                    fontSize: MySize.size14, fontWeight: FontWeight.w500, textAlign: TextAlign.left,maxLines: 10),
                SizedBox(height: MySize.size26),
                customTextRegular(title: 'Rest assured 100% of your money will be donated. We will continue to update this page so you can be part of this journey with us. To get this done I need your help and support. Please get clicking, get sharing and start donating now!',
                    fontSize: MySize.size14, fontWeight: FontWeight.w500, textAlign: TextAlign.left,maxLines: 10),
                SizedBox(height: MySize.size26),
                customTextRegular(title: "Jazak'Allah khair -Thank you!",
                    fontSize: MySize.size14, fontWeight: FontWeight.w500, textAlign: TextAlign.left,maxLines: 10),
                SizedBox(height: MySize.size160),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MySize.size8),
                  child: customButton(
                      text: 'DONATE',
                      fontWeight: FontWeight.w600,
                      ontap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DonationSummay(),));
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
