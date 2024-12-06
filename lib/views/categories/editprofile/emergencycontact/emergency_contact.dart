import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';

class EmergencyContact extends StatefulWidget {
  const EmergencyContact({super.key});

  @override
  State<EmergencyContact> createState() => _EmergencyContactState();
}

class _EmergencyContactState extends State<EmergencyContact> {
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
          padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size14,
              ),
              customTextMedium(
                  title: "Emergency Contact",
                  fontSize: MySize.size22,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.size14,
              ),
              customTextMedium(
                  title: "Name",
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor0),
              SizedBox(
                height: MySize.size4,
              ),
              customTextField(
                hintText: "Legal name is preferred (required)",
                enableborder: true,
                bordercolor: AppColors.lineColorC8
              ),
              SizedBox(
                height: MySize.size14,
              ),
              customTextMedium(
                  title: "Relationship",
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor0),
              SizedBox(
                height: MySize.size4,
              ),
              customTextField(
                  hintText: "E.g. mum, partner, friend , (required)",
                  enableborder: true,
                  bordercolor: AppColors.lineColorC8
              ),
              SizedBox(
                height: MySize.size14,
              ),
              customTextMedium(
                  title: "Email",
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor0),
              SizedBox(
                height: MySize.size4,
              ),
              customTextField(
                  hintText: "Enter email address (optional)",
                  enableborder: true,
                  bordercolor: AppColors.lineColorC8
              ),
              SizedBox(
                height: MySize.size14,
              ),
              customTextMedium(
                  title: "Mobile Number",
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor0),
              SizedBox(
                height: MySize.size4,
              ),
              SizedBox(
                // height: 50.h,
                child: IntlPhoneField(
                  dropdownIconPosition: IconPosition.trailing,
                  decoration: InputDecoration(
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    isCollapsed: false,
                    isDense: true,
                    // focusedBorder: InputBorder.none,
                    hintText: 'Enter phone number (required)',
                    hintStyle: TextStyle(
                      color: AppColors.lineColorC8,
                      fontSize: MySize.size14,
                      fontFamily: "EnnVisions"
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: AppColors.lineColorC8, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: AppColors.lineColorC8,
                          width: 1), // Set to red color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: AppColors.lineColorC8,
                          width: 1), // Set to red color
                    ),
                  ),
                  initialCountryCode: 'PK',
                  flagsButtonPadding: const EdgeInsets.symmetric(horizontal: 5),
                  onChanged: (phone) {
                    // ignore: avoid_print
                    print(phone.completeNumber);
                  },
                ),
              ),
           
              customTextMedium(
                  title: "Preferred language",
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor0),
              SizedBox(
                height: MySize.size4,
              ),
              customTextField(
                  hintText: "Select from the list (optional)",
                  enableborder: true,
                  bordercolor: AppColors.lineColorC8,
                suffix: true,
                suffixWidget:   IconButton(onPressed: (){},
                    icon:  SvgPicture.asset(AppConstant.ic_down)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
