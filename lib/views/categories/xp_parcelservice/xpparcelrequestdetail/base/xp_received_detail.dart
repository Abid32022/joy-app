import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_rich_text.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
class XpReceivedDetail extends StatelessWidget {
  const XpReceivedDetail({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return  Container(
      height: MySize.scaleFactorHeight * 118,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySize.size8),
          border: Border.all(
              color: AppColors.borderColorAD, width: 1),
          color: AppColors.backGroundColorFA),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MySize.scaleFactorHeight * 15,
                horizontal: MySize.scaleFactorWidth * 20),
            child: SvgPicture.asset(
              AppConstant.ic_qr_code,
              height: MySize.scaleFactorHeight * 69,
              width: MySize.scaleFactorWidth * 69,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: MySize.scaleFactorWidth * 5,
          ),
          VerticalDivider(
            width: 3,
            color: AppColors.lineColorC8,
          ),
          SizedBox(
            width: MySize.scaleFactorWidth * 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomRichText(text1: "Receiver Code :", text2: " 21a023", fontSize: MySize.size16),
              SizedBox(
                height: MySize.scaleFactorHeight * 15,
              ),
              CustomRichText(text1: "Name :", text2: " Adnan Qureshi", fontSize: MySize.size16),
              SizedBox(
                height: MySize.scaleFactorHeight * 15,
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  CustomRichText(text1: "Phone :", text2: " +4140304343", fontSize: MySize.size16),
                  SizedBox(
                    width: MySize.scaleFactorWidth * 20,
                  ),
                  SvgPicture.asset(
                    AppConstant.ic_phone_blue,
                    height: MySize.scaleFactorHeight * 30,
                    width: MySize.scaleFactorWidth * 30,
                  ),

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
