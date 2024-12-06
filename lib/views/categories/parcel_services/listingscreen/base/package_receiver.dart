import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_rich_text.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
class PackageReceiver extends StatelessWidget {
  const PackageReceiver({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Container(
    //  height: MySize.scaleFactorHeight * 370,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySize.size8),
          border: Border.all(
              color: AppColors.borderColorAD, width: 1),
          color: AppColors.backGroundColorFA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MySize.scaleFactorHeight * 43,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(MySize.size8),
                    topRight: Radius.circular(MySize.size8)),
                color: AppColors.lineColorE4),
            child: Center(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: MySize.size10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRichText(text1: "Tracking Id:", text2: " 1213", fontSize: MySize.size16),
                    Row(
                      children: [
                        customButton(
                          height: MySize.scaleFactorHeight * 21,
                          width: MySize.scaleFactorWidth * 85,
                          colors: AppColors.pendingWaitingColor36,
                          borderRadius: MySize.size3,
                          text: 'Received',
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w500,
                          fontColor: AppColors.backGroundColorFA,
                        ),
                        SizedBox(width: MySize.size8,),
                        customButton(
                          height: MySize.scaleFactorHeight * 21,
                          width: MySize.scaleFactorWidth * 61,
                          colors: AppColors.lineColorC8,
                          borderRadius: MySize.size3,
                          text: 'Cash',
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w600,
                          fontColor: AppColors.placeHolderColor4F,
                        ),


                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: MySize.size14,horizontal: MySize.size12),
            child: Column(
              children: [
                Container(
                  //height: MySize.scaleFactorWidth * 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size32),
                    color: AppColors.parcelPrimaryColor5C,
                  ),
                  child: Center(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MySize.size5,vertical:MySize.size5 ),
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
                            customTextRegular(
                                title: "Andrea William",
                                fontWeight: FontWeight.w500,
                                fontSize: MySize.size16,
                                color: AppColors.backGroundColorFA
                            ),
                            customTextRegular(
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
                              SvgPicture.asset(AppConstant.ic_direction,
                                height: MySize.scaleFactorHeight*42,
                                width: MySize.scaleFactorWidth*42,
                                fit: BoxFit.fill,
                              ),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MySize.size14,
                ),
                customTextMedium(
                    title: "PickUp : 7250 Keele St, Vaughan, ON L4K 1Z8, Canada",
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size14,
                    color: AppColors.textColor66
                ),
                SizedBox(
                  height: MySize.size14,
                ),
                customTextMedium(
                    title: "Drop: 7250 Keele St, Vaughan, ON L4K 1Z8, Canada",
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size14,
                    color: AppColors.errorFailureColor26
                ),
                SizedBox(
                  height: MySize.size14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRichText(text1: "Approx. Weight:", text2: " 70 to 80 kg", fontSize: MySize.size14),
                    CustomRichText(text1: "Total:", text2: " \$ 200.40", fontSize: MySize.size14),
                  ],
                ),
                SizedBox(
                  height: MySize.size14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRichText(text1: "Dimension :", text2: " 20L . 6H . 50W", fontSize: MySize.size14),
                    CustomRichText(text1: "Package:", text2: " 7 pcs", fontSize: MySize.size14),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: MySize.scaleFactorHeight * 43,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(MySize.size8),
                    bottomRight: Radius.circular(MySize.size8)),
                color: AppColors.informationNeutralColorF2),
            child: Center(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: MySize.size10),
                child: CustomRichText(text1: "Pick Up:", text2: " Sunday, 23 Nov, 2020 1:30pm", fontSize: MySize.size14,color: AppColors.backGroundColorFA,),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
