import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../editprofile/showprofile/show_profile.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  List list1 = [
    [AppConstant.ic_bottom_home, "Home", AppConstant.ic_for],
    [AppConstant.ic_discove, "Explore or Discover", AppConstant.ic_for],
    [AppConstant.ic_search, "Search & Filter", AppConstant.ic_for],
  ];
  List list2 = [
    [AppConstant.edit_profile, "Edit profile", AppConstant.ic_for],
    [AppConstant.sett, "Login & Security", AppConstant.ic_for],
    [AppConstant.ic_paymenttt, "Payments & Payout", AppConstant.ic_for],
    [AppConstant.ic_paymenttt, "Notifications", AppConstant.ic_for],
    [AppConstant.icmessage, "Messages or Inbox", AppConstant.ic_for],
    [AppConstant.keyyyy, "Change password", AppConstant.ic_for],
  ];
  List list3 = [
    [AppConstant.ic_fav, "Favorites", AppConstant.ic_for],
    [AppConstant.ic_bookmark, "Bookmarks", AppConstant.ic_for],
  ];
  List list4 = [
    [AppConstant.ic_bottom_home, "Support", AppConstant.ic_for],
    [AppConstant.ic_bottom_home, "FAQs", AppConstant.ic_for],
    [AppConstant.ic_bottom_home, "Contact us", AppConstant.ic_for],
    [AppConstant.ic_bottom_home, "Tutorial", AppConstant.ic_for],
  ];
  List list5 = [
    [AppConstant.ic_bottom_home, "About", AppConstant.ic_for],
    [AppConstant.ic_bottom_home, "Terms of Service", AppConstant.ic_for],
    [AppConstant.ic_bottom_home, "Privacy Policy", AppConstant.ic_for],
  ];
  List list6 = [
    [AppConstant.ic_bottom_home, "Upgrade", AppConstant.ic_for],
    [AppConstant.ic_bottom_home, "Premium", AppConstant.ic_for],
    [AppConstant.ic_bottom_home, "Invite Friends", AppConstant.ic_for],
  ];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      backgroundColor: AppColors.backGroundColorFA,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size20,
              ),
              customTextMedium(
                  title: "Profile",
                  fontSize: MySize.size35,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.size20,
              ),
              ListTile(
                leading: Container(
                  height: MySize.scaleFactorHeight * 55,
                  width: MySize.scaleFactorWidth * 55,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F0F0),
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.lineColorE5, width: 1),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      AppConstant.ic_person_pic,
                      height: MySize.scaleFactorHeight * 31,
                      width: MySize.scaleFactorWidth * 31,
                    ),
                  ),
                ),
                title: customTextMedium(
                    title: "Adnan Q",
                    fontSize: MySize.size18,
                    fontWeight: FontWeight.w500),
                subtitle: customTextRegular(
                    title: "Show profile",
                    fontSize: MySize.size16,
                    color: Color(0xff232837),
                    fontWeight: FontWeight.w500),
                trailing: SvgPicture.asset(AppConstant.ic_for),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  color: AppColors.backGroundColorFA,
                  border: Border.all(color: AppColors.lineColorC8, width: 1),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MySize.size14, horizontal: MySize.size10),
                  child: ListView.builder(
                    itemCount: list1.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    list1[index][0],
                                    color: AppColors.blackColor0,
                                  ),
                                  SizedBox(
                                    width: MySize.size12,
                                  ),
                                  customTextRegular(
                                    title: list1[index][1],
                                    fontSize: MySize.size18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              SvgPicture.asset(list1[index][2]),
                            ],
                          ),
                          if (index <
                              list1.length -
                                  1) // Check if it's not the last item
                            Divider(
                              thickness: 1,
                              color: AppColors.lineColorC8,
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size18,
              ),
              customTextMedium(
                  title: "User Profile",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.size12,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  color: AppColors.backGroundColorFA,
                  border: Border.all(color: AppColors.lineColorC8, width: 1),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MySize.size14, horizontal: MySize.size10),
                  child: ListView.builder(
                    itemCount: list2.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    list2[index][0],
                                    color: AppColors.blackColor0,
                                  ),
                                  SizedBox(
                                    width: MySize.size12,
                                  ),
                                  customTextRegular(
                                    title: list2[index][1],
                                    fontSize: MySize.size18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              SvgPicture.asset(list2[index][2]),
                            ],
                          ),
                          if (index <
                              list2.length -
                                  1) // Check if it's not the last item
                            Divider(
                              thickness: 1,
                              color: AppColors.lineColorC8,
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size18,
              ),
              customTextMedium(
                  title: "Favorites and Bookmarks:",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.size12,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  color: AppColors.backGroundColorFA,
                  border: Border.all(color: AppColors.lineColorC8, width: 1),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MySize.size14, horizontal: MySize.size10),
                  child: ListView.builder(
                    itemCount: list3.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    list3[index][0],
                                    color: AppColors.blackColor0,
                                  ),
                                  SizedBox(
                                    width: MySize.size12,
                                  ),
                                  customTextRegular(
                                    title: list3[index][1],
                                    fontSize: MySize.size18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              SvgPicture.asset(list3[index][2]),
                            ],
                          ),
                          if (index <
                              list3.length -
                                  1) // Check if it's not the last item
                            Divider(
                              thickness: 1,
                              color: AppColors.lineColorC8,
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size18,
              ),
              customTextMedium(
                  title: "Support and Help",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.size12,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  color: AppColors.backGroundColorFA,
                  border: Border.all(color: AppColors.lineColorC8, width: 1),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MySize.size14, horizontal: MySize.size10),
                  child: ListView.builder(
                    itemCount: list4.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    list4[index][0],
                                    color: AppColors.blackColor0,
                                  ),
                                  SizedBox(
                                    width: MySize.size12,
                                  ),
                                  customTextRegular(
                                    title: list4[index][1],
                                    fontSize: MySize.size18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              SvgPicture.asset(list4[index][2]),
                            ],
                          ),
                          if (index <
                              list4.length -
                                  1) // Check if it's not the last item
                            Divider(
                              thickness: 1,
                              color: AppColors.lineColorC8,
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size18,
              ),
              customTextMedium(
                  title: "Information",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.size12,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  color: AppColors.backGroundColorFA,
                  border: Border.all(color: AppColors.lineColorC8, width: 1),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MySize.size14, horizontal: MySize.size10),
                  child: ListView.builder(
                    itemCount: list5.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    list5[index][0],
                                    color: AppColors.blackColor0,
                                  ),
                                  SizedBox(
                                    width: MySize.size12,
                                  ),
                                  customTextRegular(
                                    title: list5[index][1],
                                    fontSize: MySize.size18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              SvgPicture.asset(list5[index][2]),
                            ],
                          ),
                          if (index <
                              list5.length -
                                  1) // Check if it's not the last item
                            Divider(
                              thickness: 1,
                              color: AppColors.lineColorC8,
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size18,
              ),
              customTextMedium(
                  title: "Information",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.size12,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  color: AppColors.backGroundColorFA,
                  border: Border.all(color: AppColors.lineColorC8, width: 1),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MySize.size14, horizontal: MySize.size10),
                  child: ListView.builder(
                    itemCount: list6.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    list6[index][0],
                                    color: AppColors.blackColor0,
                                  ),
                                  SizedBox(
                                    width: MySize.size12,
                                  ),
                                  customTextRegular(
                                    title: list6[index][1],
                                    fontSize: MySize.size18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              SvgPicture.asset(list6[index][2]),
                            ],
                          ),
                          if (index < list6.length - 1) // Check if it's not the last item
                            Divider(
                              thickness: 1,
                              color: AppColors.lineColorC8,
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size12,
              ),
              Divider(
                thickness: 1,
                color: AppColors.lineColorC8,
              ),
              SizedBox(
                height: MySize.size12,
              ),
              customButton(
                  ontap: () {
                    Get.to(ShowProfile());
                  },
                  width: double.infinity,
                  height: MySize.scaleFactorHeight * 46,
                  text: "Done",
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  fontColor: AppColors.whiteColorFF,
                  borderRadius: MySize.size8,
                  borderColor: Color(0xffC8313D),
                  colors: Color(0xffC8313D)),
              SizedBox(
                height: MySize.size30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
