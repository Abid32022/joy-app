import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/make_apporientments/medicaldoctordetial/base/doctor_detail.dart';
import 'package:joyapp/views/categories/make_apporientments/medicalmakeappointment/medical_make_appointment.dart';

import 'base/doctor_reviews.dart';

class MedicalDoctorDetial extends StatefulWidget {
  const MedicalDoctorDetial({super.key});

  @override
  State<MedicalDoctorDetial> createState() => _MedicalDoctorDetialState();
}

class _MedicalDoctorDetialState extends State<MedicalDoctorDetial> {
  List rewardList = [
    [AppConstant.juices_img, "Buy 1 Get Free\nJuices Island", "300 pts left"],
    [AppConstant.laundry_img, "Get AED 50 Off\nXP Laundry", "230 pts left"],
    [AppConstant.burger_img, "Oder 1 Get Free\nKing Burger", "300 pts left"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: AppointmentAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                DoctorDetail(),
                  customTextRegular(
                      title: "From our spacious balcony you can enjoy a unique view of Burj Khalifa and the magic fountains. Enjoy breakfast in the morning at our cozy dining table overlooking Dubai's old town or layback at night in our comfortable lounge seats - enjoying Burj Khalifa's video and laser shows! Also from our studio and from the comfortable bed you can enjoy full Burj Khalifa and",
                      fontWeight: FontWeight.w400,
                      fontSize: MySize.size16,
                      maxLines: 10,
                      color: AppColors.placeHolderColor4F),
                  Row(
                    children: [
                      customTextRegular(
                          title: "Show more  ",
                          fontWeight: FontWeight.w400,
                          fontSize: MySize.size16,
                          decoration: TextDecoration.underline,
                          color: AppColors.placeHolderColor4F),
                      SvgPicture.asset(
                        AppConstant.ic_arrow_forword,
                        height: MySize.scaleFactorHeight * 10,
                        width: MySize.scaleFactorWidth * 11,
                      ),
        
                    ],
                  ),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 15,
                  ),
                  customTextMedium(
                      title: "Working Hours",
                      fontSize: MySize.size20,
                      fontWeight: FontWeight.w500),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customTextMedium(
                          title: "Monday",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500),
                      customTextRegular(
                          title: "09:00 AM - 10:30 PM",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400),
        
                    ],
                  ),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customTextMedium(
                          title: "Tuesday",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500),
                      customTextRegular(
                          title: "09:00 AM - 10:30 PM",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400),
        
                    ],
                  ),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customTextMedium(
                          title: "Wednesday",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500),
                      customTextRegular(
                          title: "09:00 AM - 10:30 PM",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400),
        
                    ],
                  ),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customTextMedium(
                          title: "Thursday",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500),
                      customTextRegular(
                          title: "09:00 AM - 10:30 PM",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400),
        
                    ],
                  ),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customTextMedium(
                          title: "Friday",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500),
                      customTextRegular(
                          title: "09:00 AM - 10:30 PM",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400),
        
                    ],
                  ),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customTextMedium(
                          title: "Saturday",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500),
                      customTextRegular(
                          title: "09:00 AM - 10:30 PM",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400),
        
                    ],
                  ),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customTextMedium(
                          title: "Sunday",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500),
                      customTextRegular(
                          title: "09:00 AM - 10:30 PM",
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400),
        
                    ],
                  ),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 10,
                  ),
                  customButton(
                    ontap: (){
                      Get.to(MedicalMakeAppointment());
                    },
                    text: "MAKE APPOINTMENT",
                    width: double.infinity,
                    height: MySize.scaleFactorHeight * 46,
                    fontSize: MySize.size16,
                    borderRadius: MySize.size8,
                    borderColor: AppColors.borderColorAD,
                    fontColor: AppColors.blackColor00,
                    colors: Color(0xffD6DEDE),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 10,
            ),
            DoctorReviews(),
            SizedBox(
              height: MySize.scaleFactorHeight * 10,
            ),
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
                    height: MySize.size7,
                  ),
                  customTextRegular(
                      title: "7250 Keele St, Vaughan, ON L4K 1Z8, Canada",
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w400),
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
                    colors: Color(0xffD6DEDE),
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

                  customTextMedium(
                      title: "Coupon available for a discount.",
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
                    colors: Color(0xffD6DEDE),
                  ),
                  SizedBox(
                    height: MySize.size10,
                  ),
                  Divider(
                    thickness: 1,
                    color: AppColors.lineColorC8,
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:  24),
              child: customTextMedium(
                  title: "Unlock Exclusive Rewards",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: MySize.size10,
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
            SizedBox(
              height: MySize.scaleFactorHeight* 10,
            ),
          ],
        ),
      ),
    );
  }
}
