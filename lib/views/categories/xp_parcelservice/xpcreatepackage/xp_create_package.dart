import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';
import 'package:joyapp/views/categories/xp_parcelservice/xpcreateshipment/xp_create_shipment.dart';
class XpCreatePackage extends StatefulWidget {
  const XpCreatePackage({super.key});

  @override
  State<XpCreatePackage> createState() => _XpCreatePackageState();
}

class _XpCreatePackageState extends State<XpCreatePackage> {
  final TextEditingController packageType = TextEditingController();
  final TextEditingController title = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController lengthController = TextEditingController();
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController serviceController = TextEditingController();
  final TextEditingController expeditionController = TextEditingController();

  int selectedIndex = -1;
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
          padding: EdgeInsets.symmetric(
            horizontal: MySize.size24,
            vertical: MySize.scaleFactorHeight * 21,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextMedium(
                title: 'Package Details',
                fontSize: MySize.size20,
                color: AppColors.titleColor29,
              ),
              customTextMedium(
                title: 'Title',
                fontSize: MySize.size16,
                color: AppColors.titleColor29,
              ),
              SizedBox(
                height: MySize.size4,
              ),
              customTextField(
                controller: title,
                borderRadius: MySize.size10,
                bordercolor: AppColors.borderColorAD,
                hintText: 'Enter Title',
                hinttextcolor: AppColors.hinttextcolor,
              ),
              SizedBox(
                height: MySize.size16,
              ),
              customTextMedium(
                title: 'Package Type',
                fontSize: MySize.size16,
                color: AppColors.titleColor29,
              ),
              SizedBox(
                height: MySize.size4,
              ),
              customTextField(
                controller: packageType,
                borderRadius: MySize.size10,
                bordercolor: AppColors.borderColorAD,
                hintText: 'Package Type',
                hinttextcolor: AppColors.hinttextcolor,
                ontap: (){},
                suffix: true,
                suffixWidget: IconButton(
                  icon:SvgPicture.asset(AppConstant.ic_drop_down,width: MySize.size8,height: MySize.scaleFactorWidth * 10),
                  onPressed: () {
                    // Handle back button press
                  },
                ),
              ),
              SizedBox(
                height: MySize.size20,
              ),
              customTextMedium(
                title: 'Approx. Weight',
                fontSize: MySize.size16,
                color: AppColors.titleColor29,
              ),
              SizedBox(
                height: MySize.size4,
              ),
              customTextField(
                  controller: weightController,
                  borderRadius: MySize.size10,
                  bordercolor: AppColors.borderColorAD,
                  hintText: '30-50',
                  hinttextcolor: AppColors.hinttextcolor,
                  ontap: (){},
                  suffix: true,
                  isKeyboard: true,
                  suffixWidget: Padding(
                    padding:  EdgeInsets.only(top: MySize.size14,left: MySize.size20),
                    child: customTextMedium(title: 'KG',color: Color(0xffD6DEDE),fontSize: MySize.size16),
                  )
              ),
              SizedBox(
                height: MySize.size20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextMedium(
                    title: 'Dimension',
                    fontSize: MySize.size16,
                    color: AppColors.titleColor29,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right:MySize.size14 ),
                    child: customTextRegular(
                      title: 'FT',
                      fontSize: MySize.size16,
                      color: Color(0xffD6DEDE),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MySize.size100,
                    height: MySize.scaleFactorHeight * 46,
                    child: customTextField(
                        controller: lengthController,
                        borderRadius: MySize.size10,
                        bordercolor: AppColors.borderColorAD,
                        hintText: 'Length',
                        verticalpadding: 6,
                        isKeyboard: true,
                        hinttextcolor: AppColors.hinttextcolor,

                        ontap: (){}

                    ),
                  ),
                  SizedBox(
                    width: MySize.size100,
                    height: MySize.scaleFactorHeight * 46,
                    child: customTextField(
                        controller: widthController,
                        borderRadius: MySize.size10,
                        bordercolor: AppColors.borderColorAD,
                        hintText: 'Width',
                        verticalpadding: 6,
                        isKeyboard: true,
                        hinttextcolor: AppColors.hinttextcolor,

                        ontap: (){}

                    ),
                  ),
                  SizedBox(
                    width: MySize.size100,
                    height: MySize.scaleFactorHeight * 46,
                    child: customTextField(
                        controller:heightController,
                        borderRadius: MySize.size10,
                        bordercolor: AppColors.borderColorAD,
                        hintText: 'Height',
                        verticalpadding: 6,
                        isKeyboard: true,
                        hinttextcolor: AppColors.hinttextcolor,

                        ontap: (){}
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MySize.size28,
              ),
              customTextMedium(
                title: 'Expedition',
                fontSize: MySize.size16,
                color: AppColors.titleColor29,
              ),
              SizedBox(
                height: MySize.size4,
              ),
              customTextField(
                controller: expeditionController,
                borderRadius: MySize.size10,
                bordercolor: AppColors.borderColorAD,
                hintText: 'Select expedition',
                hinttextcolor: AppColors.hinttextcolor,

                ontap: (){},
                suffix: true,
                suffixWidget: IconButton(
                  icon:SvgPicture.asset(AppConstant.ic_drop_down,width: MySize.size8,height: MySize.scaleFactorWidth * 10),
                  onPressed: () {
                    // Handle back button press
                  },
                ),
              ),
              SizedBox(
                height: MySize.size20,
              ),

              customDivider(
                width: MySize.size363,
                color: AppColors.lineColorAD,
              ),
              SizedBox(
                height: MySize.size20,
              ),

            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 70,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: MySize.size24),
            child: Column(
              children: [
                Divider(
                  height: 1,
                  color: AppColors.lineColorAD,
                ),
                SizedBox(height: MySize.size15),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        padding: EdgeInsets.all(MySize.size14),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(MySize.size8),
                            border: Border.all(color: AppColors.lineColorAD),
                            color: AppColors.lineColorC8),
                        child: SvgPicture.asset(
                          AppConstant.ic_arrow_back,
                          height: MySize.size15,
                        ),
                      ),
                    ),
                    SizedBox(width: MySize.size12),
                    Expanded(
                      child: customButton(
                          ontap: () {
                             Get.to(XpCreateShipment());
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

    );
  }
}
