import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
class XpTrackingDetail extends StatelessWidget {
  XpTrackingDetail({super.key,this.mapOnTap});
  Function()? mapOnTap;
  @override

  Widget build(BuildContext context) {
    MySize().init(context);
    return    Container(
     // height: MySize.scaleFactorWidth * 65,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySize.size32),
        color: AppColors.parcelPrimaryColor5C,
      ),
      child: Center(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MySize.size5 ,vertical:MySize.size5 ),
          child: Row(
            children: [
              Container(
                height: MySize.scaleFactorHeight* 54,
                width: MySize.scaleFactorWidth* 54,
                decoration: BoxDecoration(
                    shape: BoxShape.circle
                ),
                child: Image.asset(AppConstant.dpp),
              ),
              SizedBox(width: MySize.scaleFactorWidth*12,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customTextMedium(
                      title: "Andrea William",
                      fontWeight: FontWeight.w500,
                      fontSize: MySize.size16,
                      color: AppColors.backGroundColorFA
                  ),
                  customTextMedium(
                      title: "Ratting: 4.5 (70)",
                      fontWeight: FontWeight.w500,
                      fontSize: MySize.size16,
                      color: AppColors.backGroundColorFA
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  SvgPicture.asset(AppConstant.ic_phone,
                    height: MySize.scaleFactorHeight*42,
                    width: MySize.scaleFactorWidth*42,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width: MySize.scaleFactorWidth*10,),
                  InkWell(
                    onTap: mapOnTap,
                    child: SvgPicture.asset(AppConstant.ic_direction,
                      height: MySize.scaleFactorHeight*42,
                      width: MySize.scaleFactorWidth*42,
                      fit: BoxFit.fill,
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
