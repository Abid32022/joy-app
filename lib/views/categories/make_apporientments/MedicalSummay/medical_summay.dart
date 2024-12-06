import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import '../../../base/appointment_app_bar.dart';
import '../../../base/custom_button.dart';
import '../../../base/custom_divider.dart';
import 'base.dart';

class MedicalSummay extends StatelessWidget {
  const MedicalSummay({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: AppointmentAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MySize.size23),
          child: Column(
            children: [
              SizedBox(height: MySize.size23,),
              Container(
                height: MySize.size120,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: MySize.size6,right: MySize.size6),
                            child: Image.asset(AppConstant.ic_doc_amina, fit: BoxFit.cover,height: MySize.size110,)),
                        Positioned(
                            right: 0,
                            child: SvgPicture.asset(AppConstant.ic_success,height: MySize.size22,))
                      ],
                    ),
                    SizedBox(width: MySize.size19,),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: MySize.size12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customTextMedium(title: 'Dr. Amina Hafeez', fontSize: MySize.size16,fontWeight: FontWeight.w500,),
                          customTextLight(title: 'Dentist', fontSize: MySize.size16,fontWeight: FontWeight.w500,color: AppColors.completedFinishedColor4D),
                          customTextLight(title: 'Islamabad, Pakistan', fontSize: MySize.size16,fontWeight: FontWeight.w500,)
                        ],
                      ),
                    )

                  ],
                ),
              ),
              SizedBox(height: MySize.size18,),
              ReuseableRow(category: 'Date & Hour',text: 'Aug 24, 2023 | 10:00 AM',),
              SizedBox(height: MySize.size16,),
              ReuseableRow(category: 'Package',text: 'Messaging',),
              SizedBox(height: MySize.size16,),
              ReuseableRow(category: 'Duration',text: '30 minutes',),
              SizedBox(height: MySize.size16,),
              ReuseableRow(category: 'Booking for',text: '30 minutes',),
              SizedBox(height: MySize.size20,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: MySize.size6),
                child: Column(
                  children: [
                    customDivider(width: MySize.scaleFactorWidth * 353),
                    SizedBox(height: MySize.size20,),
                    ReuseableRow(category: 'Amount',text: '\$4.94',cad: false,),
                    SizedBox(height: MySize.size12,),
                    ReuseableRow(category: 'Occupancy taxes & fees',text: '\$4.94',cad: false,),
                    SizedBox(height: MySize.size22,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MySize.size6),
                      child: ReuseableRow(category: 'Total (CAD)',text: '\$50.19',cad: false,),
                    ),

                  ],
                ),
              ),
              Spacer(),
              customDivider(width: MySize.scaleFactorWidth * 340),
              SizedBox(height: MySize.size12),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: MySize.size8),
                child: customButton(
                    text: 'PAY NOW',
                    fontWeight: FontWeight.w600,
                    ontap: (){
                      ApointmentBottomSheet().BookingConfrim_Message(context);
                    },
                    colors: AppColors.borderColorAD,
                    borderColor: AppColors.borderColorAD,
                    width: MySize.scaleFactorWidth * 348,
                    height: MySize.size48,
                    borderRadius: MySize.size10
                ),
              ),
              SizedBox(height: MySize.size12),
            ],
          ),
        ),
      ),
    );
  }
}
