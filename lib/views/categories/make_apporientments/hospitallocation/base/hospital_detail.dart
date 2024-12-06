import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class Hospital_detail extends StatelessWidget {
  const Hospital_detail({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(MySize.size8)),
          child: Image.asset(
            AppConstant.hospital,
            width: double.infinity,
            height: MySize.scaleFactorHeight * 132,
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.scaleFactorHeight * 10,
              ),
              customTextMedium(
                  title: "Elevate Dental",
                  fontWeight: FontWeight.w500,
                  fontSize: MySize.size16),
              SizedBox(
                height: MySize.scaleFactorHeight * 10,
              ),
              customTextRegular(
                  title: "F-10, Markaz, Islamabad, Pakistan",
                  fontWeight: FontWeight.w400,
                  fontSize: MySize.size14),
              Row(
                children: [
                  SvgPicture.asset(
                    AppConstant.ic_star_yellow,
                    height: MySize.scaleFactorHeight * 13,
                    width: MySize.scaleFactorWidth * 13,
                  ),
                  SizedBox(
                    width: MySize.scaleFactorWidth * 10,
                  ),
                  SvgPicture.asset(
                    AppConstant.ic_star_yellow,
                    height: MySize.scaleFactorHeight * 13,
                    width: MySize.scaleFactorWidth * 13,
                  ),
                  SizedBox(
                    width: MySize.scaleFactorWidth * 10,
                  ),
                  SvgPicture.asset(
                    AppConstant.ic_star_yellow,
                    height: MySize.scaleFactorHeight * 13,
                    width: MySize.scaleFactorWidth * 13,
                  ),
                  SizedBox(
                    width: MySize.scaleFactorWidth * 10,
                  ),
                  SvgPicture.asset(
                    AppConstant.ic_star_yellow,
                    height: MySize.scaleFactorHeight * 13,
                    width: MySize.scaleFactorWidth * 13,
                  ),
                  SizedBox(
                    width: MySize.scaleFactorWidth * 10,
                  ),
                  SvgPicture.asset(
                    AppConstant.ic_star_yellow,
                    height: MySize.scaleFactorHeight * 13,
                    width: MySize.scaleFactorWidth * 13,
                  ),
                  SizedBox(
                    width: MySize.scaleFactorWidth * 10,
                  ),
                  customTextMedium(
                      title: "4.5",
                      fontWeight: FontWeight.w500,
                      fontSize: MySize.size14),
                  SizedBox(
                    width: MySize.scaleFactorWidth * 10,
                  ),
                  customTextRegular(
                      title: "(49 Reviews)",
                      fontWeight: FontWeight.w400,
                      fontSize: MySize.size14),
                ],
              ),
              SizedBox(
                height: MySize.scaleFactorHeight * 10,
              ),
              Divider(thickness: 1,color: AppColors.lineColorC8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppConstant.ic_walking_man,
                        height: MySize.scaleFactorHeight * 20,
                        width: MySize.scaleFactorWidth * 13,
                      ),
                      SizedBox(
                        width: MySize.scaleFactorWidth * 10,
                      ),
                      customTextRegular(
                          title: "3.5 km . 50min",
                          fontWeight: FontWeight.w400,
                          fontSize: MySize.size14),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppConstant.ic_teeth,
                        height: MySize.scaleFactorHeight * 20,
                        width: MySize.scaleFactorWidth * 13,
                      ),
                      SizedBox(
                        width: MySize.scaleFactorWidth * 10,
                      ),
                      customTextRegular(
                          title: "Dentist",
                          fontWeight: FontWeight.w400,
                          fontSize: MySize.size14),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MySize.scaleFactorHeight * 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
