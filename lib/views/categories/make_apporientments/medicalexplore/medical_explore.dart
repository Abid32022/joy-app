import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../../../../utils/appcolors.dart';
import '../../../../utils/appconstant.dart';
import '../../../base/appointment_app_bar.dart';
import '../../../base/textfield.dart';
import 'component/doctor_speciality.dart';
import 'component/nearby_hospitals.dart';
import 'component/top_speciality.dart';

class MedicalExplore extends StatefulWidget {
  const MedicalExplore({super.key});

  @override
  State<MedicalExplore> createState() => _MedicalExploreState();
}

class _MedicalExploreState extends State<MedicalExplore> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: AppointmentAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MySize.size24,vertical: MySize.size15),
          child: Column(children: [
            Row(
              children: [
                Expanded(
                  child: Container(
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
                ),
                SizedBox(
                  width: MySize.scaleFactorHeight * 12,
                ),
                SvgPicture.asset(AppConstant.ic_menu_listing,
                    height: MySize.size44),
              ],
            ),
            SizedBox(height: MySize.size18),
            Row(
              children: [
                customTextMedium(
                    title: "Upcoming Schedule",
                    fontSize: MySize.size18,
                    fontWeight: FontWeight.w500),
                SizedBox(width: MySize.size6),
                Wrap(
                  children: [
                    CircleAvatar(
                      radius: MySize.size12,
                      backgroundColor: AppColors.primaryColor62,
                      child: customTextRegular(
                          title: "12",
                          fontSize: MySize.size12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteColorFF),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: MySize.size12),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  color: AppColors.primaryColor62),
              child: Column(children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Image(image: AssetImage(AppConstant.doctor1_img)),
                  ),
                  title: customTextMedium(
                    title: "Dr. Alana Rueter",
                    fontSize: MySize.size18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.whiteColorFF,
                  ),
                  subtitle: customTextRegular(
                    title: "Dentist Consultation",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteColorFF,
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.whiteColorFF,
                    child: SvgPicture.asset(AppConstant.ic_phone2),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: MySize.size20,bottom: MySize.size20,right: MySize.size18),
                  padding: EdgeInsets.symmetric(
                      vertical: MySize.size14, horizontal: MySize.size16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    color: Color(0xFF005B50),
                  ),
                  child: Row(children: [
                    SvgPicture.asset(
                      AppConstant.ic_class_date,
                      color: AppColors.whiteColorFF,
                    ),
                    SizedBox(
                      width: MySize.size12,
                    ),
                    customTextRegular(
                        title: "Monday, 26 July",
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.whiteColorFF),
                    VerticalDivider(
                      color:AppColors.whiteColorFF,
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      AppConstant.ic_clock,
                      color: AppColors.whiteColorFF,
                      height: MySize.size25,
                    ),
                    SizedBox(
                      width: MySize.size12,
                    ),
                    customTextRegular(
                        title: "09:00 - 10:00",
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.whiteColorFF),
                  ]),
                ),
              ]),
            ),
            SizedBox(height: MySize.size18),
            DoctorSpeciality(),
            SizedBox(height: MySize.size10),
            NearbyHospitals(),
            SizedBox(height: MySize.size10),
            TopSpeciality(),
          ]),
        ),
      ),
    ));
  }
}
