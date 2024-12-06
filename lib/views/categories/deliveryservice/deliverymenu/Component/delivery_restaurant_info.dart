import 'package:flutter/material.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class Delivery_restaurantInfo extends StatelessWidget {
  const Delivery_restaurantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: MySize.size18,horizontal: MySize.size24),
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.backGroundColorFA,
                borderRadius: BorderRadius.circular(MySize.size8),
                border: Border.all(
                  color: AppColors.lineColorC8,
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MySize.scaleFactorHeight * 13,
                        horizontal: MySize.scaleFactorWidth * 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customTextMedium(
                            title: "7250 Keele St,",
                            fontSize: MySize.size18,
                            fontWeight: FontWeight.w500),
                        SizedBox(
                          height: MySize.scaleFactorHeight * 5,
                        ),
                        customTextRegular(
                            title: "Vaughan, ON L4K 1Z8, Canada",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                  ),
                  Image.asset(
                    AppConstant.map_image,
                    width: double.infinity,
                    height: MySize.scaleFactorHeight * 143,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MySize.scaleFactorHeight * 13,
                        horizontal: MySize.scaleFactorWidth * 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customTextMedium(
                            title: "Allergies?",
                            fontSize: MySize.size18,
                            fontWeight: FontWeight.w500),
                        SizedBox(
                          height: MySize.scaleFactorHeight * 5,
                        ),
                        customTextRegular(
                            title: "Ask the restaurant about their ingredients and cooking methods.",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 10,
            ),
            Divider(
              thickness: 1,
              color: AppColors.lineColorC8,
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 10,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.backGroundColorFA,
                borderRadius: BorderRadius.circular(MySize.size8),
                border: Border.all(
                  color: AppColors.lineColorC8,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MySize.scaleFactorHeight * 13,
                    horizontal: MySize.scaleFactorWidth * 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextMedium(
                        title: "Open for Pickup Orders",
                        fontSize: MySize.size20,
                        fontWeight: FontWeight.w500),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "Monday",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "09:00 AM - 10:30 PM",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),

                      ],
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "Tuesday",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "09:00 AM - 10:30 PM",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),

                      ],
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "Wednesday",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "09:00 AM - 10:30 PM",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),

                      ],
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "Thursday",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "09:00 AM - 10:30 PM",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),

                      ],
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "Friday",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "09:00 AM - 10:30 PM",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),

                      ],
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "Saturday",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "09:00 AM - 10:30 PM",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),

                      ],
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "Sunday",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "09:00 AM - 10:30 PM",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),

                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 10,
            ),
            Divider(
              thickness: 1,
              color: AppColors.lineColorC8,
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 10,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.backGroundColorFA,
                borderRadius: BorderRadius.circular(MySize.size8),
                border: Border.all(
                  color: AppColors.lineColorC8,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MySize.scaleFactorHeight * 13,
                    horizontal: MySize.scaleFactorWidth * 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextMedium(
                        title: "Open for Delivery Orders",
                        fontSize: MySize.size20,
                        fontWeight: FontWeight.w500),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "Monday",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "09:00 AM - 10:30 PM",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),

                      ],
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "Tuesday",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "09:00 AM - 10:30 PM",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),

                      ],
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "Wednesday",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "09:00 AM - 10:30 PM",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),

                      ],
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "Thursday",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "09:00 AM - 10:30 PM",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),

                      ],
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "Friday",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "09:00 AM - 10:30 PM",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),

                      ],
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "Saturday",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "09:00 AM - 10:30 PM",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),

                      ],
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "Sunday",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "09:00 AM - 10:30 PM",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}