import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';

import '../listingscreen/listing_screen.dart';
import '../parceldelivery/parcel_delivery.dart';

class ParcelDashBoard extends StatefulWidget {
  const ParcelDashBoard({super.key});

  @override
  State<ParcelDashBoard> createState() => _ParcelDashBoardState();
}

class _ParcelDashBoardState extends State<ParcelDashBoard> {

  int _currentIndex = 0;
  List Screen = [
    Text("data"),
    ParcelDelivery(),
    ListingScreenn(),
    Text("data"),
    Text("data"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primaryColor62,
          currentIndex: _currentIndex,
          onTap: (value){
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: SvgPicture.asset(AppConstant.ic_bottom_home,height: MySize.size35),label: "",
              activeIcon: CircleAvatar(
                backgroundColor: AppColors.parcelSecondaryColor8B,
                child: SvgPicture.asset(AppConstant.ic_bottom_home,height: MySize.size35,color: AppColors.backGroundColorFA,),
              ),),
            BottomNavigationBarItem(icon: SvgPicture.asset(AppConstant.ic_bottom_car,height: MySize.size35),label: "",
              activeIcon: CircleAvatar(
                backgroundColor: AppColors.parcelSecondaryColor8B,
                child: SvgPicture.asset(AppConstant.ic_bottom_car,height: MySize.size35,color: AppColors.backGroundColorFA,),
              ),),
            BottomNavigationBarItem(icon: SvgPicture.asset(AppConstant.ic_bottom_activity,height: MySize.size35),label: "",
              activeIcon: CircleAvatar(
                backgroundColor: AppColors.parcelSecondaryColor8B,
                child: SvgPicture.asset(AppConstant.ic_bottom_activity,height: MySize.size35,color: AppColors.backGroundColorFA,),
              ),),
            BottomNavigationBarItem(icon: SvgPicture.asset(AppConstant.ic_bottom_notification,height: MySize.size35),label: "",
              activeIcon: CircleAvatar(
                backgroundColor: AppColors.parcelSecondaryColor8B,
                child: SvgPicture.asset(AppConstant.ic_bottom_notification,height: MySize.size35,color: AppColors.backGroundColorFA,),
              ),),
            BottomNavigationBarItem(icon: SvgPicture.asset(AppConstant.ic_bottom_profile,height: MySize.size35),label: "",
              activeIcon: CircleAvatar(
                backgroundColor: AppColors.parcelSecondaryColor8B,
                child: SvgPicture.asset(AppConstant.ic_bottom_profile,height: MySize.size35,color: AppColors.backGroundColorFA,),
              ),),

          ]),
    ));
  }
}
