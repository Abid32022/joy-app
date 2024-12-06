import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';
import 'package:joyapp/views/categories/editprofile/profileedit/profile_edit.dart';
import 'package:joyapp/views/categories/editprofile/showprofile/base/profile_picture.dart';

class ShowProfile extends StatefulWidget {
  const ShowProfile({super.key});

  @override
  State<ShowProfile> createState() => _ShowProfileState();
}

class _ShowProfileState extends State<ShowProfile> {
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
          padding: EdgeInsets.symmetric(horizontal: MySize.size24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size14,
              ),
              ProfielPicture(),
              SizedBox(
                height: MySize.size20,
              ),
              customTextMedium(
                  title: "Your Profile",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.size14,
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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppConstant.ic_person_svg),
                          SizedBox(
                            width: MySize.size12,
                          ),
                          customTextRegular(
                              title: "adnanq",
                              fontSize: MySize.size18,
                              fontWeight: FontWeight.w400),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.lineColorC8,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(AppConstant.ic_call),
                          SizedBox(
                            width: MySize.size12,
                          ),
                          customTextRegular(
                              title: "+923008134076",
                              fontSize: MySize.size18,
                              fontWeight: FontWeight.w400),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.lineColorC8,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(AppConstant.ic_gmail),
                          SizedBox(
                            width: MySize.size12,
                          ),
                          customTextRegular(
                              title: "adnan.ahsan21@gmail.com",
                              fontSize: MySize.size18,
                              fontWeight: FontWeight.w400),
                        ],
                      ),
        
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size20,
              ),
              customTextMedium(
                  title: "Your Profile",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.size14,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  color: AppColors.backGroundColorFA,
                  border: Border.all(color: AppColors.lineColorC8, width: 1,),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: MySize.size15,horizontal: MySize.size14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextMedium(
                          title: "What school did I attend?",
                          fontSize: MySize.size14,
                          color: AppColors.lineColor60,
                          fontWeight: FontWeight.w500),
                      customTextRegular(
                          title: "University of Toronto, Canada",
                          fontSize: MySize.size18,
                          color: AppColors.lineColor60,
                          fontWeight: FontWeight.w400
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.lineColorC8,
                      ),
                      customTextMedium(
                          title: "Working In",
                          fontSize: MySize.size14,
                          color: AppColors.lineColor60,
                          fontWeight: FontWeight.w500),
                      customTextRegular(
                          title: "Kaimeramedia Imc",
                          fontSize: MySize.size18,
                          color: AppColors.lineColor60,
                          fontWeight: FontWeight.w400),
                      Divider(
                        thickness: 1,
                        color: AppColors.lineColorC8,
                      ),
                      customTextMedium(
                          title: "Languages I speek",
                          fontSize: MySize.size14,
                          color: AppColors.lineColor60,
                          fontWeight: FontWeight.w500),
                      customTextRegular(
                          title: "English, Urdu, Hindi",
                          fontSize: MySize.size18,
                          color: AppColors.lineColor60,
                          fontWeight: FontWeight.w400),
                      Divider(
                        thickness: 1,
                        color: AppColors.lineColorC8,
                      ),
                      customTextMedium(
                          title: "Where I live",
                          fontSize: MySize.size14,
                          color: AppColors.lineColor60,
                          fontWeight: FontWeight.w500),
                      customTextRegular(
                          title: "Toronto, Canada",
                          fontSize: MySize.size18,
                          color: AppColors.lineColor60,
                          fontWeight: FontWeight.w400),
                      Divider(
                        thickness: 1,
                        color: AppColors.lineColorC8,
                      ),
                      SizedBox(
                        height: MySize.size14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customTextRegular(
                              title: "My Profession",
                              fontSize: MySize.size14,
                              color: AppColors.lineColor60,
                              fontWeight: FontWeight.w500
                          ),
                         IconButton(onPressed: (){
                           Get.to(ProfileEdit());
                         }, icon: SvgPicture.asset(AppConstant.ic_for))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size20,
              ),
              customTextMedium(
                  title: "About Your",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.size14,
              ),
              DottedBorder(
                 color: AppColors.lineColorC8,
                  borderType: BorderType.RRect,
                radius: Radius.circular(MySize.size14),
                child: customTextField(
                hintText: "Write something fun and punchy about yourself",
                hideBorder: true,
                enableborder: false,
                disableBorder: false,
                bordercolor: AppColors.backGroundColorFA,
                height:MySize.scaleFactorHeight * 180,
              ),
              ),
              SizedBox(
                height: MySize.size14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
