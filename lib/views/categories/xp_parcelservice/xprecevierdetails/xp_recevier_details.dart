import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';
class XpRecevierDetails extends StatefulWidget {
  const XpRecevierDetails({super.key});

  @override
  State<XpRecevierDetails> createState() => _XpRecevierDetailsState();
}

class _XpRecevierDetailsState extends State<XpRecevierDetails> {
  final TextEditingController fullName = TextEditingController();
  final TextEditingController emailId = TextEditingController();
  final TextEditingController mobileNumber = TextEditingController();
  final TextEditingController shortNote = TextEditingController();
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return  Scaffold(
        appBar: CustomAppBar(
          onBackTap: () {
            Get.back();
          },
          verifiedVisibile: false,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MySize.size24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size12,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: customTextMedium(
                  title: 'Receiver Details',
                  fontSize: MySize.size20,
                  color: AppColors.titleColor29,
                ),
              ),
              SizedBox(
                height: MySize.size16,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: customTextMedium(
                  title: 'Full Name',
                  fontSize: MySize.size16,
                  color: AppColors.titleColor29,
                ),
              ),
              SizedBox(
                height: MySize.size4,
              ),
              customTextField(
                controller: fullName,
                borderRadius: MySize.size10,
                bordercolor: AppColors.borderColorAD,
                hintText: 'Enter Full Name',
                hinttextcolor: AppColors.hinttextcolor,
                ontap: (){},

              ),
              SizedBox(
                height: MySize.scaleFactorHeight *19.56,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: customTextMedium(
                  title: 'Email id',
                  fontSize: MySize.size16,
                  color: AppColors.blackColor00,
                ),
              ),
              SizedBox(
                height: MySize.size4,
              ),
              customTextField(
                controller: emailId,
                borderRadius: MySize.size10,
                bordercolor: AppColors.borderColorAD,
                hintText: 'Enter Email',
                hinttextcolor: AppColors.hinttextcolor,
                ontap: (){},

              ),
              SizedBox(
                height: MySize.scaleFactorHeight *19.56,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: customTextMedium(
                  title: 'Mobile Number',
                  fontSize: MySize.size16,
                  color: AppColors.titleColor29,
                ),
              ),
              SizedBox(
                height: MySize.size4,
              ),
              IntlPhoneField(
                controller: mobileNumber,
                flagsButtonPadding: EdgeInsets.only(left: MySize.size10),
                decoration: InputDecoration(
                  hintText: '786 786004',
                  hintStyle: const TextStyle(color: AppColors.hinttextcolor, fontWeight: FontWeight.w300),
                  focusColor: AppColors.borderColorAD,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1,color: AppColors.borderColorAD),
                    borderRadius: BorderRadius.circular(MySize.size10),
                    gapPadding: MySize.size10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1,color: AppColors.borderColorAD),
                    borderRadius: BorderRadius.circular(MySize.size10),
                    gapPadding: MySize.size10,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1,color: AppColors.borderColorAD),
                    borderRadius: BorderRadius.circular(MySize.size10),
                    gapPadding: MySize.size10,
                  ),

                  contentPadding: EdgeInsets.all(MySize.size10),
                  constraints: BoxConstraints(
                      maxHeight: MySize.size50
                  ),
                ),
                disableLengthCheck: true,
                showDropdownIcon: false,
              ),
              SizedBox(
                height: MySize.scaleFactorHeight *19.56,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(children: [
                    WidgetSpan(child: customTextMedium(title: 'Short Note',fontSize: MySize.size16)),
                    WidgetSpan(child: customTextLight(title: ' (Optional)',fontSize: MySize.size16))
                  ]),
                ),
              ),
              SizedBox(
                height: MySize.size4,
              ),
              SizedBox(
                height: MySize.scaleFactorHeight * 221,
                child: customTextField(
                  controller: shortNote,
                  borderRadius: MySize.size10,
                  bordercolor: AppColors.borderColorAD,
                  minLines: 5,
                  hintText: 'Enter Short Note for Driver',
                  hinttextcolor: AppColors.hinttextcolor,
                  ontap: (){},
                ),
              ),

            ],
          ),
        ),
        bottomNavigationBar: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: MySize.size24),
            child: Column(
              children: [
                customDivider(
                    width: MySize.size363
                ),
                SizedBox(
                  height: MySize.scaleFactorHeight * 13,
                ),
            customButton(
                ontap: () {
                  Get.back();
                },
                width: double.infinity,
                height: MySize.scaleFactorHeight * 46,
                text: "Save",
                fontSize: MySize.size16,
                fontWeight: FontWeight.w500,
                fontColor: Colors.black,
                borderRadius: MySize.size8,
                borderColor: AppColors.lineColorC8,
                colors: AppColors.lineColorC8),
                SizedBox(height: MySize.size8,)

              ],
            ),
          ),
        )
    );
  }
}
