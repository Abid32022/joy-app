

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';

import '../../../../utils/appcolors.dart';
import '../../../base/custom_app_bar.dart';
import '../../../base/custom_divider.dart';
import '../deliveryproductdetails/dilvery_product_details.dart';
import '../invoiceOrOrder/invoice.dart';
import 'component/reuse_container.dart';

class DeliveryRestaurantItems extends StatefulWidget {
  const DeliveryRestaurantItems({super.key});

  @override
  State<DeliveryRestaurantItems> createState() =>
      _DeliveryRestaurantItemsState();
}

class _DeliveryRestaurantItemsState extends State<DeliveryRestaurantItems>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }



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
      body: Column(
        children: [
          Container(
            height: MySize.scaleFactorHeight * 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            TabBar(
              tabAlignment: TabAlignment.start,
             indicatorSize: TabBarIndicatorSize.tab,
             isScrollable: true,
            unselectedLabelStyle: TextStyle(
            fontSize: MySize.size16,
                fontWeight: FontWeight.w400
            ),
          unselectedLabelColor: AppColors.titleColor29,
          labelStyle: TextStyle(
              fontSize: MySize.size16,
              fontWeight: FontWeight.w500
          ),
          labelColor: AppColors.titleColor29,
          indicatorColor: AppColors.primaryColor47,
          controller: _tabController, tabs: [
        Tab(
          text: 'All in Dairy & Eggs',
        ),
        Tab(
          text: 'Butter',
        ),
        Tab(
          text: 'Cheese',
        ),
        Tab(
          text: 'Creem',
        ),
        Tab(
          text: 'Burger Meals',
        ),
      ]),
                SizedBox(
                  height: MySize.size12,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MySize.size24),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            width: MySize.scaleFactorWidth * 300,
                            child: customTextField(
                              borderRadius: MySize.size8,
                              bordercolor: Color(0xFFC0D4DC),
                              fillcolor: Color(0xFFECF6FA),
                              filled: true,
                              hintText: "Search menu & dish",
                              hinttextcolor: AppColors.titleColor29,
                              prefixImage: Padding(
                                padding: const EdgeInsets.all(12),
                                child: SvgPicture.asset(AppConstant.ic_search),
                              ),
                            )),
                      ),
                      SizedBox(width: MySize.size10),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: MySize.size10, vertical: MySize.size10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(MySize.size8),
                            border: Border.all(color: Color(0xFFC0D4DC)),
                            color: Color(0xFFECF6FA)),
                        child: SvgPicture.asset(
                          AppConstant.ic_setting,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MySize.size10,
                ),
                Center(child: customDivider(width: MySize.size363))
              ],
            ),
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MySize.size24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: MySize.size10),
                      customTextMedium(
                          title: 'All in Dairy & Eggs',
                          fontSize: MySize.size20,
                          fontWeight: FontWeight.w700),
                      ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                        return ReuseContainer(
                          onTap: (){
                            Get.to(DeliveryProductDetails());
                          },
                          text1: "Big Mac Bacon [600.0 Cals]",
                          text2: "\$50.00",
                          text3: " \$45.00",
                          text4: "250 g",
                          assetName: AppConstant.pasta_img,
                        );
                      },),
                      SizedBox(height: MySize.size10),
                      customDivider(
                        color: AppColors.lineColorAD,
                        width: MySize.scaleFactorWidth * 363
                      ),
                      SizedBox(height: MySize.size18),
                      customTextMedium(
                          title: 'All in Dairy & Eggs',
                          fontSize: MySize.size20,
                          fontWeight: FontWeight.w700),
                         ListView.builder(
                           itemCount: 3,
                           shrinkWrap: true,
                           physics: NeverScrollableScrollPhysics(),
                           itemBuilder: (context, index) {
                           return ReuseContainer(

                             text1: "Big Mac Bacon [600.0 Cals]",
                             text2: "\$50.00",
                             text3: " \$45.00",
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
                      GestureDetector(
                        onTap: (){
                          Get.to(DeliveryInvoice());
                        },
                        child: Container(
                          height: MySize.scaleFactorHeight *46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(MySize.size8),
                            color: Color(0xFFD6DEDE),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               SizedBox(width: MediaQuery.of(context).size.width * 0.35),
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
                      ),
                      SizedBox(height: MySize.size10),
                    ],
                  ),
                ),
              ),
              Text(
                'data',
              ),
              Text(
                'data',
              ),
              Text(
                'data',
              ),
              Text(
                'data',
              ),
            ],
          ))
        ],
      ),
    );
  }
}
