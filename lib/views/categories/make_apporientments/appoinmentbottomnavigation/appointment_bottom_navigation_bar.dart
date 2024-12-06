import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/categories/make_apporientments/hospitallocation/hospital_location.dart';

class AppointmentBottomNavigation extends StatefulWidget {
  const AppointmentBottomNavigation({super.key});

  @override
  State<AppointmentBottomNavigation> createState() => _AppointmentBottomNavigationState();
}

class _AppointmentBottomNavigationState extends State<AppointmentBottomNavigation> {
  int _currentIndex = 0;
  List Screen = [
    Text("data"),
    HospitalLocation(),
    Text("data"),
    Text("data"),
    Text("data"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          _buildOffstageNavigator(0),
          _buildOffstageNavigator(1),
          _buildOffstageNavigator(2),
          _buildOffstageNavigator(3),
          _buildOffstageNavigator(4),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primaryColor62,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppConstant.ic_bottom_home,
                  height: MySize.size35),
              label: "",
              activeIcon: CircleAvatar(
                backgroundColor: AppColors.primaryColor62,
                child: SvgPicture.asset(
                  AppConstant.ic_bottom_home,
                  height: MySize.size35,
                  color: AppColors.backGroundColorFA,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppConstant.ic_doctor_tool,
                height: MySize.size22,
                width: MySize.size22,
                color: Color(0xff98999A),
              ),
              label: "",
              activeIcon: CircleAvatar(
                backgroundColor: AppColors.primaryColor62,
                child: SvgPicture.asset(
                  AppConstant.ic_doctor_tool,
                  height: MySize.size22,
                  width: MySize.size22,
                  color: AppColors.backGroundColorFA,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppConstant.ic_bottom_activity,
                  height: MySize.size35),
              label: "",
              activeIcon: CircleAvatar(
                backgroundColor: AppColors.primaryColor62,
                child: SvgPicture.asset(
                  AppConstant.ic_bottom_activity,
                  height: MySize.size35,
                  color: AppColors.backGroundColorFA,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppConstant.ic_bottom_notification,
                  height: MySize.size35),
              label: "",
              activeIcon: CircleAvatar(
                backgroundColor: AppColors.primaryColor62,
                child: SvgPicture.asset(
                  AppConstant.ic_bottom_notification,
                  height: MySize.size35,
                  color: AppColors.backGroundColorFA,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppConstant.ic_bottom_profile,
                  height: MySize.size35),
              label: "",
              activeIcon: CircleAvatar(
                backgroundColor: AppColors.primaryColor62,
                child: SvgPicture.asset(
                  AppConstant.ic_bottom_profile,
                  height: MySize.size35,
                  color: AppColors.backGroundColorFA,
                ),
              ),
            ),
          ]),
    );
  }
  Widget _buildOffstageNavigator(int index) {
    return Offstage(
      offstage: _currentIndex != index,
      child: Navigator(
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) {
              switch (index) {
                case 0:
                  return Screen[0];
                case 1:
                  return Screen[1];
                case 2:
                  return Screen[2];
              // Add cases for other screens within the same index
                case 3:
                  return Screen[3];
                case 4:
                  return Screen[4];

                default:
                  return Screen[0];
              }
            },
          );
        },
      ),
    );
  }
}

