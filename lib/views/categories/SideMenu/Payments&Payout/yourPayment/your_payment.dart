import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';

import '../giftCouoinCredit/gift_couoin_credit.dart';
import 'base/base.dart';

class YourPaymentScreen extends StatefulWidget {
  const YourPaymentScreen({super.key});

  @override
  State<YourPaymentScreen> createState() => _YourPaymentScreenState();
}

class _YourPaymentScreenState extends State<YourPaymentScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;
@override
void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: (){
          Navigator.pop(context);

        },
        verifiedVisibile: false,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 23, vertical: MySize.scaleFactorHeight * 11),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: MySize.scaleFactorWidth * 260,
                  child: customTextField(
                    prefixImage: IconButton(onPressed: () {
                
                    },icon: SvgPicture.asset(AppConstant.ic_search2)),
                    isPrefixIcon: true,
                    minLines: 1,
                    hintText: 'Search',
                    hinttextcolor: AppColors.blackColor0,
                    fillcolor: AppColors.searchColor,
                    borderWidth: .5,
                    filled: true,
                    bordercolor: AppColors.borderColorAD
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MySize.size4)),
                  color: AppColors.searchColor,
                  child: Padding(
                    padding:  EdgeInsets.all(MySize.size10),
                    child: SvgPicture.asset(AppConstant.ic_filterIcon,height: MySize.size28,),
                  ),
                ),
              ],
            ),
            SizedBox(height: MySize.size15,),
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: AppColors.titleColor50,
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
                labelStyle: TextStyle(fontWeight: FontWeight.w500, color: AppColors.blackColor0),
                controller: _tabController,
                tabs: [
                  Tab( text: 'Ongoing',),
                  Tab( text: 'Complete',),
                ]),
            Expanded(child: TabBarView(
              controller: _tabController,
              children: [
                Ongoing(),
                Ongoing(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class Ongoing extends StatelessWidget {
  const Ongoing({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: MySize.size25,),
          GestureDetector(
              onTap: (){
                Get.to(GiftCouoinCredit());
              },
              child: customTextMedium(title: 'TODAY',fontSize: MySize.size16,color: AppColors.borderColorsDC, fontWeight: FontWeight.w500)),
          SizedBox(height: MySize.size10,),
          PayContainer(plan: 'Renew, Rent & Sell Plan',dateTime: 'Mon, 06 Dec 2023 . 04:40 PM', amount: '\$84',status: 'In Progress',textColor: AppColors.textColor6c),
          SizedBox(height: MySize.size12,),
          PayContainer(plan: 'Renew, Rent & Sell Plan',dateTime: 'Mon, 06 Dec 2023 . 04:40 PM', amount: '-\$84',status: 'In Progress',textColor: AppColors.criticalCrisisColor00),
          SizedBox(height: MySize.size12,),
          PayContainer(plan: 'Renew, Rent & Sell Plan',dateTime: 'Mon, 06 Dec 2023 . 04:40 PM', amount: '\$84',status: 'Pending'),
          SizedBox(height: MySize.size15,),
          customDivider(width: MySize.scaleFactorWidth * 300),

          SizedBox(height: MySize.size22,),
      
          customTextMedium(title: 'TOMORROW',fontSize: MySize.size16,color: AppColors.borderColorsDC, fontWeight: FontWeight.w500),
          SizedBox(height: MySize.size14,),
          PayContainer(plan: 'Renew, Rent & Sell Plan',dateTime: 'Mon, 06 Dec 2023 . 04:40 PM', amount: '\$84',status: 'In Progress',textColor: AppColors.textColor6c),
          SizedBox(height: MySize.size12,),
          PayContainer(plan: 'Renew, Rent & Sell Plan',dateTime: 'Mon, 06 Dec 2023 . 04:40 PM', amount: '-\$84',status: 'In Progress',textColor: AppColors.criticalCrisisColor00),
          SizedBox(height: MySize.size12,),
          PayContainer(plan: 'Renew, Rent & Sell Plan',dateTime: 'Mon, 06 Dec 2023 . 04:40 PM', amount: '\$84',status: 'Pending',),
                  ],
      ),
    );
  }
}

