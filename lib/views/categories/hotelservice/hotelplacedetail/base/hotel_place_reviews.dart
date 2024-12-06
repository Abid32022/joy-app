import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
class HotelPlaceReviews extends StatelessWidget {
  const HotelPlaceReviews({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MySize.scaleFactorWidth * 24),
          child: Row(
            children: [
              SvgPicture.asset(
                AppConstant.star,
                height: MySize.size20,
                width: MySize.size20,
                color: AppColors.blackColor00,
              ),
              SizedBox(
                width: MySize.size10,
              ),
              customTextMedium(
                  title: "4.5 (89 reviews)",
                  fontSize: MySize.size18,
                  fontWeight: FontWeight.w500),
            ],
          ),
        ),
        SizedBox(
          height: MySize.size14,
        ),
        Container(
          height: MySize.scaleFactorHeight * 210,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: MySize.scaleFactorWidth * 24),
            itemBuilder: (context, index) {
              return Padding(
                padding:
                EdgeInsets.only(right: MySize.scaleFactorWidth * 10),
                child: Container(
                  width: MySize.scaleFactorWidth * 313,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.borderColorAD, width: 1),
                      borderRadius: BorderRadius.circular(MySize.size8),
                      color: AppColors.backGroundColorFA),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MySize.scaleFactorWidth * 20,
                        vertical: MySize.scaleFactorHeight * 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customTextRegular(
                            title:
                            "Student with dependent visa ratio kemon? Father of applicant can be a Sponsor without any issue? How much monthly income we have to...",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),
                        SizedBox(
                          height: MySize.size14,
                        ),
                        ListTile(
                            leading: Image.asset(
                              AppConstant.dpp2,
                              height: MySize.scaleFactorHeight * 52,
                              width: MySize.scaleFactorWidth * 52,
                              fit: BoxFit.fill,
                            ),
                            title: customTextMedium(
                                title: "Adnan",
                                fontSize: MySize.size16,
                                fontWeight: FontWeight.w500),
                            subtitle: customTextRegular(
                                title: "1 week ago",
                                fontSize: MySize.size16,
                                color: AppColors.lineColorC8,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: MySize.size14,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MySize.scaleFactorWidth * 24,
          ),
          child: customButton(
            text: "Show all 89 reviews",
            width: double.infinity,
            height: MySize.scaleFactorHeight * 46,
            fontSize: MySize.size16,
            borderRadius: MySize.size8,
            borderColor: AppColors.borderColorAD,
            fontColor: AppColors.blackColor00,
            colors: Color(0xffe5f5fc),
          ),
        ),
        SizedBox(
          height: MySize.size10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MySize.scaleFactorWidth * 24,
          ),
          child: Divider(
            thickness: 1,
            color: AppColors.lineColorC8,
          ),
        ),
      ],
    );
  }
}
