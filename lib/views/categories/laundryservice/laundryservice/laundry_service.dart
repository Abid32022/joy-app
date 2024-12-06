import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../laundrycreateshipment1/laundry_create_shipment1.dart';



class LaundryService extends StatefulWidget {
  const LaundryService({super.key});

  @override
  State<LaundryService> createState() => _LaundryServiceState();
}

class _LaundryServiceState extends State<LaundryService> {
  PageController controller = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(onBackTap: (){
        Get.back();
      },
      ),
      backgroundColor: AppColors.backGroundColorFA,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MySize.size24,vertical: MySize.size18),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                // width: MySize.scaleFactorWidth * 377,
                height: MySize.scaleFactorHeight * 254,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size12),
                  color: Color(0xFFFFF4E5),
                ),
                child: Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: MySize.size30),
                      Container(
                        width: MySize.scaleFactorWidth * 95,
                        height: MySize.scaleFactorHeight * 31,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColorFF,
                            border: Border.all(color: AppColors.buttonPrimaryColor5B),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(
                                    MySize.scaleFactorHeight * 20),
                                bottomRight: Radius.circular(
                                    MySize.scaleFactorHeight * 20))),
                        child: Row(children: [
                          Container(
                            width: MySize.scaleFactorWidth * 43,
                            height: MySize.scaleFactorHeight * 31,
                            decoration: BoxDecoration(
                                color:AppColors.buttonPrimaryColor5B,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                        MySize.scaleFactorHeight * 20),
                                    bottomRight: Radius.circular(
                                        MySize.scaleFactorHeight * 20))),
                            child: Center(
                              child: SvgPicture.asset(AppConstant.ic_logo,
                                  height: MySize.scaleFactorHeight * 23,
                                  width: MySize.scaleFactorWidth * 17),
                            ),
                          ),
                          SizedBox(width: MySize.scaleFactorWidth * 6),
                          SvgPicture.asset(
                            AppConstant.ic_brand_logo,
                            height: MySize.scaleFactorHeight * 19.51,
                            width: MySize.scaleFactorWidth * 30,
                          ),
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MySize.size80, left: MySize.size18),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customTextMedium(
                                  title: "Win Umrah tickets",
                                  fontSize: MySize.size20,
                                  fontWeight: FontWeight.w700),
                              customTextLight(
                                  title: "Promocode: NiagaraFalls",
                                  fontSize: MySize.size16,
                                  fontWeight: FontWeight.w400),
                              Row(
                                children: [
                                  customTextMedium(
                                      title: "Place Order",
                                      fontSize: MySize.size17,
                                      fontWeight: FontWeight.w500),
                                  SizedBox(width: MySize.size6),
                                  SvgPicture.asset(
                                    AppConstant.ic_arrow_forword,
                                    height: MySize.scaleFactorHeight * 11,
                                    width: MySize.scaleFactorWidth * 16,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: MySize.size6,
                              ),
                              SmoothPageIndicator(
                                  controller: controller,
                                  count: 4,
        
                                  effect: WormEffect(
                                    spacing: 4,
                                    dotHeight: 4,
                                    dotWidth:10,
                                    activeDotColor: Color(0xffCF9671),
                                    dotColor: Color(0xffD8AA8B).withOpacity(0.2),
                                  ),
                                  onDotClicked: (index) {
                                    controller.animateToPage(
                                      index,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.easeInOut,
                                    );
                                  }),
                            ]),
                      ),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    width: MySize.scaleFactorHeight * 130,
                    child: PageView(
                      controller: controller,
                      onPageChanged: (index) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      children: [
                        Image(
                          image: AssetImage(
                            AppConstant.launchedpad_img,
                          ),
                          fit: BoxFit.fill,
                          height: MySize.scaleFactorHeight * 254,
                        ),
                        Image(
                          image: AssetImage(
                            AppConstant.launchedpad_img,
                          ),
                          fit: BoxFit.fill,
                          height: MySize.scaleFactorHeight * 254,
                        ),
                        Image(
                          image: AssetImage(
                            AppConstant.launchedpad_img,
                          ),
                          fit: BoxFit.fill,
                          height: MySize.scaleFactorHeight * 254,
                        ),
                        Image(
                          image: AssetImage(
                            AppConstant.launchedpad_img,
                          ),
                          fit: BoxFit.fill,
                          height: MySize.scaleFactorHeight * 254,
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              SizedBox(height: MySize.size20,),
              customTextMedium(
                  title: "How to get the package",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
              SizedBox(height: MySize.size15,),
              customDivider(
                width: double.infinity,
                color: AppColors.lineColorAD
              ),
              Padding(
                padding: EdgeInsets.only(left: MySize.size12,top: MySize.size14),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextMedium(
                          title: "Use our Instant services",
                          fontSize: MySize.size17,
                          fontWeight: FontWeight.w500),
                      SizedBox(height: MySize.size10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customTextRegular(
                              title: "Extra Charger for Instant ",
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primaryColor62),
                          customTextMedium(
                              title: "\$25",
                              fontSize: MySize.size17,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline),
                          customTextRegular(
                              title: " CAD",
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.currencyShortCodeColor60,
                              color: AppColors.currencyShortCodeColor60),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MySize.size14,),
              customButton(
                  ontap: (){
                    Get.to(LaundryCreateShipment1());
                  },
                  borderRadius: MySize.size8,
                  colors:Color(0xFFF6FAFB),
                  text: "Place New Order",
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  borderColor: AppColors.lineColorAD),

              SizedBox(height: MySize.size20,),
              customDivider(
                  width: double.infinity,
                  color: AppColors.lineColorAD
              ),
              Padding(
                padding: EdgeInsets.only(left: MySize.size12,top: MySize.size15),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextMedium(
                          title: "Use our pre-order services",
                          fontSize: MySize.size17,
                          fontWeight: FontWeight.w500),
                      SizedBox(height: MySize.size10,),
                      customTextRegular(
                          title:
                          "If you're not prepared package today, you have the option to pre-order the service",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.currencyShortCodeColor60),
                      SizedBox(height: MySize.size4,),
                      customTextMedium(
                        title: "25% on pre-order service",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor:AppColors.primaryColor62,
                        color: AppColors.primaryColor62,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MySize.size15,),
              customButton(
                  ontap: (){
                  },
                  borderRadius: MySize.size8,
                  colors:Color(0xFFF6FAFB),
                  text: "Schedule Order",
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                borderColor: AppColors.lineColorAD
                  ),
              SizedBox(height: MySize.size20,),
              customDivider(
                  width: double.infinity,
                  color: AppColors.lineColorAD
              ),
              SizedBox(height: MySize.size18),
              Container(
                padding: EdgeInsets.symmetric(vertical: MySize.size15,horizontal: MySize.size15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  border: Border.all(color: AppColors.lineColorAD),
                  color: AppColors.whiteColorFF
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  customTextRegular(
                      title: "Price",
                      fontSize: MySize.size16,
                      color: AppColors.blackColor00,
                      fontWeight: FontWeight.w400),
                ]),
              ),
            ]),
          ),
        ]),
      ),
    ));
  }
}
