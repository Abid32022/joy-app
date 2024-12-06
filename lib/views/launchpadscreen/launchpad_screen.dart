import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/deliveryservice/deliveryrestaurantlist/delivery_restaurant_list.dart';
import 'package:joyapp/views/categories/hotelservice/hotelplaceslist/hotel_places_list.dart';
import 'package:joyapp/views/categories/laundryservice/laundryservice/laundry_service.dart';
import 'package:joyapp/views/categories/make_apporientments/appoinmentbottomnavigation/appointment_bottom_navigation_bar.dart';
import 'package:joyapp/views/categories/make_apporientments/hospitallocation/hospital_location.dart';
import 'package:joyapp/views/categories/make_apporientments/medicaldoctordetial/medical_doctor_detial.dart';


import 'package:joyapp/views/categories/sell&rent/propertylisting/property_listing.dart';
import 'package:joyapp/views/categories/vendorServices/vendorServiceScreen/vendorServiceScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../categories/donation/donation_tab_bar/donation_tab_bar.dart';
import '../categories/donation/donationlist/donation_list.dart';
import '../categories/martial_service/martial_academies/martial_academies.dart';
import '../categories/parcel_services/parceldashboard/parcel_dashboard.dart';
import '../categories/parcel_services/summary/summary.dart';
import '../categories/rent&sellfilter/searchpropertysearch/propertysearch.dart';
import '../categories/rentalservice/placeslist/places_list.dart';
import '../categories/roomshareservice/room_property_listing.dart';
import '../categories/sidemenu/Payments&Payout/paymentsAndPayouts/payments_and_payouts.dart';
import '../categories/sidemenu/side_menu.dart';
import '../categories/xp_parcelservice/xpparceldelivery/xp_parcel_delivery.dart';
import 'base/discount_coupon.dart';

class LaunchedPadScreen extends StatefulWidget {
  const LaunchedPadScreen({super.key});

  @override
  State<LaunchedPadScreen> createState() => _LaunchedPadScreenState();
}

PageController controller = PageController();
PageController controller1 = PageController();
int _currentPage = 0;

class _LaunchedPadScreenState extends State<LaunchedPadScreen> {
  List screens = [
    ProfertyListing(),
    PlacesList(),
    RoomPropertyListing(),
    HotelPlaceList(),
    LaundryService(),
    VendorServiceScreen(),
    MartialAcademiesScreen(),
    DeliveryRestaurantList(),
    AppointmentBottomNavigation(),
    ParcelDashBoard(),
    DonationTabBar(),
    XpParcelDelivery(),
    SearchPropertyScreen(),
    SideMenu(),
    paymentsAndPayouts(),
  ];
  List<String> categoriesList = [
    AppConstant.ic_home,
    AppConstant.ic_rental,
    AppConstant.ic_room_share,
    AppConstant.ic_hotel_room,
    AppConstant.ic_laundry,
    AppConstant.ic_handyman,
    AppConstant.ic_martial,
    AppConstant.ic_donation,
    AppConstant.ic_medical,
    AppConstant.ic_grocery,
    AppConstant.ic_sport,
    AppConstant.ic_shop,
    AppConstant.ic_events,
    AppConstant.ic_travel_tour,
    AppConstant.ic_parcell_delivery,
  ];
  int screenIndex = -1;


  List rewardList = [
    [AppConstant.juices_img, "Buy 1 Get Free\nJuices Island", "300 pts left"],
    [AppConstant.laundry_img, "Get AED 50 Off\nXP Laundry", "230 pts left"],
    [AppConstant.burger_img, "Oder 1 Get Free\nKing Burger", "300 pts left"],
  ];
  List topOfferList = [
    [
      Color(0xff057366),
      AppConstant.launchpad_housejoy_logo,
      "Get up to CAD 10",
      "Refer a friend"
    ],
    [
      Color(0xff005585),
      AppConstant.launchpad_martial_logo,
      "Get up to CAD 10",
      "Became a School"
    ],
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // CustomAppBar(backArrow: (){
            //   Get.back();
            // },
            //   verifiedVisibile: false,
            // ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: MySize.scaleFactorHeight *12,),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MySize.size23),
                child: Container(
                  // width: MySize.scaleFactorWidth * 377,
                  height: MySize.scaleFactorHeight * 254,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size12),
                    color: AppColors.containerBackGroundColorEF,
                  ),
                  child: Row(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: MySize.size30),
                        Container(
                          width: MySize.scaleFactorWidth * 95,
                          height: MySize.scaleFactorHeight * 31,
                          decoration: BoxDecoration(
                              color: AppColors.whiteColorFF,
                              border: Border.all(color: Color(0xFF005B50)),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(
                                      MySize.scaleFactorHeight * 20),
                                  bottomRight: Radius.circular(
                                      MySize.scaleFactorHeight * 20))),
                          child: Row(children: [
                            Container(
                              width: MySize.scaleFactorWidth * 43,
                              height: MySize.scaleFactorHeight * 31,
                              decoration: BoxDecoration(
                                  color: Color(0xFF005B50),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(
                                          MySize.scaleFactorHeight * 20),
                                      bottomRight: Radius.circular(
                                          MySize.scaleFactorHeight * 20))),
                              child: Center(
                                child: SvgPicture.asset(AppConstant.ic_logo,
                                    height: MySize.scaleFactorHeight * 23,
                                    width: MySize.scaleFactorWidth * 17),
                              ),
                            ),
                            SizedBox(width: MySize.scaleFactorWidth * 6),
                            SvgPicture.asset(
                              AppConstant.ic_brand_logo,
                              height: MySize.scaleFactorHeight * 19.51,
                              width: MySize.scaleFactorWidth * 30,
                            ),
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: MySize.size80, left: MySize.size18),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                customTextBold(
                                    title: "Win Umrah tickets",
                                    fontSize: MySize.size20,
                                    fontWeight: FontWeight.w700),
                                customTextLight(
                                    title: "Promocode: NiagaraFalls",
                                    fontSize: MySize.size16,
                                    fontWeight: FontWeight.w400),
                                Row(
                                  children: [
                                    customTextBold(
                                        title: "Place Order",
                                        fontSize: MySize.size17,
                                        fontWeight: FontWeight.w500),
                                    SvgPicture.asset(
                                      AppConstant.ic_arrow_forword,
                                      height: MySize.scaleFactorHeight * 11,
                                      width: MySize.scaleFactorWidth * 16,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: MySize.size6,
                                ),
                                SmoothPageIndicator(
                                    controller: controller,
                                    count: 4,
                                    effect: WormEffect(
                                      spacing: 1,
                                      dotHeight: 4,
                                      dotWidth:  10,
                                      activeDotColor: Color(0xffCF9671),
                                      dotColor: Color(0xffD8AA8B).withOpacity(0.2),
                                    ),
                                    onDotClicked: (index) {
                                      controller.animateToPage(
                                        index,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.easeInOut,
                                      );
                                    }),
                              ]),
                        ),
                      ],
                    ),
                    Spacer(),
                    SizedBox(
                      width: MySize.scaleFactorWidth * 130,
                      child: PageView(
                        controller: controller,
                        onPageChanged: (index) {
                          setState(() {
                            _currentPage = index;
                          });
                        },
                        children: [
                          Image(
                            image: AssetImage(
                              AppConstant.launchedpad_img,
                            ),
                            fit: BoxFit.fill,
                            height: MySize.scaleFactorHeight * 254,
                          ),
                          Image(
                            image: AssetImage(
                              AppConstant.launchedpad_img,
                            ),
                            fit: BoxFit.fill,
                            height: MySize.scaleFactorHeight * 254,
                          ),
                          Image(
                            image: AssetImage(
                              AppConstant.launchedpad_img,
                            ),
                            fit: BoxFit.fill,
                            height: MySize.scaleFactorHeight * 254,
                          ),
                          Image(
                            image: AssetImage(
                              AppConstant.launchedpad_img,
                            ),
                            fit: BoxFit.fill,
                            height: MySize.scaleFactorHeight * 254,
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              ),
              SizedBox(height: MySize.size24),
              InkWell(
                onTap: (){
                  Get.to(ParcelDashBoard());
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MySize.size23),
                  child: customTextBold(
                      title: "Categories",
                      fontSize: MySize.size20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: MySize.size15),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MySize.size23),
                child: Container(
                  child: GridView.builder(
                    itemCount: categoriesList.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 5),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){

                          if(screenIndex == index){}
                          else if(screenIndex >= -1 && screenIndex < screens.length ){
                            Get.to(screens[index]);
                          }
                          else{setState(() {
                            screenIndex = index;
                            print(screenIndex);
                          });}
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          width: MySize.scaleFactorWidth * 62,
                          height: MySize.scaleFactorHeight * 62,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(MySize.size35),
                              border: Border.all(color: AppColors.lineColorAD),
                              // shape: BoxShape.circle,
                              color: Color(0xffF7F7F7)),
                          child: SvgPicture.asset(
                            categoriesList[index].toString(),
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: MySize.size20),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MySize.size23),
                child: customTextBold(
                    title: "Top Offer",
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MySize.size12),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: MySize.size24),
                  physics: BouncingScrollPhysics(),
                  itemCount: topOfferList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: MySize.size10),
                      padding: EdgeInsets.symmetric(
                          vertical: MySize.size10, horizontal: MySize.size10),
                      width: MySize.scaleFactorWidth * 181,
                      height: MySize.scaleFactorHeight * 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MySize.size10),
                          color: topOfferList[index][0]),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              topOfferList[index][1],
                              height: MySize.scaleFactorHeight * 42,
                            ),
                            Spacer(),
                            customTextMedium(
                                title: topOfferList[index][2],
                                fontSize: MySize.size15,
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColorFF),
                            customTextMedium(
                                title: topOfferList[index][3],
                                fontSize: MySize.size15,
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColorFF),
                          ]),
                    );
                  },
                ),
              ),
              SizedBox(height: MySize.size20),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MySize.size23),
                child: customTextBold(
                    title: "Discount & Coupon",
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MySize.size10),
              PageViewContainer(),
              SizedBox(
                height: MySize.size15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MySize.size23),
                child: customTextBold(
                    title: "Unlock Exclusive Rewards",
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MySize.size14),
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
                              borderRadius: BorderRadius.circular(MySize.size10),
                            ),
                            child: Stack(
                              children: [
                                Image(
                                  image:
                                  AssetImage(rewardList[index][0].toString()),
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
                            // width: 100,
                          )
                          // Divider(
                          //   endIndent: 8,
                          //   indent: 8,
                          //   height:10,
                          //   thickness: 5,
                          //   color: Colors.red,
                          // )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}