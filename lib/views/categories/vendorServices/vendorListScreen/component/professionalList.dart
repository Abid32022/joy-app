import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_rich_text.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProfessionalList extends StatelessWidget {
   ProfessionalList({super.key});

  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return    Stack(
      children: [
        Container(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: Colors.green,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MySize.scaleFactorHeight * 192,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: PageView(
                  controller: _pageController,
                  children: [
                    Image.asset(
                      AppConstant.rectangle_7073,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      AppConstant.rectangle_7073,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      AppConstant.rectangle_7073,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      AppConstant.rectangle_7073,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MySize.size7,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 9.0),
                    child: Container(
                      height: MySize.scaleFactorHeight * 77,
                      width: MySize.scaleFactorWidth * 55,
                      // color: Colors.yellow,
                      child: Image.asset(
                        AppConstant.rectangle_7075,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  // Add some space between the containers
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 9.5, right: 10),
                          child: Row(
                            children: [
                              customTextBold(
                                  title: "Adnan Qureshi",
                                  fontSize: MySize.size18,
                                  fontWeight: FontWeight.w500),
                              Spacer(),
                              SvgPicture.asset(
                                AppConstant.frame,
                                height: MySize.size26,
                                width: MySize.size19,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MySize.size2,
                        ),
                        customTextRegular(
                            title:
                            "Remodel, Fixture Replacement, Tile Installation, Plumbing Upgrades, Vanity Installation"),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 13),
                child: Row(
                  children: [
                    CustomRichText(
                      text1: "G-11 ",
                      text2: "Islamabad ",
                      text3: "CAD",
                      fontSize: MySize.size16,
                    ),
                    Spacer(),
                    customTextRegular(
                        title: "Landscaping",
                        fontSize: MySize.size16,
                        color: AppColors.parcelPrimaryColor5C)
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: MySize.scaleFactorHeight * 166,
          left: MediaQuery.of(context).size.width * 0.35,
          child: SmoothPageIndicator(
            onDotClicked: (value){
            },
            controller: _pageController,
            count: 4,
            effect: ScrollingDotsEffect(
                activeDotColor: AppColors.whiteColorFF,
                dotHeight: MySize.size10,
                dotWidth: MySize.size10
            ),
          ),
        )
      ],
    );
  }
}
