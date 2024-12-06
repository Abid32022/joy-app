import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/xp_parcelservice/xpcreateshipment/xp_create_shipment.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class XpParcelDelivery extends StatefulWidget {
  const XpParcelDelivery({super.key});

  @override
  State<XpParcelDelivery> createState() => _XpParcelDeliveryState();
}

class _XpParcelDeliveryState extends State<XpParcelDelivery> {
  List cargoList = [
    [AppConstant.small_parcel, "SMALL PARCEL"],
    [AppConstant.large_cargo, "LARGE CARGO"],
  ];
  PageController controller = PageController(initialPage: 0);
  int _currentPage = 0;
  String selectedParcel = '';
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MySize.scaleFactorHeight * 20,
            ),
            customTextMedium(
                title: "Delivery Options",
                fontSize: MySize.size20,
                fontWeight: FontWeight.w500),
            SizedBox(
              height: MySize.scaleFactorHeight * 10,
            ),
            Divider(
              thickness: 1,
              color: AppColors.lineColorC8,
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 20,
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: MySize.scaleFactorWidth * 20),
              itemCount: cargoList.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    selectedParcel = cargoList[index][1];
                    Get.to(XpCreateShipment());
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.whiteColorFF,
                        border: Border.all(
                            color: selectedParcel == cargoList[index][1]
                                ? Color(0xff1877F2)
                                : AppColors.lineColorC8,
                            width: 1),
                        borderRadius: BorderRadius.circular(MySize.size8)),
                    padding: EdgeInsets.symmetric(
                        vertical: MySize.scaleFactorHeight * 15,
                        horizontal: MySize.scaleFactorWidth * 20),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          cargoList[index][0],
                          height: MySize.scaleFactorHeight * 78,
                          width: MySize.scaleFactorWidth * 78,
                        ),
                        SizedBox(
                          height: MySize.scaleFactorHeight * 10,
                        ),
                        customTextRegular(
                            title: cargoList[index][1],
                            fontSize: MySize.size16,
                            color: selectedParcel == cargoList[index][1]
                                ? Color(0xff1877F2)
                                : AppColors.blackColor00,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                  ),
                );
              },
            ),
            Spacer(),
            customTextRegular(
              title: "ADVERTISEMENT",
              fontSize: MySize.size12,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 10,
            ),
            Container(
              // width: MySize.scaleFactorWidth * 377,
              height: MySize.scaleFactorHeight * 254,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(MySize.size12),
                color:AppColors.backGroundColorFA,
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
                          border: Border.all(color:AppColors.lineColorC8),
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
                              color: AppColors.informationNeutralColorF2,
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
                                  dotWidth: 10,
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
            Divider(
              thickness: 1,
              color: AppColors.lineColorC8,
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
