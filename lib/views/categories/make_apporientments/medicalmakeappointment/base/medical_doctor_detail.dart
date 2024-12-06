import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
class MedicalMakeDoctorDetail extends StatelessWidget {
  const MedicalMakeDoctorDetail({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
      child: Column(
        children: [
          SizedBox(
            height: MySize.scaleFactorHeight * 15,
          ),
          Row(
            children: [
              Container(
                height: MySize.scaleFactorHeight * 120,
                width: MySize.scaleFactorWidth * 120,
                child: Stack(
                  children: [
                    Image.asset(
                      AppConstant.doctor1,
                      height: MySize.scaleFactorHeight * 110,
                      width: MySize.scaleFactorWidth * 110,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: SvgPicture.asset(
                        AppConstant.doctor_tick,
                        height: MySize.scaleFactorHeight * 22,
                        width: MySize.scaleFactorWidth * 22,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MySize.scaleFactorWidth * 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTextMedium(
                      title: "Dr. Shruti Kedia",
                      fontWeight: FontWeight.w500,
                      fontSize: MySize.size18),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 8,
                  ),
                  customTextRegular(
                      title: "Dentist",
                      fontWeight: FontWeight.w400,
                      fontSize: MySize.size16,
                      color: AppColors.titleColor50),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 8,
                  ),
                  customTextRegular(
                      title: "Islamabad, Pakistan",
                      fontWeight: FontWeight.w400,
                      fontSize: MySize.size16),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MySize.scaleFactorHeight * 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customTextRegular(
                  title: "Years Experience",
                  fontWeight: FontWeight.w400,
                  fontSize: MySize.size18,
                  color: AppColors.placeHolderColor4F),
              customTextMedium(
                title: "10+",
                fontWeight: FontWeight.w500,
                fontSize: MySize.size18,
              ),
            ],
          ),
          SizedBox(
            height: MySize.scaleFactorHeight * 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customTextRegular(
                  title: "Qualification",
                  fontWeight: FontWeight.w400,
                  fontSize: MySize.size18,
                  color: AppColors.placeHolderColor4F),
              customTextMedium(
                title: "MBBS, BDS",
                fontWeight: FontWeight.w500,
                fontSize: MySize.size18,
              ),
            ],
          ),
          SizedBox(
            height: MySize.scaleFactorHeight * 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customTextRegular(
                  title: "Ratting",
                  fontWeight: FontWeight.w400,
                  fontSize: MySize.size18,
                  color: AppColors.placeHolderColor4F),
              Row(
                children: [
                  SvgPicture.asset(
                    AppConstant.ic_star_yellow,
                    height: MySize.scaleFactorHeight * 20,
                    width: MySize.scaleFactorWidth * 20,
                  ),
                  SizedBox(
                    width: MySize.scaleFactorWidth * 10,
                  ),
                  SvgPicture.asset(
                    AppConstant.ic_star_yellow,
                    height: MySize.scaleFactorHeight * 20,
                    width: MySize.scaleFactorWidth * 20,
                  ),
                  SizedBox(
                    width: MySize.scaleFactorWidth * 10,
                  ),
                  SvgPicture.asset(
                    AppConstant.ic_star_yellow,
                    height: MySize.scaleFactorHeight * 20,
                    width: MySize.scaleFactorWidth * 20,
                  ),
                  SizedBox(
                    width: MySize.scaleFactorWidth * 10,
                  ),
                  SvgPicture.asset(
                    AppConstant.ic_star_yellow,
                    height: MySize.scaleFactorHeight * 20,
                    width: MySize.scaleFactorWidth * 20,
                  ),
                  SizedBox(
                    width: MySize.scaleFactorWidth * 10,
                  ),
                  SvgPicture.asset(
                    AppConstant.ic_star_yellow,
                    height: MySize.scaleFactorHeight * 20,
                    width: MySize.scaleFactorWidth * 20,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MySize.scaleFactorHeight * 15,
          ),
          Divider(
            thickness: 1,
            color: AppColors.lineColorC8,
          ),
        ],
      ),
    );
  }
}
