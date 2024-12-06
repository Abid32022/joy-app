import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/xp_parcelservice/xpshipmentaddress/xp_shipment_address.dart';

class XpCreateShipment extends StatefulWidget {
  const XpCreateShipment({super.key});

  @override
  State<XpCreateShipment> createState() => _XpCreateShipmentState();
}

class _XpCreateShipmentState extends State<XpCreateShipment> {
  int selectedIndex = 0;

  List availableBox = [
    ["Small box", " \$5", ' 3"', ' 6"'],
    ["Medium box", " \$50", ' 6"', ' 20"'],
    ["Large box", " \$250", ' 20"', ' 50"'],
  ];
  List availableBarrel = [
    ["Small barrel", " \$5", ' 3"', ' 6"'],
    ["Medium barrel", " \$50", ' 6"', ' 20"'],
    ["Large barrel", " \$250", ' 20"', ' 50"'],
  ];
  String box = "";
  String barrel = "";
  List condition = ["Breakable items", "No prohibite items"];
  bool breakItem = true;
  bool needBarrels = false;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MySize.size12),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MySize.size24,
              ),
              child: customTextMedium(
                  title: "Need Barrels & Other Items?",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MySize.size24),
              child: Container(
                margin: EdgeInsets.only(top: MySize.size12),
                padding: EdgeInsets.only(
                    left: MySize.size15,
                    right: MySize.size14,
                    top: MySize.size14,
                    bottom: MySize.size14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  border: Border.all(color: AppColors.lineColorAD),
                ),
                child: Row(
                  children: [
                    customTextRegular(
                        title: "Purchase barrels here, we deliver",
                        fontSize: MySize.size16,
                        color: Color(0xFF02091E),
                        fontWeight: FontWeight.w400),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          needBarrels = !needBarrels;
                        });
                      },
                      child: SvgPicture.asset(
                        AppConstant.ic_select,
                        height: MySize.size20,
                        color: needBarrels == true
                            ? AppColors.buttonPrimaryColor5B
                            : AppColors.lineColorAD,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: MySize.size12),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MySize.size24,
              ),
              child: customTextMedium(
                  title: "Box",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: MySize.size15),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: availableBox.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: MySize.size23),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      box = availableBox[index][1];
                      print("***********************${box}*****************************");
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: MySize.size14),
                      padding: EdgeInsets.all(MySize.size12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MySize.size8),
                          border: Border.all(color: AppColors.lineColorAD),
                          color: box == availableBox[index][1]
                              ? Color(0xffEFEFEF)
                              : AppColors.backGroundColorFA),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customTextRegular(
                              title: availableBox[index][0],
                              fontSize: MySize.size17,
                              fontWeight: FontWeight.w500),
                          Row(
                            children: [
                              customTextRegular(
                                  title: "Price ",
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xFF004E44),
                                  color: Color(0xFF004E44)),
                              customTextRegular(
                                  title: availableBox[index][1],
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline),
                              customTextRegular(
                                  title: " CAD",
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xff606060),
                                  color: Color(0xff606060)),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customTextRegular(
                                  title: availableBox[index][2],
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xFF004E44),
                                  color: Color(0xFF004E44)),
                              customTextRegular(
                                title: " . ",
                                fontSize: MySize.size14,
                                fontWeight: FontWeight.w400,
                              ),
                              customTextRegular(
                                  title: availableBox[index][3],
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xff606060),
                                  color: Color(0xff606060)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MySize.size24,
              ),
              child: customTextMedium(
                  title: "Barrel",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: MySize.size15),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: availableBarrel.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: MySize.size23),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      barrel = availableBarrel[index][1];
                      print("***********************${barrel}*****************************");
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: MySize.size14),
                      padding: EdgeInsets.all(MySize.size12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MySize.size8),
                          border: Border.all(color: AppColors.lineColorAD),
                          color: barrel == availableBarrel[index][1]
                              ? Color(0xffEFEFEF)
                              : AppColors.backGroundColorFA),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customTextRegular(
                              title: availableBarrel[index][0],
                              fontSize: MySize.size17,
                              fontWeight: FontWeight.w500),
                          Row(
                            children: [
                              customTextRegular(
                                  title: "Price ",
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xFF004E44),
                                  color: Color(0xFF004E44)),
                              customTextRegular(
                                  title: availableBarrel[index][1],
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline),
                              customTextRegular(
                                  title: " CAD",
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xff606060),
                                  color: Color(0xff606060)),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customTextRegular(
                                  title: availableBarrel[index][2],
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xFF004E44),
                                  color: Color(0xFF004E44)),
                              customTextRegular(
                                title: " . ",
                                fontSize: MySize.size14,
                                fontWeight: FontWeight.w400,
                              ),
                              customTextRegular(
                                  title: availableBarrel[index][3],
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xff606060),
                                  color: Color(0xff606060)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: MySize.size20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MySize.size24,
              ),
              child: Divider(
                color: AppColors.lineColorAD,
                height: 1,
              ),
            ),
            SizedBox(height: MySize.size20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MySize.size24,
              ),
              child: customTextMedium(
                  title: "Condition",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
            ),
            ListView.builder(
              itemCount: condition.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(left: MySize.size24, right: MySize.size24),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: MySize.size12),
                  padding: EdgeInsets.only(
                      left: MySize.size15,
                      right: MySize.size14,
                      top: MySize.size14,
                      bottom: MySize.size14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    border: Border.all(color: AppColors.lineColorAD),
                  ),
                  child: Row(
                    children: [
                      customTextRegular(
                          title: condition[index],
                          fontSize: MySize.size16,
                          color: Color(0xFF02091E),
                          fontWeight: FontWeight.w400),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: SvgPicture.asset(
                          AppConstant.ic_select,
                          height: MySize.size20,
                          color: selectedIndex == index
                              ? AppColors.buttonPrimaryColor5B
                              : AppColors.lineColorAD,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: MySize.size20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MySize.size24,
              ),
              child: Divider(
                height: 1,
                color: AppColors.lineColorAD,
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MySize.size24),
          child: Column(
            children: [
              Divider(
                thickness: 1,
                color: AppColors.lineColorAD,
              ),

              customButton(
                  ontap: () {
                    Get.to(XpShipmentAddress());
                  },
                  width: double.infinity,
                  height: MySize.scaleFactorHeight * 46,
                  text: "Continue",
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  fontColor: Colors.black,
                  borderRadius: MySize.size8,
                  borderColor: AppColors.lineColorC8,
                  colors: AppColors.lineColorC8),
            ],
          ),
        ),
      ),
    );
  }
}
