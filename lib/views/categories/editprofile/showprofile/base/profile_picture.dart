import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
class ProfielPicture extends StatelessWidget {
  const ProfielPicture({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return      Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySize.size8),
        color: AppColors.backGroundColorFA,
        border: Border.all(color: AppColors.lineColorC8, width: 1),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: MySize.size16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(AppConstant.ic_black_edit),
                Container(
                  height: MySize.scaleFactorHeight * 120,
                  width: MySize.scaleFactorWidth * 120,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Stack(
                    children: [
                      Container(
                        height: MySize.scaleFactorHeight * 118,
                        width: MySize.scaleFactorWidth * 118,
                        decoration: BoxDecoration(
                          color: Color(0xffF1F0F0),
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppColors.lineColorE5, width: 1),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            AppConstant.ic_person_pic,
                            height: MySize.scaleFactorHeight * 60,
                            width: MySize.scaleFactorWidth * 60,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,

                        ///that container taking full space while i have set them a fix space check the issue
                        child: Container(
                          margin: EdgeInsets.only(top: MySize.size10,left: MySize.size20,right: MySize.size20),
                          padding: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor62,
                              borderRadius:
                              BorderRadius.circular(MySize.size12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppConstant.ic_camera,
                                // height: MySize.scaleFactorHeight * 13,
                                // width: MySize.scaleFactorWidth * 13,
                              ),
                              SizedBox(
                                width: MySize.scaleFactorWidth * 5,
                              ),
                              customTextMedium(
                                  title: "Edit",
                                  fontSize: MySize.size16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.whiteColorFF)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 5,
            ),
            customTextMedium(
                title: "Adnan Qureshi",
                fontSize: MySize.size30,
                fontWeight: FontWeight.w700,
                color: AppColors.blackColor00)
          ],
        ),
      ),
    );
  }
}
