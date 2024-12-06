import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/sell&rent/propertydetail/property_detail.dart';
import 'package:joyapp/views/categories/sell&rent/propertylisting/base/property_type.dart';
import 'package:joyapp/views/categories/sell&rent/propertymap1/property_map_1.dart';
import 'package:joyapp/views/categories/sell&rent/propertymap2/property_map_2.dart';

class ProfertyListing extends StatefulWidget {
  const ProfertyListing({Key? key}) : super(key: key);

  @override
  State<ProfertyListing> createState() => _ProfertyListingState();
}

class _ProfertyListingState extends State<ProfertyListing> {
  PageController? controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          onBackTap: () {
            Get.back();
          },
          verifiedVisibile: false,
        ),
        backgroundColor: AppColors.backGroundColorFA,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CustomAppBar(
              //   backArrow: () {
              //     Get.back();
              //   },
              //   verifiedVisibile: false,
              // ),
              PropertyType(),
            Container(
              child: ListView.builder(
                itemCount: 2,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                           shrinkWrap: true,
                itemBuilder: (context, index) {
                return     Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.size24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MySize.size30,
                      ),
                      InkWell(
                        onTap: (){
                          Get.to(PropertyDetail());
                        },
                        child: Container(
                          height: MySize.scaleFactorHeight * 384,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(MySize.size16),
                                child: PageView(
                                  scrollDirection: Axis.horizontal,
                                  controller: controller,
                                  pageSnapping: true,
                                  onPageChanged: (value) {
                                    setState(() {
                                      currentIndex = value;
                                    });
                                  },
                                  children: [
                                    Image.asset(
                                      AppConstant.property_image,
                                      height: MySize.scaleFactorHeight * 384,
                                      width: double.infinity,
                                      fit: BoxFit.fill,
                                    ),
                                    Image.asset(
                                      AppConstant.house2,
                                      height: MySize.scaleFactorHeight * 384,
                                      width: double.infinity,
                                      fit: BoxFit.fill,
                                    ),
                                    Image.asset(
                                      AppConstant.house3,
                                      height: MySize.scaleFactorHeight * 384,
                                      width: double.infinity,
                                      fit: BoxFit.fill,
                                    ),
                                    Image.asset(
                                      AppConstant.house4,
                                      height: MySize.scaleFactorHeight * 384,
                                      width: double.infinity,
                                      fit: BoxFit.fill,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 0,
                                left: 0,
                                bottom: 10,
                                child: Align(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      currentIndex == 0
                                          ? Icon(Icons.circle,
                                          color: AppColors.backGroundColorFA,
                                          size: MySize.size10)
                                          : Icon(Icons.circle_outlined,
                                          color: AppColors.backGroundColorFA,
                                          size: MySize.size10),
                                      SizedBox(width: MySize.size5),
                                      currentIndex == 1
                                          ? Icon(Icons.circle,
                                          color: AppColors.backGroundColorFA,
                                          size: MySize.size10)
                                          : Icon(Icons.circle_outlined,
                                          color: AppColors.backGroundColorFA,
                                          size: MySize.size10),
                                      SizedBox(width: MySize.size5),
                                      currentIndex == 2
                                          ? Icon(Icons.circle,
                                          color: AppColors.backGroundColorFA,
                                          size: MySize.size10)
                                          : Icon(Icons.circle_outlined,
                                          color: AppColors.backGroundColorFA,
                                          size: MySize.size10),
                                      SizedBox(width: MySize.size5),
                                      currentIndex == 3
                                          ? Icon(Icons.circle,
                                          color: AppColors.backGroundColorFA,
                                          size: MySize.size10)
                                          : Icon(Icons.circle_outlined,
                                          color: AppColors.backGroundColorFA,
                                          size: MySize.size10),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                left: 10,
                                child: Container(
                                  height: MySize.scaleFactorHeight * 78,
                                  width: MySize.scaleFactorWidth * 68,
                                  child: Stack(
                                    children: [
                                      SvgPicture.asset(
                                        AppConstant.ic_tablet,
                                        fit: BoxFit.fill,
                                        height: MySize.scaleFactorHeight * 78,
                                        width: MySize.scaleFactorWidth * 68,
                                      ),
                                      Center(
                                        child: Image.asset(
                                          AppConstant.dpp,
                                          height: MySize.scaleFactorHeight * 44,
                                          width: MySize.scaleFactorWidth * 44,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MySize.size14,
                      ),
                      customTextMedium(
                          title: "Charming Guest House for Sale",
                          fontSize: MySize.size18,
                          fontWeight: FontWeight.w500),
                      SizedBox(
                        height: MySize.size8,
                      ),
                      customTextRegular(
                          title:
                          "Profitable Guest House for Sale: A Turnkey Investment in the Hospitality Industry. Experience ownership of this thriving establishment.",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400),
                      SizedBox(
                        height: MySize.size10,
                      ),
                      Row(
                        children: [
                          customTextRegular(
                              title: 'Sale',
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff004E44),
                              decoration: TextDecoration.underline
                          ),
                          customTextMedium(
                              title: '\$84,900,000',
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackColor00,
                              decoration: TextDecoration.underline
                          ),
                          customTextRegular(
                              title: ' CAD',
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.lineColorAD,
                              decoration: TextDecoration.underline
                          ),
                          Spacer(),
                          customTextRegular(
                            title: 'Guest House',
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lineColorAD,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MySize.size10,
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.lineColorAD,
                      ),
                    ],
                  ),
                );
              },),
            ),
              SizedBox(
                height: MySize.size10,
              ),
              Center(
                child: customButton(
                  ontap: (){
                    Get.to(PropertyMap1());
                  },
                  text: 'Map View',
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w400,
                  height: MySize.scaleFactorHeight * 35,
                  width: MySize.scaleFactorWidth * 102,
                 colors: AppColors.titleColor29,
                  fontColor: AppColors.backGroundColorFA,
                  borderRadius: MySize.size14
                ),
              ),
              SizedBox(
                height: MySize.size10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
