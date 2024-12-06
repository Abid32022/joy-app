import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/textfield.dart';
import 'package:joyapp/views/categories/make_apporientments/hospitallocation/base/hospital_location_tab.dart';
class HospitalLocation extends StatefulWidget {
  const HospitalLocation({super.key});

  @override
  State<HospitalLocation> createState() => _HospitalLocationState();
}

class _HospitalLocationState extends State<HospitalLocation> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return      Scaffold(
      appBar: AppointmentAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,

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
              Tab(text: "House"),
              Tab(text: "Flat"),
              Tab(text: "Lower"),
              Tab(text: "Upper"),
              Tab(text: "Room"),
              Tab(text: "Farm House"),
            ]),
        Expanded(
          child: TabBarView(controller: _tabController, children: [
            HostpitalLocationTab(),
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
