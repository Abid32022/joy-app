import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/appconstant.dart';
import '../shipmentaddress/shipment_address.dart';



class ParcelDelivery extends StatefulWidget {
  const ParcelDelivery({super.key});

  @override
  State<ParcelDelivery> createState() => _ParcelDeliveryState();
}

class _ParcelDeliveryState extends State<ParcelDelivery> {
  PageController controller = PageController(initialPage: 0);
  int _currentPage = 0;
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
            showBackButton: false,
          ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  // CustomAppBar(backArrow: (){
                  //   Get.back();
                  // },
                  //   backArrowVisible: false,
                  //   verifiedVisibile: false,
                  // ),
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
                                    border: Border.all(color: Color(0xffD8AA8B)),
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
                                        color: Color(0xffD8AA8B),
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
                                          title: "Win tickets",
                                          fontSize: MySize.size20,
                                          fontWeight: FontWeight.w500),
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
                          title: "Delivery Options",
                          fontSize: MySize.size20,
                          fontWeight: FontWeight.w500),
                      SizedBox(height: MySize.size15,),
                      Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: MySize.size12,top: MySize.size4),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customTextMedium(
                                  title: "Instant Service",
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
                                      color: Color(0xFF15616D)),
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
                                      color: Color(0xff606060)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: MySize.size14,),
                      customButton(
                        ontap: (){
                          Get.to(ShipmentAddress());
                        },
                          borderRadius: MySize.size8,
                        //  colors: Color(0xFFF6FAFB),
                          text: "Select",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500,
                         // borderColor: AppColors.lineColorC8
                           ),
                      SizedBox(height: MySize.size20,),
                      Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: MySize.size12,top: MySize.size10),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customTextMedium(
                                  title: "Instant Cargo Service",
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
                                      color: Color(0xFF15616D)),
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
                                      color: Color(0xff606060)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: MySize.size14,),
                      customButton(
                        ontap: (){
                          Get.to(ShipmentAddress());
                        },
                          borderRadius: MySize.size8,
                         // colors: Color(0xFFF6FAFB),
                          text: "Select",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500,
                          //borderColor: AppColors.lineColorC8
                      ),
                      SizedBox(height: MySize.size20,),
                      Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: MySize.size12,top: MySize.size15),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customTextMedium(
                                  title: "Scheduled Service",
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
                                color: Color(0xff15616D),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: MySize.size15,),
                      customButton(
                          ontap: (){
                            Get.to(ShipmentAddress());
                          },
                          borderRadius: MySize.size8,
                          //colors: Color(0xFFF6FAFB),
                          text: "Schedule Order",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500,
                       //   borderColor: AppColors.lineColorC8
                      ),
                      SizedBox(height: MySize.size20,),
                      Divider(
                        color: AppColors.lineColorAD,
                        height: 1,
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            ));
    }
}