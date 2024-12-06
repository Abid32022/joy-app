import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/roomshareservice/roompropertydetail/base/room_entire_rental.dart';
import 'package:joyapp/views/categories/roomshareservice/roompropertydetail/base/room_mate.dart';
import 'package:joyapp/views/categories/roomshareservice/roompropertydetail/base/room_property_reviews.dart';
import 'package:joyapp/views/categories/roomshareservice/roompropertydetail/base/room_property_view.dart';
import 'package:joyapp/views/categories/roomshareservice/roompropertymap2/room_property_map2.dart';
class RoomPropertyDetail extends StatefulWidget {
  const RoomPropertyDetail({super.key});

  @override
  State<RoomPropertyDetail> createState() => _RoomPropertyDetailState();
}

class _RoomPropertyDetailState extends State<RoomPropertyDetail> {
  List rewardList = [
    [AppConstant.juices_img, "Buy 1 Get Free\nJuices Island", "300 pts left"],
    [AppConstant.laundry_img, "Get AED 50 Off\nXP Laundry", "230 pts left"],
    [AppConstant.burger_img, "Oder 1 Get Free\nKing Burger", "300 pts left"],
  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          onBackTap: () {
            Get.back();
          },
          verifiedVisibile: false,
        ),
        backgroundColor: AppColors.backGroundColorFA,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RoomPropertyView(
                imageUrl: AppConstant.house1,
                title: 'Charming Guest House for Sale',
                description:
                'Profitable Guest House for Sale: A Turnkey Investment...',
                saleType: 'Sale',
                price: '\$84,900,000',
                currency: 'CAD',
                propertyType: 'Guest House',
              ),
              RoomEntireRental(
                title: "Entire rental unit hosted",
                propertyDetails: "8 bed . 4 bath . 2 garage . 2 stories",
                imageAsset: AppConstant.tablet_horizontal,
                profileImage: AppConstant.dpp2,
                name: "Adnan",
                role: "UI UX Designer",
                reviews: "419",
                listing: "67",
                experience: "8",
              ),

              SizedBox(
                height: MySize.size14,
              ),
              RoomMate(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MySize.scaleFactorWidth * 24),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(MySize.size14),
                      child: Image.asset(
                        AppConstant.house2,
                        height: MySize.scaleFactorHeight * 288,
                        width: double.infinity,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(MySize.size14),
                          child: Image.asset(
                            AppConstant.house3,
                            height: MySize.scaleFactorHeight * 140,
                            width: MediaQuery.of(context).size.width * 0.42,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(MySize.size14),
                          child: Image.asset(
                            AppConstant.house4,
                            height: MySize.scaleFactorHeight * 140,
                            width: MediaQuery.of(context).size.width * 0.42,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(MySize.size14),
                          child: Image.asset(
                            AppConstant.house5,
                            height: MySize.scaleFactorHeight * 140,
                            width: MediaQuery.of(context).size.width * 0.42,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(MySize.size14),
                          child: Image.asset(
                            AppConstant.house6,
                            height: MySize.scaleFactorHeight * 140,
                            width: MediaQuery.of(context).size.width * 0.42,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MySize.size14,
                    ),
                    customButton(
                      text: "Show all 20 photos",
                      width: double.infinity,
                      height: MySize.scaleFactorHeight * 46,
                      fontSize: MySize.size16,
                      borderRadius: MySize.size8,
                      borderColor: AppColors.borderColorAD,
                      fontColor: AppColors.blackColor00,
                      colors: Color(0xffe5f5fc),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MySize.size14,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MySize.scaleFactorWidth * 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextMedium(
                        title: "What this place offer",
                        fontSize: MySize.size20,
                        fontWeight: FontWeight.w500),
                    SizedBox(
                      height: MySize.size14,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppConstant.garden_view,
                          height: MySize.scaleFactorHeight * 25,
                          width: MySize.scaleFactorWidth * 25,
                        ),
                        SizedBox(
                          width: MySize.size14,
                        ),
                        customTextRegular(
                            title: "Garden View",
                            fontSize: MySize.size18,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(
                      height: MySize.size15,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppConstant.property_manager,
                          height: MySize.scaleFactorHeight * 25,
                          width: MySize.scaleFactorWidth * 25,
                        ),
                        SizedBox(
                          width: MySize.size14,
                        ),
                        customTextRegular(
                            title: "Property manager",
                            fontSize: MySize.size18,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(
                      height: MySize.size15,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppConstant.kitchen,
                          height: MySize.scaleFactorHeight * 25,
                          width: MySize.scaleFactorWidth * 25,
                        ),
                        SizedBox(
                          width: MySize.size14,
                        ),
                        customTextRegular(
                            title: "Kitchen",
                            fontSize: MySize.size18,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(
                      height: MySize.size15,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppConstant.wifi,
                          height: MySize.scaleFactorHeight * 25,
                          width: MySize.scaleFactorWidth * 25,
                        ),
                        SizedBox(
                          width: MySize.size14,
                        ),
                        customTextRegular(
                            title: "Wifi",
                            fontSize: MySize.size18,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(
                      height: MySize.size15,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppConstant.work_space,
                          height: MySize.scaleFactorHeight * 25,
                          width: MySize.scaleFactorWidth * 25,
                        ),
                        SizedBox(
                          width: MySize.size14,
                        ),
                        customTextRegular(
                            title: "Dedicated workspace",
                            fontSize: MySize.size18,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(
                      height: MySize.size14,
                    ),
                    customButton(
                      text: "Show all 50 amenities",
                      width: double.infinity,
                      height: MySize.scaleFactorHeight * 46,
                      fontSize: MySize.size16,
                      borderRadius: MySize.size8,
                      borderColor: AppColors.borderColorAD,
                      fontColor: AppColors.blackColor00,
                      colors: Color(0xffe5f5fc),
                    ),
                    SizedBox(
                      height: MySize.size14,
                    ),
                    Divider(
                      thickness: 1,
                      color: AppColors.lineColorC8,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MySize.size14,
              ),



              RoomPropertyReviews(),




              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MySize.scaleFactorWidth * 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextMedium(
                        title: "Where can it be found?",
                        fontSize: MySize.size20,
                        fontWeight: FontWeight.w500),
                    SizedBox(
                      height: MySize.size14,
                    ),
                    customTextRegular(
                        title: "Toronto, Canada",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400),
                    SizedBox(
                      height: MySize.size10,
                    ),
                    Image.asset(
                      AppConstant.google_mapppp,
                      height: MySize.scaleFactorHeight * 257,
                      width: double.infinity,
                    ),
                    SizedBox(
                      height: MySize.size10,
                    ),
                    customTextMedium(
                        title: "Comment on announcement",
                        fontSize: MySize.size20,
                        fontWeight: FontWeight.w500),
                    SizedBox(
                      height: MySize.size10,
                    ),
                    Container(
                      child: ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.borderColorAD, width: 1),
                                  borderRadius:
                                  BorderRadius.circular(MySize.size8),
                                  color: AppColors.backGroundColorFA),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: MySize.scaleFactorWidth * 18,
                                    vertical: MySize.scaleFactorHeight * 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    customTextRegular(
                                        title:
                                        "Student with dependent visa ratio kemon? Father of applicant can be a Sponsor without any issue?",
                                        fontSize: MySize.size16,
                                        fontWeight: FontWeight.w400),
                                    SizedBox(
                                      height: MySize.size14,
                                    ),
                                    ListTile(
                                        leading: Image.asset(
                                          AppConstant.andre,
                                          height: MySize.scaleFactorHeight * 52,
                                          width: MySize.scaleFactorWidth * 52,
                                          fit: BoxFit.fill,
                                        ),
                                        title: customTextMedium(
                                            title: "Andrea",
                                            fontSize: MySize.size16,
                                            fontWeight: FontWeight.w500),
                                        subtitle: customTextRegular(
                                            title: "1 day ago",
                                            fontSize: MySize.size16,
                                            color: AppColors.lineColorC8,
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: MySize.size10,
                    ),
                    customButton(
                      text: "Show all 50 comments",
                      width: double.infinity,
                      height: MySize.scaleFactorHeight * 46,
                      fontSize: MySize.size16,
                      borderRadius: MySize.size8,
                      borderColor: AppColors.borderColorAD,
                      fontColor: AppColors.blackColor00,
                      colors: Color(0xffe5f5fc),
                    ),
                    SizedBox(
                      height: MySize.size10,
                    ),
                    Divider(
                      thickness: 1,
                      color: AppColors.lineColorC8,
                    ),
                    SizedBox(
                      height: MySize.size10,
                    ),
                    Container(
                      child: ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(MySize.size10),
                                  border: Border.all(
                                      color: AppColors.borderColorAD)),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(children: [
                                  CircleAvatar(
                                    backgroundImage:
                                    AssetImage(AppConstant.KFC_img),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      customTextMedium(
                                          title: "10-40% OFF",
                                          fontSize: MySize.size16,
                                          fontWeight: FontWeight.w500),
                                      customTextLight(
                                          title:
                                          "Flat Discounts on Every Purchase!",
                                          fontSize: MySize.size14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                      SizedBox(
                                          height:
                                          MySize.scaleFactorHeight * 10),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: MySize.size10,
                                                vertical: MySize.size6),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  MySize.size20),
                                              color: Color(0xFFFBF6B5),
                                            ),
                                            child: Row(children: [
                                              Icon(
                                                Icons.star,
                                                size: MySize.size15,
                                                color: Colors.orange,
                                              ),
                                              customTextMedium(
                                                  title: "4.5",
                                                  fontSize: MySize.size14,
                                                  fontWeight: FontWeight.w500),
                                            ]),
                                          ),
                                          SizedBox(
                                            width: MySize.size15,
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: MySize.size10,
                                                vertical: MySize.size6),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  MySize.size20),
                                              color: Color(0xFFD6FAFD),
                                            ),
                                            child: customTextMedium(
                                              title: "Food",
                                              fontSize: MySize.size14,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF40AFB8),
                                            ),
                                          ),
                                          SizedBox(
                                            width: MySize.size15,
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: MySize.size10,
                                                vertical: MySize.size6),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  MySize.size20),
                                              color: Color(0xFFFAE8FB),
                                            ),
                                            child: customTextMedium(
                                              title: "15 Days",
                                              fontSize: MySize.size14,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFFC054C6),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: MySize.size10,
                    ),
                    customButton(
                      text: "Show all 5 coupons",
                      width: double.infinity,
                      height: MySize.scaleFactorHeight * 46,
                      fontSize: MySize.size16,
                      borderRadius: MySize.size8,
                      borderColor: AppColors.borderColorAD,
                      fontColor: AppColors.blackColor00,
                      colors: Color(0xffe5f5fc),
                    ),
                    SizedBox(
                      height: MySize.size10,
                    ),
                    Divider(
                      thickness: 1,
                      color: AppColors.lineColorC8,
                    ),
                    SizedBox(
                      height: MySize.size10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MySize.scaleFactorHeight * 210,
                child: ListView.builder(
                  shrinkWrap: true,
                  // physics: BouncingScrollPhysics(),
                  itemCount: rewardList.length,
                  padding: EdgeInsets.only(left: MySize.size23),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: MySize.size10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MySize.scaleFactorWidth * 118,
                            height: MySize.scaleFactorHeight * 90,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(MySize.size10),
                            ),
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage(
                                      rewardList[index][0].toString()),
                                  width: MySize.scaleFactorWidth * 118,
                                  height: MySize.scaleFactorHeight * 90,
                                  fit: BoxFit.fill,
                                ),
                                Center(
                                    child: CircleAvatar(
                                      backgroundColor: AppColors.blackColor00,
                                      child: SvgPicture.asset(AppConstant.ic_lock),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(height: MySize.size12),
                          customTextBold(
                              title: rewardList[index][1].toString(),
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500),
                          SizedBox(height: MySize.size8),
                          customTextMedium(
                              title: rewardList[index][2].toString(),
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyColorAD),
                          SizedBox(
                            height: MySize.size12,
                          ),
                          Container(
                            color: Color(0xffC6C6C8),
                            width: 100,
                            height: 1,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MySize.scaleFactorWidth * 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextRegular(
                        title: "From our spacious balcony you can enjoy a unique view of Burj Khalifa and the magic fountains. Enjoy breakfast in the morning at our cozy dining table overlooking Dubai's old town or layback at night in our comfortable lounge seats - enjoying Burj Khalifa's video and laser shows! Also from our studio and from the comfortable bed you can enjoy full Burj Khalifa and",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400,
                        maxLines: 5),
                    Row(
                      children: [
                        customTextRegular(
                          title: "Show more",
                          decoration: TextDecoration.underline,
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          width: MySize.scaleFactorWidth * 10,
                        ),
                        SvgPicture.asset(AppConstant.ic_arrow_forword),
                      ],
                    ),
                    SizedBox(
                      height: MySize.size10,
                    ),
                    Divider(
                      thickness: 1,
                      color: AppColors.lineColorC8,
                    ),
                    SizedBox(
                      height: MySize.size10,
                    ),
                  ],
                ),
              ),
              Container(
                height: MySize.scaleFactorHeight *380,
                child: ListView.builder(
                  itemCount: 3,
                  physics: AlwaysScrollableScrollPhysics(),
                  padding:  EdgeInsets.only(left: 24),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding:  EdgeInsets.only(right: 10),
                      child: Container(
                        width: MySize.scaleFactorWidth * 297,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(MySize.size8),
                                child: Image.asset(
                                  AppConstant.house2,
                                  width: MySize.scaleFactorWidth * 297,
                                  height: MySize.scaleFactorHeight * 291,
                                  fit: BoxFit.fill,
                                )
                            ),
                            SizedBox(
                              height: MySize.scaleFactorHeight * 10,
                            ),
                            Row(
                              children: [
                                customTextRegular(
                                    title: 'Rent ',
                                    fontSize: MySize.size16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff004E44),
                                    decoration: TextDecoration.underline
                                ),
                                customTextMedium(
                                    title: '\$1,490',
                                    fontSize: MySize.size16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.blackColor00,
                                    decoration: TextDecoration.underline
                                ),
                                customTextRegular(
                                    title: ' CAD',
                                    fontSize: MySize.size16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.lineColorAD,
                                    decoration: TextDecoration.underline
                                ),
                                Spacer(),
                                customTextRegular(
                                  title: 'Guest House',
                                  fontSize: MySize.size16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.lineColorAD,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MySize.scaleFactorHeight * 10,
                            ),
                            customTextRegular(
                              title: 'Toronto, Canada',
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.lineColorC8,
                            ),

                          ],
                        ),
                      ),
                    );
                  },),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
                child: Row(
                  children: [
                    customTextRegular(
                      title: "Show more",
                      decoration: TextDecoration.underline,
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      width: MySize.scaleFactorWidth * 10,
                    ),
                    SvgPicture.asset(AppConstant.ic_arrow_forword),
                  ],
                ),
              ),
              SizedBox(
                height: MySize.scaleFactorHeight* 10,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: MySize.scaleFactorHeight * 60,
          width: double.infinity,
          color: AppColors.backGroundColorFA,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customButton(
                    ontap: (){
                      Get.to(RoomPropertyMap2());
                    },
                    text: 'Book Tour',
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400,
                    height: MySize.scaleFactorHeight * 45,
                    width: double.infinity,
                    colors:Color(0xffD6DEDE),
                    fontColor: AppColors.blackColor00,
                    borderRadius: MySize.size14
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
