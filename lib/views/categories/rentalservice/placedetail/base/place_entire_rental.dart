import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
class PlaceEntireRental extends StatelessWidget {
  final String title;
  final String propertyDetails;
  final String imageAsset;
  final String profileImage;
  final String name;
  final String role;
  final String reviews;
  final String listing;
  final String experience;
   PlaceEntireRental({super.key,
     required this.title,
    required this.propertyDetails,
    required this.imageAsset,
    required this.profileImage,
    required this.name,
    required this.role,
    required this.reviews,
    required this.listing,
    required this.experience,
   });

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTextMedium(
            title: title,
            fontSize: MySize.size20,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: MySize.scaleFactorHeight * 4),
          customTextRegular(
            title: propertyDetails,
            fontSize: MySize.size16,
            fontWeight: FontWeight.w500,
          ),
          Divider(
            thickness: 1,
            color: AppColors.lineColorC8,
          ),
          Container(
            height: MySize.scaleFactorHeight * 267,
            width: double.infinity,
            child: Stack(
              children: [
                SvgPicture.asset(
                  imageAsset,
                  height: MySize.scaleFactorHeight * 265,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MySize.scaleFactorWidth * 50,
                    vertical: MySize.scaleFactorHeight * 30,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: MySize.scaleFactorHeight * 91,
                            width: MySize.scaleFactorWidth * 91,
                            child: Stack(
                              children: [
                                Image.asset(
                                  profileImage,
                                  height: MySize.scaleFactorHeight * 91,
                                  width: MySize.scaleFactorWidth * 91,
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 5,
                                  child: SvgPicture.asset(AppConstant.defend),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: MySize.scaleFactorHeight * 12),
                          customTextMedium(
                            title: name,
                            fontSize: MySize.size30,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: MySize.scaleFactorHeight * 12),
                          Row(
                            children: [
                              SvgPicture.asset(AppConstant.ui),
                              SizedBox(width: MySize.scaleFactorWidth * 7),
                              customTextMedium(
                                title: role,
                                fontSize: MySize.size10,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: MySize.scaleFactorWidth * 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customTextMedium(
                            title: reviews,
                            fontSize: MySize.size20,
                            fontWeight: FontWeight.w500,
                          ),
                          customTextRegular(
                            title: "Reviews",
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400,
                          ),
                          Container(
                            width: MySize.scaleFactorWidth * 88,
                            child: Divider(
                              thickness: 1,
                              color: AppColors.lineColorC8,
                            ),
                          ),
                          customTextMedium(
                            title: listing,
                            fontSize: MySize.size20,
                            fontWeight: FontWeight.w500,
                          ),
                          customTextRegular(
                            title: "Listing",
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400,
                          ),
                          Container(
                            width: MySize.scaleFactorWidth * 88,
                            child: Divider(
                              thickness: 1,
                              color: AppColors.lineColorC8,
                            ),
                          ),
                          customTextMedium(
                            title: experience,
                            fontSize: MySize.size20,
                            fontWeight: FontWeight.w500,
                          ),
                          customTextRegular(
                            title: "Experience",
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400,
                          ),
                          Container(
                            width: MySize.scaleFactorWidth * 88,
                            child: Divider(
                              thickness: 1,
                              color: AppColors.lineColorC8,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
