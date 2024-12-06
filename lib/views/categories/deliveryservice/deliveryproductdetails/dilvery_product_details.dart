import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';

import '../../../../utils/mysize.dart';
import '../deliveryproductabout/delivery_product_about.dart';
import '../deliveryrestaurantproduct/delivery_restaurant_product.dart';
import 'component/drink_container.dart';
import 'component/side_item_container.dart';

class DeliveryProductDetails extends StatefulWidget {
  const DeliveryProductDetails({super.key});

  @override
  State<DeliveryProductDetails> createState() => _DeliveryProductDetailsState();
}

class _DeliveryProductDetailsState extends State<DeliveryProductDetails> {
  int count1 = 0;
  int count2 = 0;
  int count3 = 0;
  int count4 = 0;
  int count5 = 0;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MySize.size24,vertical: MySize.size17),
          child: Column(
            children: [
              Container(
                height: MySize.scaleFactorHeight * 335,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    border: Border.all(color: AppColors.lineColorAD,width: 0.5),
                    color: AppColors.whiteColorFF),
                child: Image(
                    image: AssetImage(AppConstant.king_burger_img),
                    fit: BoxFit.fill),
              ),
              SizedBox(height: MySize.size24),
              GestureDetector(
                onTap: (){
                  Get.to(DeliveryProductAbout());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MySize.size34, vertical: MySize.size16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(color: AppColors.lineColorAD,width: 0.5),
                      color: AppColors.whiteColorFF),
                  child: Column(
                    children: [
                      customTextMedium(
                          title: "Big Mac Bacon [600.0 Cals]",
                          fontSize: MySize.size25,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryColor47),
                      SizedBox(height: MySize.size5),
                      customTextRegular(
                          title:
                              "Big Mac Bacon boasts six hundred calories,\n    A tasty treat that many savor with ease. ",
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.subTitleColor37),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MySize.size12, vertical: MySize.size16),
                child: Row(children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "\$50.00",
                        style: TextStyle(
                          fontSize: MySize.size23,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: AppColors.errorFailureColor26,
                          color: Color(0xFFDBDBDB),
                        )),
                    TextSpan(
                        text: " \$45.00",
                        style: TextStyle(
                          fontSize: MySize.size24,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryColor47,
                        )),
                  ])),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        if(count1 == 0){

                        }else{
                          setState(() {
                            count1--;
                          });
                        }
                      },
                      child: SvgPicture.asset(AppConstant.ic_minus, height: MySize.size32)),
                  SizedBox(width: MySize.size12),
                  customTextMedium(
                      title: "$count1",
                      fontSize: MySize.size22,
                      fontWeight: FontWeight.w500),
                  SizedBox(width: MySize.size12),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          count1++;
                        });
                      },
                      child: SvgPicture.asset(AppConstant.ic_plus, height: MySize.size32)),
                ]),
              ),
              GestureDetector(
                  onTap: (){
                    Get.to(DeliveryRestaurantProduct());
                  },
                  child: SideItemContainer()),
              SizedBox(height: MySize.size22),
              DrinkContainer(),
              SizedBox(height: MySize.size22),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  border: Border.all(color: AppColors.lineColorAD,width: 0.5),
                  color: AppColors.whiteColorFF,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                            horizontal: MySize.size15, vertical: MySize.size12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MySize.size8),
                          color: Color(0xffEAEAEA),
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customTextMedium(
                                title:
                                    "Bacon, Egg & Smoky Gouda McMuffin\nComes With",
                                fontSize: MySize.size20,
                                fontWeight: FontWeight.w500),
                            customTextRegular(
                                title: "Choose up to 16",
                                fontSize: MySize.size16,
                                fontWeight: FontWeight.w400),
                          ],
                        )),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MySize.size15,vertical: MySize.size12),
                      child: Column(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customTextMedium(
                              title: "Bacon Strips [70.0 Cals]",
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                            ),
                            Row(
                              children: [
                                customTextRegular(
                                    title: "CA\$1.59",
                                    fontSize: MySize.size16,
                                    fontWeight: FontWeight.w400,
                                  color: Color(0xFF909090),
                                ),
                                Spacer(),
                                CircleAvatar(
                                  radius: MySize.size15,
                                  backgroundColor: Color(0xFFF5F0EB),
                                  child: SvgPicture.asset(AppConstant.ic_plus2),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: MySize.size12,),
                        customDivider(
                            width: double.infinity, color: AppColors.lineColorAD),
                        SizedBox(height: MySize.size12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customTextMedium(
                              title: "Smoky Gouda Cheese [50.0 Cals]",
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                            ),
                            Row(
                              children: [
                                customTextRegular(
                                    title: "+CA\$0.69",
                                    fontSize: MySize.size16,
                                    fontWeight: FontWeight.w400,
                                  color: Color(0xFF909090),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: (){
                                    if(count2 == 0){

                                    }else{
                                      setState(() {
                                        count2--;
                                      });
                                    }
                                  },
                                  child: SvgPicture.asset(AppConstant.ic_minus,
                                      height: MySize.size32),
                                ),
                                SizedBox(width: MySize.size12),
                                customTextMedium(
                                    title: "$count2",
                                    fontSize: MySize.size22,
                                    fontWeight: FontWeight.w500),
                                SizedBox(width: MySize.size12),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      count2++;
                                    });
                                  },
                                  child: SvgPicture.asset(AppConstant.ic_plus,
                                      height: MySize.size32),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: MySize.size12,),
                        customDivider(
                            width: double.infinity, color: AppColors.lineColorAD),
                        SizedBox(height: MySize.size12,),
                        Row(children: [
                          customTextMedium(
                            title: "Smoky Cheese Sauce [60.0 Cals]",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500,
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: (){
                              if(count3 == 0){

                              }else{
                                setState(() {
                                  count3--;
                                });
                              }
                            },
                            child: SvgPicture.asset(AppConstant.ic_minus,
                                height: MySize.size32),
                          ),
                          SizedBox(width: MySize.size12),
                          customTextMedium(
                              title: "$count3",
                              fontSize: MySize.size22,
                              fontWeight: FontWeight.w500),
                          SizedBox(width: MySize.size12),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                count3++;
                              });
                            },
                            child: SvgPicture.asset(AppConstant.ic_plus,
                                height: MySize.size32),
                          ),
                        ],),
                        SizedBox(height: MySize.size12,),
                        customDivider(
                            width: double.infinity, color: AppColors.lineColorAD),
                        SizedBox(height: MySize.size12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customTextMedium(
                              title: "Round Egg [70.0 Cals]",
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                            ),
                            Row(
                              children: [
                                customTextRegular(
                                    title: "CA\$4.58 (CA\$2.29 ea)",
                                    fontSize: MySize.size16,
                                    fontWeight: FontWeight.w400,
                                  color: Color(0xFF909090),

                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: (){
                                    if(count4 == 0){

                                    }else{
                                      setState(() {
                                        count4--;
                                      });
                                    }
                                  },
                                  child: SvgPicture.asset(AppConstant.ic_minus,
                                      height: MySize.size32),
                                ),
                                SizedBox(width: MySize.size12),
                                customTextMedium(
                                    title: "$count4",
                                    fontSize: MySize.size22,
                                    fontWeight: FontWeight.w500),
                                SizedBox(width: MySize.size12),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      count4++;
                                    });
                                  },
                                  child: SvgPicture.asset(AppConstant.ic_plus,
                                      height: MySize.size32),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: MySize.size12,),
                        customDivider(
                            width: double.infinity, color: AppColors.lineColorAD),
                        SizedBox(height: MySize.size12,),
                        Row(children: [
                          customTextMedium(
                            title: "English Muffin [140.0 Cals]",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500,
                          ),
                          Spacer(),
                          Container(
                            width: MySize.size28,
                            height: MySize.size28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(MySize.size5),
                              color: Color(0xFFF5F0EB)
                            ),
                            child: Padding(
                              padding:  EdgeInsets.all(MySize.size4),
                              child: SvgPicture.asset(AppConstant.ic_done,),
                            ),
                          ),
                        ],),
                        SizedBox(height: MySize.size12,),
                        customDivider(
                            width: double.infinity, color: AppColors.lineColorAD),
                        SizedBox(height: MySize.size12,),
                        Row(children: [
                          customTextMedium(
                            title: "Butter [15.0 Cals]",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500,
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: (){
                              if(count5 == 0){

                              }else{
                                setState(() {
                                  count5--;
                                });
                              }
                            },
                            child: SvgPicture.asset(AppConstant.ic_minus,
                                height: MySize.size32),
                          ),
                          SizedBox(width: MySize.size12),
                          customTextMedium(
                              title: "$count5",
                              fontSize: MySize.size22,
                              fontWeight: FontWeight.w500),
                          SizedBox(width: MySize.size12),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                count5++;
                              });
                            },
                            child: SvgPicture.asset(AppConstant.ic_plus,
                                height: MySize.size32),
                          ),
                        ],),
                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MySize.size20,),
              customDivider(
                width: MySize.scaleFactorWidth *363,
                color: AppColors.lineColorAD
              ),
              SizedBox(height: MySize.size15,),
              Container(
                padding: EdgeInsets.all(MySize.size15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  border: Border.all(color: AppColors.lineColorAD,width: 0.5),
                  color: AppColors.whiteColorFF
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextMedium(title: "Special Requests",fontSize: MySize.size18,fontWeight: FontWeight.w500),
                    SizedBox(
                      height: MySize.size8,
                    ),
                    TextField(
                      maxLines: 4,
                      style: TextStyle(
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.lineColor60
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        hintText: "Add comment (eg extra sauce, no onion)",
                        hintStyle: TextStyle(
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.lineColor60
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none
                        )
                      ),
                    ),
                  ],
                ),
              ),
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
                      SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                      customTextMedium(
                          title: "Add to Cart      ",fontSize: MySize.size16,fontWeight: FontWeight.w500),
                      customTextMedium(
                          title: " \$ 10.50 CAD",fontSize: MySize.size16,fontWeight: FontWeight.w500),
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
            ],
          ),
        ),
      ),
    ));
  }
}
