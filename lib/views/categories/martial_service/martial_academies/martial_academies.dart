// Reusable method for creating containers
// import 'package:flutter/cupertino.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/views/base/custom_divider.dart';

import '../../../../utils/appcolors.dart';
import '../../../../utils/appconstant.dart';
import '../../../../utils/mysize.dart';
import '../../../base/custom_app_bar.dart';
import '../../../base/custom_button.dart';
import '../../../base/custom_textwidget.dart';
import '../martial_classes/martial_classes.dart';

Widget buildMartialAcademyContainer(
    BuildContext context,
    String imageAsset,
    String logoAsset,
    String academyName,
    String address,
    String button1Text,
    String button2Text,
    Function ontap) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(MySize.size10),
      border: Border.all(color: AppColors.borderColorAD, width: 0.3),
    ),
    child: Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            imageAsset,
            fit: BoxFit.cover,
            width: MySize.scaleFactorWidth * 410,
            height: MySize.scaleFactorHeight * 231,
          ),
        ),
        SizedBox(
          height: MySize.scaleFactorHeight * 11,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MySize.scaleFactorHeight * 7,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                logoAsset,
                height: MySize.scaleFactorHeight * 70,
                width: MySize.scaleFactorHeight * 70,
              ),
              SizedBox(
                width: MySize.scaleFactorHeight * 7,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTextMedium(
                      title: academyName,
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w500),
                  customTextLight(
                      title: address,
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.left),
                ],
              ),
              Spacer(),
              PopupMenuButton(
                iconSize: MySize.size6,
                icon: SvgPicture.asset(
                  AppConstant.ic_vertical,
                  width: MySize.size26,
                  height: MySize.size26,
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text(button1Text),
                    value: button1Text,
                  ),
                  PopupMenuItem(
                    child: Text(button2Text),
                    value: button2Text,
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MySize.scaleFactorHeight * 8,
              vertical: MySize.size10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customButton(
                ontap: ontap,
                width: MySize.scaleFactorHeight * 165,
                height: MySize.size40,
                text: 'Membership',
                borderRadius: MySize.size10,
                colors: AppColors.lineColorE4,
                borderColor: AppColors.lineColorE4,
                fontWeight: FontWeight.w500,
              ),
              customButton(
                ontap: () async {
                  ontap();
                  await Future.delayed(
                      Duration(seconds: 1)); // Wait for three seconds
                  Navigator.push(
                      (context),
                      MaterialPageRoute(
                        builder: (context) => MartialClasses(),
                      ));
                },
                width: MySize.scaleFactorHeight * 165,
                height: MySize.size40,
                text: 'Classes',
                borderRadius: MySize.size10,
                colors: AppColors.lineColorC8,
                borderColor: AppColors.lineColorC8,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class MartialAcademiesScreen extends StatefulWidget {
  const MartialAcademiesScreen({Key? key}) : super(key: key);

  @override
  State<MartialAcademiesScreen> createState() => _MartialAcademiesScreenState();
}

class _MartialAcademiesScreenState extends State<MartialAcademiesScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> tabItems = [
    'Schools',
    'Academies',
    'Studios',
  ];
  String item1 = 'Report';
  String item2 = 'Share';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabItems.length, vsync: this);
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
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.size16),
        child: Column(
          children: [
            TabBar(
              controller: _tabController,
              dividerColor: AppColors.lineColorAD,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, fontFamily: 'EnnVisions'),
              indicatorColor: AppColors.lineColorAD,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: MySize.size4,
              unselectedLabelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'EnnVisions'),
              tabs: tabItems.map((String tab) {
                return Tab(
                  text: tab,
                );
              }).toList(),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Replace these with the actual content for each tab
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: MySize.size12),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            buildMartialAcademyContainer(
                                context,
                                AppConstant.ic_martial_image1,
                                AppConstant.ic_martial_logo1,
                                "Apex Martial Arts Academy",
                                "76 St Maurices Road, Priest Hutton, \nUnited Kingdom, LA6 2YZ",
                                item1,
                                item2, () {
                              _displayBottomSheet();
                            }),
                            SizedBox(
                              height: MySize.size20,
                            ),
                            buildMartialAcademyContainer(
                                context,
                                AppConstant.ic_martial_image2,
                                AppConstant.ic_martial_logo2,
                                "Apex Martial Arts Academy",
                                "76 St Maurices Road, Priest Hutton, \nUnited Kingdom, LA6 2YZ",
                                item1,
                                item2, () {
                              _displayBottomSheet();
                            }),
                            SizedBox(
                              height: MySize.size16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text('Academies Content'),
                  ),
                  Center(
                    child: Text('Studios Content'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _displayBottomSheet() async {
    await showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.white,
      builder: (context) => Container(
        height: MySize.scaleFactorHeight * 400,
        decoration: BoxDecoration(

            color: Colors.white,
            borderRadius: BorderRadius.circular(MySize.size20)),
        padding: EdgeInsets.symmetric(
            horizontal: MySize.size19, vertical: MySize.size23),

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextMedium(
                        title: 'Apex Martial Arts Academy',
                        fontWeight: FontWeight.w500,
                        fontSize: MySize.size20),
                    SizedBox(
                      height: MySize.size14,
                    ),
                    customTextLight(
                        title: 'Karate, Krav Maga, Taekwondo, Muay Thai',
                        fontWeight: FontWeight.w500,
                        fontSize: MySize.size16),
                    Container(
                        height: MySize.scaleFactorHeight * 45,
                        width: MySize.scaleFactorHeight * 270,
                        child: ListTile(
                          contentPadding: EdgeInsets.all(MySize.size2),
                          horizontalTitleGap: MySize.size2,
                          minVerticalPadding: MySize.size2,
                          leading: SvgPicture.asset(AppConstant.ic_address),
                          title: customTextLight(
                              title:
                                  '76 St Maurices Road, Priest Hutton,\nUnited Kingdom, LA6 2YZ'),
                        )),
                    Container(
                        height: MySize.size20,
                        width: MySize.scaleFactorHeight * 270,
                        child: ListTile(
                          contentPadding: EdgeInsets.all(MySize.size2),
                          horizontalTitleGap: MySize.size2,
                          minVerticalPadding: MySize.size2,
                          leading: SvgPicture.asset(AppConstant.ic_email),
                          title: customTextLight(
                              title: 'Stevens.wilson@gmail.com'),
                        )),
                    SizedBox(
                      height: MySize.size14,
                    ),
                    Container(
                        height: MySize.size20,
                        width: MySize.scaleFactorHeight * 270,
                        child: ListTile(
                          horizontalTitleGap: MySize.size2,
                          minVerticalPadding: MySize.size2,
                          contentPadding: EdgeInsets.all(MySize.size2),
                          leading:
                              SvgPicture.asset(AppConstant.ic_phone_outlined),
                          title: customTextLight(title: '+44 20 7123 4567'),
                        )),
                  ],
                ),
                Image.asset(
                  fit: BoxFit.contain,
                  AppConstant.ic_martial_logo1,
                  height: MySize.scaleFactorHeight * 70,
                  width: MySize.scaleFactorHeight * 70,
                )
              ],
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 37,
            ),
            customDivider(width: MySize.scaleFactorHeight * 403),
            SizedBox(
              height: MySize.scaleFactorHeight * 9,
            ),
            customTextLight(
                title:
                    'In Evesham, we\'re unique in our approach to education. We recognize that the learning needs of a five-year-old and a ten-year-old are quite different. That\'s why we have distinct classes for three age groups: 4-6, 7-9, and 10-14-year-olds. This ensures that each student receives tailored instruction for their stage of development.',
                fontSize: MySize.size16,
                textAlign: TextAlign.justify)
          ],
        ),
      ),
    );
  }
}
