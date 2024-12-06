import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/appcolors.dart';
import '../../../../utils/appconstant.dart';
import '../../../../utils/mysize.dart';
import '../../../base/appointment_app_bar.dart';
import '../../../base/textfield.dart';
import '../donationlist/donation_list.dart';

class DonationTabBar extends StatefulWidget {
  const DonationTabBar({super.key});

  @override
  State<DonationTabBar> createState() => _DonationTabBarState();
}

class _DonationTabBarState extends State<DonationTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppointmentAppBar(
        onBackTap: () {
          Get.back();
        },
      ),
      body: Column(children: [
        SizedBox(height: MySize.size14),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
                width: MySize.scaleFactorWidth * 270,
                child: customTextField(
                  prefixImage: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(AppConstant.ic_search),
                  ),
                  borderRadius: MySize.size8,
                  hintText: "Search",
                  hinttextcolor: AppColors.lineColorAD,
                  filled: true,
                  fillcolor: Color(0xffC0D4DC).withOpacity(0.8),
                  bordercolor: Color(0xffECF6FA),
                ),
              ),
              SizedBox(
                width: MySize.scaleFactorHeight * 12,
              ),
              SvgPicture.asset(AppConstant.ic_menu_listing),
            ],
          ),
        ),
        TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            controller: _tabController,
            labelPadding: EdgeInsets.only(left: MySize.size24),
            indicatorColor: AppColors.subTitleColor37,
            labelStyle: TextStyle(
                fontSize: MySize.size14,
                fontWeight: FontWeight.w500,
                color: AppColors.subTitleColor37),
            unselectedLabelStyle: TextStyle(
                fontSize: MySize.size14,
                fontWeight: FontWeight.w400,
                color: AppColors.disableTextColorAD),
            tabs: [
              Tab(text: "Local"),
              Tab(text: "Pakistan"),
              Tab(text: "India"),
              Tab(text: "Canada"),
              Tab(text: "United State"),
              Tab(text: "Farm"),
            ]),
        Expanded(
          child: TabBarView(controller: _tabController, children: [
            DonationList(),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
          ]),
        )
      ]),
    );
  }
}
