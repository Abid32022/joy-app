import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class RoomMate extends StatelessWidget {
  const RoomMate({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTextMedium(
            title: "Who Are Your Room Mate",
            fontSize: MySize.size20,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: MySize.size14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppConstant.room_mate1,
                      height: MySize.scaleFactorHeight * 140,
                      width:double.infinity,
                      fit: BoxFit.fill,
                    ),
                    customTextMedium(
                      title: 'O’Neil McLean',
                      fontSize: MySize.size18,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: MySize.scaleFactorHeight * 4),
                    Row(
                      children: [
                        SvgPicture.asset(AppConstant.ui),
                        SizedBox(width: MySize.scaleFactorWidth * 7),
                        customTextMedium(
                          title: "UI UX Designer",
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    customTextRegular(
                      title: 'XP Life Inc',
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppConstant.room_mate2,
                      height: MySize.scaleFactorHeight * 140,
                      width:double.infinity,
                      fit: BoxFit.fill,
                    ),
                    customTextMedium(
                      title: 'Ahmed Bilal',
                      fontSize: MySize.size18,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: MySize.scaleFactorHeight * 4),
                    Row(
                      children: [
                        SvgPicture.asset(AppConstant.ui),
                        SizedBox(width: MySize.scaleFactorWidth * 7),
                        customTextMedium(
                          title: "UI UX Designer",
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    customTextRegular(
                      title: 'XP Life Inc',
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MySize.size14,
          ),
          customButton(
            text: "Show all 5 mates",
            width: double.infinity,
            height: MySize.scaleFactorHeight * 46,
            fontSize: MySize.size16,
            borderRadius: MySize.size8,
            borderColor: AppColors.borderColorAD,
            fontColor: AppColors.blackColor00,
            colors: Color(0xffe5f5fc),
          ),
        ],
      ),
    );
  }
}
