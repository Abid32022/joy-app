import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
class HotelPlaceType extends StatelessWidget {
  const HotelPlaceType({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return   Material(
      elevation: 2,
      color: AppColors.backGroundColorFA,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.size24),
        child: Column(
          children: [
            SizedBox(
              height: MySize.scaleFactorHeight * 23,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MySize.scaleFactorWidth * 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size12),
                    color: AppColors.continearBackground,
                    border: Border.all(
                        color: AppColors.borderColorsDC, width: 1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MySize.size14,
                        right: MySize.size12,
                        top: MySize.size5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppConstant.ic_search,
                          height: MySize.size22,
                          width: MySize.size22,
                        ),
                        SizedBox(
                          width: MySize.size22,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customTextMedium(
                                title: 'Want to update?',
                                fontSize: MySize.size16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.blackColor00),
                            Container(
                              width: MySize.scaleFactorWidth * 190,
                              height: 35,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText:
                                    "You currently selected Islamabad",
                                    hintStyle: TextStyle(
                                        fontSize: MySize.size16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.blackColor00,
                                        fontFamily: "EnnVisions"),
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SvgPicture.asset(
                  AppConstant.ic_listing_menu,
                  height: MySize.size40,
                  width: MySize.size40,
                ),
              ],
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SvgPicture.asset(
                      AppConstant.ic_house,
                      height: MySize.scaleFactorHeight * 33,
                      width: MySize.scaleFactorWidth * 33,
                    ),
                    customTextMedium(
                        title: 'House',
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.houseSelectedIcon

                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      AppConstant.ic_flat,
                      height: MySize.scaleFactorHeight * 33,
                      width: MySize.scaleFactorWidth * 33,
                    ),
                    customTextMedium(
                        title: 'Flat',
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.lineColor60

                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      AppConstant.ic_lower,
                      height: MySize.scaleFactorHeight * 33,
                      width: MySize.scaleFactorWidth * 33,
                    ),
                    customTextMedium(
                        title: 'Lower',
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.lineColor60

                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      AppConstant.ic_upper,
                      height: MySize.scaleFactorHeight * 33,
                      width: MySize.scaleFactorWidth * 33,
                    ),
                    customTextMedium(
                        title: 'Upper',
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.lineColor60

                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      AppConstant.ic_room,
                      height: MySize.scaleFactorHeight * 33,
                      width: MySize.scaleFactorWidth * 33,
                    ),
                    customTextMedium(
                        title: 'Room',
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.lineColor60

                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      AppConstant.ic_farm_house,
                      height: MySize.scaleFactorHeight * 33,
                      width: MySize.scaleFactorWidth * 33,
                    ),
                    customTextMedium(
                        title: 'Farm House',
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.lineColor60

                    ),
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
    );
  }
}
