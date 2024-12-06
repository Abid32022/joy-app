import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/custom_divider.dart';

import '../../../../../utils/appcolors.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_textwidget.dart';

class NearbyHospitals extends StatelessWidget {
  const NearbyHospitals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            customTextMedium(
                title: "Nearby Hospitals ",
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500),
            Spacer(),
            customTextMedium(
                title: "See All",
                fontSize: MySize.size14,
                fontWeight: FontWeight.w500,
                color: AppColors.primaryColor62),
          ],
        ),
        SizedBox(
          height: MySize.size14,
        ),
        SizedBox(
          height: MySize.scaleFactorHeight * 215,
          child: ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: MySize.size20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size10),
                  border: Border.all(color: AppColors.lineColorAD, width: 1),
                  color: AppColors.whiteColorFF),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Container(
                  height: MySize.scaleFactorHeight * 144,
                  child: Stack(
                    children: [
                      Image(
                        image: AssetImage(AppConstant.hospital2_img),
                        fit: BoxFit.fill,
                        width: MySize.scaleFactorWidth * 222,
                      ),
                      Positioned(
                        bottom: MySize.size8,
                        right: MySize.size5,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: MySize.size5),
                          width: MySize.scaleFactorWidth * 52,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(MySize.size30),
                              color: AppColors.whiteColorFF
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(AppConstant.ic_star_yellow,height: MySize.size12),
                                SizedBox(
                                  width: MySize.size6,
                                ),
                                customTextMedium(
                                  title: "4.5",
                                  fontSize: MySize.size12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: MySize.size15,top: MySize.size10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customTextMedium(
                            title: "Elevate Dental",
                            fontSize: MySize.size18,
                            fontWeight: FontWeight.w500),
                        SizedBox(height: MySize.size5),
                        Row(children: [
                          SvgPicture.asset(AppConstant.ic_class_time,height: MySize.size12,),
                          customTextRegular(title: "15 min",fontSize: MySize.size14,fontWeight: FontWeight.w400,color: AppColors.placeHolderColor4F),
                          customTextRegular(title: " . ",fontSize: MySize.size14,fontWeight: FontWeight.w400,color: AppColors.placeHolderColor4F),
                          customTextRegular(title: "15 km",fontSize: MySize.size14,fontWeight: FontWeight.w400,color: AppColors.placeHolderColor4F),

                        ],)
                      ]),
                ),
              ]),
            );
          },),
        ),
        SizedBox(height: MySize.size20),
        customDivider(
          color: AppColors.lineColorAD,
          width: double.infinity
        ),
      ],
    );
  }
}
