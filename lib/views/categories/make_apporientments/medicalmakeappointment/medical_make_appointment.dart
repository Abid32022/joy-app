import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/make_apporientments/medicalmakeappointment/base/medical_doctor_detail.dart';

import '../medicalAppointmentPackage/medical_appointment_package.dart';

class MedicalMakeAppointment extends StatefulWidget {
  const MedicalMakeAppointment({super.key});

  @override
  State<MedicalMakeAppointment> createState() => _MedicalMakeAppointmentState();
}

class _MedicalMakeAppointmentState extends State<MedicalMakeAppointment> {
  List appointmentDay = [
    ["Today", "4 oct"],
    ["Today", "5 oct"],
    ["Today", "6 oct"],
    ["Today", "7 oct"],
    ["Today", "8 oct"],
    ["Today", "9 oct"],
  ];
  String currentDate = "4 oct";
  String currentTime = "7:00 PM";
  List appointmentTime = [
    "7:00 PM",
    "7:30 PM",
    "8:00 PM",
    "8:30 PM",
    "9:00 PM",
    "9:30 PM",
    "10:00 PM",
    "10:30 PM",
  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
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
            MedicalMakeDoctorDetail(),
            SizedBox(
              height: MySize.scaleFactorHeight * 10,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
              child: customTextRegular(
                  title: "Book Appointment",
                  fontWeight: FontWeight.w400,
                  fontSize: MySize.size18,
                  color: AppColors.placeHolderColor4F),
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 10,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
              child: customTextMedium(
                title: "Day",
                fontWeight: FontWeight.w500,
                fontSize: MySize.size20,
              ),
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 10,
            ),
            Container(
              height: MySize.scaleFactorHeight * 80,
              child: ListView.builder(
                itemCount: appointmentDay.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: MySize.scaleFactorWidth * 24),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: MySize.scaleFactorWidth * 20),
                    child: GestureDetector(
                      onTap: () {
                        currentDate = appointmentDay[index][1];
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: currentDate == appointmentDay[index][1]
                                ? Color(0xff016F61)
                                : Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(MySize.size8),
                            border: Border.all(
                                color: currentDate == appointmentDay[index][1]
                                    ? Color(0xff016F61)
                                    : AppColors.borderColorAD,
                                width: 1)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: MySize.scaleFactorHeight * 10,
                              horizontal: MySize.scaleFactorWidth * 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customTextMedium(
                                title: appointmentDay[index][0],
                                fontWeight: FontWeight.w400,
                                color: currentDate == appointmentDay[index][1]
                                    ? AppColors.whiteColorFF
                                    : AppColors.blackColor00,
                                fontSize: MySize.size14,
                              ),
                              customTextMedium(
                                title: appointmentDay[index][1],
                                fontWeight: FontWeight.w500,
                                color: currentDate == appointmentDay[index][1]
                                    ? AppColors.whiteColorFF
                                    : AppColors.blackColor00,
                                fontSize: MySize.size18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 10,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
              child: customTextMedium(
                title: "Time",
                fontWeight: FontWeight.w500,
                fontSize: MySize.size20,
              ),
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 10,
            ),
            Container(
              height: MySize.scaleFactorHeight * 80,
              child: ListView.builder(
                itemCount: appointmentTime.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: MySize.scaleFactorWidth * 24),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: MySize.scaleFactorWidth * 20),
                    child: GestureDetector(
                      onTap: () {
                        currentTime = appointmentTime[index];
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: currentTime == appointmentTime[index]
                                ? Color(0xff016F61)
                                : Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(MySize.size8),
                            border: Border.all(
                                color: currentTime == appointmentTime[index]
                                    ? Color(0xff016F61)
                                    : AppColors.borderColorAD,
                                width: 1)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: MySize.scaleFactorWidth * 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customTextMedium(
                                title: appointmentTime[index],
                                fontWeight: FontWeight.w500,
                                color: currentTime == appointmentTime[index]
                                    ? AppColors.whiteColorFF
                                    : AppColors.blackColor00,
                                fontSize: MySize.size18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:MySize.scaleFactorWidth * 24),
              child: Column(
                children: [
                  SizedBox(
                    height: MySize.scaleFactorHeight * 15,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(color: AppColors.borderColorAD, width: 1),
                      color: AppColors.lineColorE5,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MySize.scaleFactorHeight * 5,
                          horizontal: MySize.scaleFactorWidth * 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customTextMedium(
                            title: "Want a custom schedule?",
                            fontWeight: FontWeight.w400,
                            fontSize: MySize.size14,
                          ),
                          customTextMedium(
                            title: "Request Schedule",
                            fontWeight: FontWeight.w400,
                            color: AppColors.titleColor50,
                            fontSize: MySize.size14,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 100,
                  ),
                  Divider(
                    thickness: 1,
                    color: AppColors.lineColorC8,
                  ),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 20,
                  ),
                  customButton(
                    ontap: (){
                     Get.to(MedicalAppointmentPackage());
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
                  SizedBox(
                    height: MySize.scaleFactorHeight * 20,
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
