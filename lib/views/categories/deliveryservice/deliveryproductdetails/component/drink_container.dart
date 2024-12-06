import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';



class DrinkContainer extends StatelessWidget {
  const DrinkContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySize.size8),
        border: Border.all(color: AppColors.lineColorAD,width: 0.5),
        color: AppColors.whiteColorFF,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: MySize.size15,vertical: MySize.size12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MySize.size8),
              color: Color(0xffEAEAEA),
            ),

            child: Row(
                children: [
                  customTextMedium(title: "Drink",fontSize: MySize.size20,fontWeight: FontWeight.w500),
                  Spacer(),
                  customTextMedium(title: "Required",fontSize: MySize.size15,fontWeight: FontWeight.w500,color: AppColors.errorFailureColor26),
                ]),
          ),

          Padding(
            padding:  EdgeInsets.symmetric(vertical: MySize.size15,horizontal: MySize.size15),
            child: Row(children: [
              customTextMedium(title: "Coffee or Tea",fontSize: MySize.size16,fontWeight: FontWeight.w500,),
              Spacer(),
              CircleAvatar(
                radius: MySize.size15,
                backgroundColor: Color(0xFFF5F0EB),
                child: SvgPicture.asset(AppConstant.ic_done),
              ),
              SizedBox(width: MySize.size15),
              SvgPicture.asset(AppConstant.ic_forward),
            ],),
          ),
          customDivider(
              width: double.infinity,
              color: AppColors.lineColorAD
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: MySize.size15,horizontal: MySize.size15),
            child: Row(children: [
              customTextMedium(title: "McCafé Hot Speciality",fontSize: MySize.size16,fontWeight: FontWeight.w500,),
              Spacer(),
              CircleAvatar(
                radius: MySize.size15,
                backgroundColor: Color(0xFFF5F0EB),
                child: SvgPicture.asset(AppConstant.ic_done),
              ),
              SizedBox(width: MySize.size15),
              SvgPicture.asset(AppConstant.ic_forward),
            ],),
          ),
        ],
      ),
    );
  }
}
