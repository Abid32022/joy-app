import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import '../../../../utils/appcolors.dart';
import '../../../base/custom_button.dart';
import '../summary/summary.dart';



class CreateShipment extends StatefulWidget {
  const CreateShipment({super.key});

  @override
  State<CreateShipment> createState() => _CreateShipmentState();
}

class _CreateShipmentState extends State<CreateShipment> {
 int selectedIndex = 0;

  List availableBox = [
    [Color(0xFFF6F6F6),"Small box"," \$5",' 3"',' 6"'],
    [Color(0xFFFFF4E5),"Medium box"," \$50",' 6"',' 20"'],
    [Color(0xFFF6F6F6),"Large box"," \$250",' 20"',' 50"'],
  ];
  List condition = [
  "Breakable items",
  "No prohibite items",];
      bool breakItem = true;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: Column(
        children: [
          // CustomAppBar(backArrow: (){
          //   Get.back();
          // },
          //   verifiedVisibile: false,
          // ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MySize.size12),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MySize.size24,),
                  child: customTextMedium(
                      title: "Available Box",
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
                      return Container(
                        margin: EdgeInsets.only(right: MySize.size14),
                        padding: EdgeInsets.all(MySize.size12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(MySize.size8),
                            border: Border.all(color: AppColors.lineColorAD),
                            color: availableBox[index][0]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customTextRegular(
                                title: availableBox[index][1],
                                fontSize: MySize.size17,
                                fontWeight: FontWeight.w500),
                            Row(
                              children: [
                                customTextRegular(
                                    title: "Price ",
                                    fontSize: MySize.size14,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xFF004E44) ,
                                    color: Color(0xFF004E44)),
                                customTextRegular(
                                    title: availableBox[index][2],
                                    fontSize: MySize.size14,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline
                                ),
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
                                    title: availableBox[index][3] ,
                                    fontSize: MySize.size14,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xFF004E44) ,
                                    color: Color(0xFF004E44)),
                                customTextRegular(
                                  title: " . ",
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400,
                                ),
                                customTextRegular(
                                    title: availableBox[index][4] ,
                                    fontSize: MySize.size14,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xff606060),
                                    color: Color(0xff606060)),
                              ],
                            ),

                          ],
                        ),
                      );
                    },),
                ),
                SizedBox(height: MySize.size20),
                 Padding(
                   padding: EdgeInsets.symmetric(
                     horizontal: MySize.size24,),
                   child: Divider(
                    color: AppColors.lineColorAD,
                    height: 1,
                                   ),
                 ),
                SizedBox(height: MySize.size20),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MySize.size24,),
                  child: customTextMedium(
                      title: "Condition",
                      fontSize: MySize.size20,
                      fontWeight: FontWeight.w500),
                ),
                ListView.builder(
                  itemCount: condition.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: MySize.size24,right:MySize.size24 ),
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
                        border: Border.all(color:AppColors.lineColorAD),
                      ),
                      child: Row(children: [
                        customTextRegular(
                            title: condition[index],
                            fontSize: MySize.size16,
                            color: Color(0xFF02091E),
                            fontWeight: FontWeight.w400),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                             selectedIndex = index;
                            });
                          },
                          child: SvgPicture.asset(AppConstant.ic_select,
                            height: MySize.size20,
                            color: selectedIndex == index  ? AppColors.buttonPrimaryColor5B : AppColors.lineColorAD,
                          ),
                        ),
                      ]),
                    );
                   },),
                SizedBox(height: MySize.size20),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MySize.size24,),
                  child: Divider(
                    height: 1,
                    color: AppColors.lineColorAD,
                  ),
                ),
              ]
          ),
          Spacer(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
            child: Divider(
              height: 1,
              color: AppColors.lineColorAD,
            ),
          ),
          SizedBox(height: MySize.size15),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(MySize.size14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(color: AppColors.lineColorAD),
                      color: AppColors.lineColorC8
                  ),
                  child: SvgPicture.asset(AppConstant.ic_arrow_back,
                    height: MySize.size15,
                  ),
                ),
                SizedBox(width: MySize.size12),
                Expanded(
                  child: customButton(
                    ontap: (){
                      Get.to(Summary());
                    },
                    height: MySize.scaleFactorHeight * 46,
                    text: "Next",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500,
                    fontColor: Colors.white,
                    borderRadius: MySize.size8,
                    borderColor: Color(0xFFD8AA8B),
                    colors: Color(0xFFD8AA8B),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MySize.size15),
        ],
      ),
    ));
  }
}