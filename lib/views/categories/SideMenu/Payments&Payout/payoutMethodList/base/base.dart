import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class SelectPayMethod extends StatelessWidget {  final String bankName;
final bool isSelected;

SelectPayMethod({required this.bankName, required this.isSelected});


@override
  Widget build(BuildContext context) {
    return Container(
      width: MySize.scaleFactorWidth * 384,
      padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 17, vertical: MySize.size14),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderColorAD, width: .5,),
        borderRadius: BorderRadius.circular(MySize.size10),
        color: AppColors.whiteColorFF
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customTextMedium(title: bankName, fontSize: MySize.size18, fontWeight: FontWeight.w500,),
              Container(
                width: MySize.scaleFactorWidth * 28,
                height: MySize.scaleFactorHeight*28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.borderColorAD,width: .5),
                  color: isSelected ? AppColors.titleColor50 : Colors.transparent,
                ),
                child: isSelected
                    ? Center(child: SvgPicture.asset(AppConstant.ic_check2, color: Colors.white,))
                    : null, // Set SVG only if isSelected is true
              )
            ],
          ),
          SizedBox(height: MySize.size4,),
          customTextLight(title: '- 3 -5 business days', fontSize: MySize.size14, fontWeight: FontWeight.w400,),
          customTextLight(title: '- No Fees',fontSize: MySize.size14, fontWeight: FontWeight.w400),


        ],
      ),
    );
  }
}
