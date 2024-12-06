import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../utils/appcolors.dart';
import '../../../../utils/appconstant.dart';
import '../../../../utils/mysize.dart';
import '../../../base/custom_app_bar.dart';
import '../../../base/custom_button.dart';
import '../../../base/custom_divider.dart';
import '../../../base/custom_textwidget.dart';
import 'base/base.dart';

Widget buildMartialAcademyContainer(
    String imageAsset, String logoAsset, Function ontap, Function ontap2) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(MySize.size10),
      border: Border.all(color: AppColors.borderColorAD, width: 0.3),
    ),
    child: Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Stack(
            children: [
              Image.asset(
                imageAsset,
                fit: BoxFit.cover,
                width: MySize.scaleFactorHeight * 410,
                height: MySize.scaleFactorHeight * 231,
              ),
              Positioned(
                  top: MySize.scaleFactorHeight * 11,
                  left: MySize.scaleFactorHeight * 6,
                  child: InkWell(
                    child: SvgPicture.asset(
                      AppConstant.ic_selectable,
                      height: MySize.size20,
                      width: MySize.size20,
                    ),
                    onTap: () {},
                  ))
            ],
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customTextMedium(
                          title: "Apex Martial Arts Academy",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500),
                      SizedBox(
                        width: MySize.scaleFactorHeight * 110,
                      ),
                      customTextMedium(
                          title: '12/30',
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500),
                    ],
                  ),
                  customTextLight(
                      title:
                          'In Evesham, we\'re unique in our approach to education.\nWe recognize that the learning needs of a five...',
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.left),
                  SizedBox(
                    height: MySize.size8,
                  ),
                  Container(
                    width: MySize.scaleFactorHeight * 325,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: 'Karate',
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.borderColorsDC),
                        customTextLight(
                            title: 'Mon 21 Aug 2023',
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.borderColorsDC),
                        customTextLight(
                            title: '07:00 PM - 08:30 PM',
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.borderColorsDC),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding:
                    EdgeInsets.only(top: MySize.size18, right: MySize.size4),
                child: SvgPicture.asset(
                  AppConstant.ic_vertical,
                  width: MySize.size26,
                  height: MySize.size26,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MySize.size6,
        ),
        customDivider(width: MySize.scaleFactorHeight * 380),
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
                text: 'DETAILS',
                borderRadius: MySize.size10,
                colors: AppColors.lineColorE4,
                borderColor: AppColors.lineColorE4,
                fontWeight: FontWeight.w500,
              ),
              customButton(
                ontap: ontap2,
                width: MySize.scaleFactorHeight * 165,
                height: MySize.size40,
                text: 'BOOK NOW',
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

class MartialClasses extends StatefulWidget {
  const MartialClasses({Key? key}) : super(key: key);

  @override
  State<MartialClasses> createState() => _MartialClassesState();
}

class _MartialClassesState extends State<MartialClasses>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> tabItems = [
    'Kids',
    'Adults',
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
                                AppConstant.ic_adult_image1,
                                AppConstant.ic_martial_logo1, () {
                              BottomSheetMethods().ClassesDetailsSheet(context);
                            }, () {
                              BottomSheetMethods().ClassBookingSheet(context);
                            }),
                            SizedBox(
                              height: MySize.size20,
                            ),
                            buildMartialAcademyContainer(
                                AppConstant.ic_adult_image2,
                                AppConstant.ic_martial_logo2, () {
                              BottomSheetMethods().ClassesDetailsSheet(context);
                            }, () {
                              BottomSheetMethods().ClassBookingSheet(context);
                            }),
                            SizedBox(
                              height: MySize.size20,
                            ),
                            buildMartialAcademyContainer(
                              AppConstant.ic_adult_image1,
                              AppConstant.ic_martial_logo1,
                              () {
                                BottomSheetMethods()
                                    .ClassesDetailsSheet(context);
                              },
                              () {
                                BottomSheetMethods().ClassBookingSheet(context);
                              },
                            ),
                            SizedBox(
                              height: MySize.size20,
                            ),
                            buildMartialAcademyContainer(
                              AppConstant.ic_adult_image2,
                              AppConstant.ic_martial_logo2,
                              () {
                                BottomSheetMethods()
                                    .ClassesDetailsSheet(context);
                              },
                              () {
                                BottomSheetMethods().ClassBookingSheet(context);
                              },
                            ),
                            SizedBox(
                              height: MySize.size20,
                            ),
                            buildMartialAcademyContainer(
                              AppConstant.ic_adult_image1,
                              AppConstant.ic_martial_logo1,
                              () {
                                BottomSheetMethods()
                                    .ClassesDetailsSheet(context);
                              },
                              () {
                                BottomSheetMethods().ClassBookingSheet(context);
                              },
                            ),
                            SizedBox(
                              height: MySize.size20,
                            ),
                            buildMartialAcademyContainer(
                              AppConstant.ic_adult_image2,
                              AppConstant.ic_martial_logo2,
                              () {
                                BottomSheetMethods()
                                    .ClassesDetailsSheet(context);
                              },
                              () {
                                BottomSheetMethods().ClassBookingSheet(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: MySize.size12),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            buildMartialAcademyContainer(
                              AppConstant.ic_martial_image1,
                              AppConstant.ic_martial_logo1,
                              () {
                                BottomSheetMethods()
                                    .ClassesDetailsSheet(context);
                              },
                              () {
                                BottomSheetMethods().ClassBookingSheet(context);
                              },
                            ),
                            SizedBox(
                              height: MySize.size20,
                            ),
                            buildMartialAcademyContainer(
                              AppConstant.ic_martial_image2,
                              AppConstant.ic_martial_logo2,
                              () {
                                BottomSheetMethods()
                                    .ClassesDetailsSheet(context);
                              },
                              () {
                                BottomSheetMethods().ClassBookingSheet(context);
                              },
                            ),
                            SizedBox(
                              height: MySize.size16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
