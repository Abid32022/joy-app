import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/auth_bottomsheet.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';
import 'package:joyapp/views/categories/deliveryservice/deliveryproductdetails/dilvery_product_details.dart';

import '../../../../utils/mysize.dart';
import '../../../base/custom_app_bar.dart';
import '../deliveryrestaurantItems/delivery_restaurant_Items.dart';
import 'Component/delivery_restaurant_info.dart';
import 'Component/delivery_reuse_column.dart';
import 'Component/delivery_reuse_container.dart';
import 'Component/deliverymenu_reuse_row.dart';

class DeliveryMenu extends StatefulWidget {
  const DeliveryMenu({super.key});

  @override
  State<DeliveryMenu> createState() => _DeliveryMenuState();
}

class _DeliveryMenuState extends State<DeliveryMenu> {

  int containerIndex = 0;
  int currentIndex = 0;
  List screenIndex = [
    DeliveryProductDetails(),
    Text("data"),
    Text("data"),
  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar:CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MySize.size24,vertical: MySize.size20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            customTextMedium(
                title: "McDonald's (Keele & Finch)",
                fontSize: MySize.size28,
                fontWeight: FontWeight.w700),
            SizedBox(
              height: MySize.size6,
            ),
            DeliveryMenuReuseRow(
              Image1: AppConstant.star,
              text1: "4.5",
              Image2: AppConstant.ic_truck,
              text2: "\$ 4.5 CAD",
            ),
            SizedBox(
              height: MySize.size6,
            ),
            Row(
              children: [
                customTextRegular(
                    title: "\$\$ .",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
                customTextRegular(
                    title: " BarBQ .",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
                customTextRegular(
                    title: " DesiFood ",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
              ],
            ),
            SizedBox(
              height: MySize.size10,
            ),
            Container(
              child: Stack(clipBehavior: Clip.none, children: [
                Image(
                    image: AssetImage(AppConstant.burrger),
                    width: double.infinity,
                    height: MySize.scaleFactorHeight * 205),
                Positioned(
                  top: MySize.size20,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: MySize.size10, vertical: MySize.size8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                            MySize.size6,
                          ),
                          bottomRight: Radius.circular(MySize.size6)),
                      color: Color(0xFF34C759),
                    ),
                    child: customTextMedium(
                        title: "BUY 1, GET 1 FREE",
                        fontSize: MySize.size15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.whiteColorFF),
                  ),
                ),
                Positioned(
                  bottom: MySize.scaleFactorHeight * 175,
                  left: MySize.scaleFactorWidth * 240,
                  child:Container(
                      padding: EdgeInsets.symmetric(
                          vertical: MySize.size2,
                          horizontal: MySize.size25),
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(MySize.size80),
                          border:
                          Border.all(color: AppColors.lineColorAD,width: 0.2),
                          color: AppColors.whiteColorFF),
                      child:Column(children: [
                        customTextMedium(
                            title: "15-25",
                            fontSize: MySize.size18,
                            fontWeight: FontWeight.w500),
                        customTextRegular(
                            title: "min",
                            fontSize: MySize.size18,
                            fontWeight: FontWeight.w500),
                      ],)
                  ),
                ),
              ]),
            ),
            SizedBox(height: MySize.size15),
            GestureDetector(
              onTap: (){
               showModalBottomSheet(
                 isScrollControlled: true, // Set this property to true
                 context: context, builder: (context) {
                 return Container(
                     height:MediaQuery.of(context).size.height*0.7,

                     child: Delivery_restaurantInfo());
               },);
              },
              child: Row(
                children: [
                  customTextMedium(
                      title: "Allergies and restaurant info",
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w500),
                  Spacer(),
                  SvgPicture.asset(AppConstant.ic_forward),
                ],
              ),
            ),
                SizedBox(height: MySize.size15),
            GestureDetector(
              onTap: (){
                Get.to(DeliveryRestaurantItems());
              },
              child: customTextMedium(
                  title: "Phone: +1 (615) 397 8384",
                  fontSize: MySize.size18,
                  fontWeight: FontWeight.w500),
            ),
                SizedBox(height: MySize.size12),
            Row(
              children: [
                Expanded(

                  child: customTextField(
                    isprefixImage: false,
                    prefixImage: Padding(
                      padding: EdgeInsets.all(MySize.size18),
                      child: SvgPicture.asset(
                        AppConstant.ic_search,
                      ),
                    ),
                    hintText: "Search menu & dish",
                    hinttextcolor: AppColors.subTitleColor37,
                    filled: true,
                    fillcolor: Color(0xFFECF6FA),
                    bordercolor: Color(0xFFC0D4DC),
                  ),
                ),
                SizedBox(width: MySize.size14),
                Container(
                  padding: EdgeInsets.all(MySize.size10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(color: Color(0xffC0D4DC)),
                      color: Color(0xffECF6FA)),
                  child: SvgPicture.asset(AppConstant.ic_setting,
                      height: MySize.size35),
                ),
              ],
            ),
                SizedBox(height: MySize.size30),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(MySize.size7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      color: AppColors.lineColorE5),
                  child: Row(children: [
                    GestureDetector(
                      onTap: (){
                         setState(() {
                          containerIndex = 0;
                         });
                      },
                      child: Container(
                        height: MySize.scaleFactorHeight * 30,
                        width: MySize.scaleFactorWidth * 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(MySize.size5),
                            color:containerIndex == 0?AppColors.whiteColorFF: Colors.transparent),
                        child: Center(
                          child: customTextMedium(
                              title: "Delivery",
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          containerIndex = 1;
                        });
                      },
                      child: Container(
                        height: MySize.scaleFactorHeight * 30,
                        width: MySize.scaleFactorWidth * 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(MySize.size5),
                            color:containerIndex == 1? AppColors.whiteColorFF: Colors.transparent ),
                        child: Center(
                          child: customTextMedium(
                              title: "PickUp",
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ]),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(MySize.size10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      color: AppColors.lineColorE5),
                  child: SvgPicture.asset(AppConstant.ic_booked,
                      height: MySize.size25),
                ),
                SizedBox(width: MySize.size7,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: MySize.size10,vertical: MySize.size12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      color: AppColors.lineColorE5),
                  child: customTextMedium(title: "GROUP ORDER",fontSize: MySize.size14,fontWeight: FontWeight.w500)
                ),
              ],
            ),
                SizedBox(height: MySize.size10),
                customDivider(
                  width: MySize.scaleFactorWidth * 363,
                  color: AppColors.lineColorAD,
                ),
                SizedBox(height: MySize.size18),
                Row(
                  children: [
                  ReuseColumn(text1: "Menu",text2: "1:00 PM – 11:00 PM"),
                  SizedBox(width: MySize.scaleFactorWidth * 37),
                  ReuseColumn(text1: "Lunch Menu",text2: "1:00 PM – 3:30 PM"),
                ],),
                SizedBox(height: MySize.size10),
                customDivider(
                  width: MySize.scaleFactorWidth * 363,
                  color: AppColors.lineColorAD,
                ),

                SizedBox(height: MySize.size14),
                customTextMedium(
                    title: "All in Dairy & Eggs",
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w700),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                       if(currentIndex >= 0 && currentIndex < screenIndex.length){
                          Get.to(screenIndex[currentIndex]);
                        }
                      },
                      child: DeliveryReuseContainer(
                        text1: "Big Mac Bacon [600.0 Cals]",
                        text2: "\$50.00",
                        text3: "  \$45.00",
                        text4: "250 g",
                        assetName: AppConstant.pasta_img,
                      ),
                    );
                  },),
                SizedBox(height: MySize.size10),
                customDivider(
                  width: MySize.scaleFactorWidth * 363,
                  color: AppColors.lineColorAD,
                ),
                SizedBox(height: MySize.size14),
                customTextMedium(
                    title: "All in Dairy & Eggs",
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w700),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return DeliveryReuseContainer(
                      text1: "Big Mac Bacon [600.0 Cals]",
                      text2: "\$50.00",
                      text3: "  \$45.00",
                      text4: "250 g",
                      assetName: AppConstant.pasta_img,
                    );
                  },),
                SizedBox(height: MySize.size18),
                customDivider(
                  width: MySize.scaleFactorWidth * 363,
                  color: AppColors.lineColorAD,
                ),
                SizedBox(height: MySize.size10),
                Container(
                  height: MySize.scaleFactorHeight *46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    color: Color(0xFFD6DEDE),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.35,
                        ),
                    customTextMedium(
                        title: "Check Out",fontSize: MySize.size16,fontWeight: FontWeight.w500),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: MySize.size15,vertical: MySize.size10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(MySize.size8),
                        border: Border.all(color: AppColors.lineColorAD,width: 0.3),
                        color: AppColors.whiteColorFF
                      ),
                      child: customTextMedium(title: "12",fontSize: MySize.size18,fontWeight: FontWeight.w500),
                    ),
                  ]),
                ),
          ]),
        ),
      ),
    ));
  }
}
