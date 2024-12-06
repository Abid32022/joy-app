import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';

import '../../../../utils/appcolors.dart';
import '../../../base/custom_button.dart';
import '../../../base/custom_divider.dart';
import '../../../base/custom_selectable_container.dart';
import '../../../base/custom_textwidget.dart';
import '../../../base/textfield.dart';
import '../recevierDetails/recevierdetails_screen.dart';

class CreateShipmentScreen extends StatefulWidget {
  CreateShipmentScreen({super.key});

  final TextEditingController packageType = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController lengthController = TextEditingController();
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController serviceController = TextEditingController();
  final TextEditingController expeditionController = TextEditingController();

  @override
  State<CreateShipmentScreen> createState() => _CreateShipmentScreenState();
}

class _CreateShipmentScreenState extends State<CreateShipmentScreen> {
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MySize.size24,
                  vertical: MySize.scaleFactorHeight * 21,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: customTextMedium(
                          title: 'Package Details',
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
                          title: 'Package Type',
                          fontSize: MySize.size16,
                          color: AppColors.titleColor29,
                        ),
                      ),
                      SizedBox(
                        height: MySize.size4,
                      ),
                      customTextField(
                        controller: widget.packageType,
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: customTextMedium(
                          title: 'Approx. Weight',
                          fontSize: MySize.size16,
                          color: AppColors.titleColor29,
                        ),
                      ),
                      SizedBox(
                        height: MySize.size4,
                      ),
                      customTextField(
                        controller: widget.weightController,
                        borderRadius: MySize.size10,
                        bordercolor: AppColors.borderColorAD,
                        hintText: '30-50',
                          hinttextcolor: AppColors.hinttextcolor,
                          ontap: (){},
                          suffix: true,
                          isKeyboard: true,
                          suffixWidget: Padding(
                          padding:  EdgeInsets.only(top: MySize.size14,left: MySize.size20),
                          child: customTextMedium(title: 'KG',color: AppColors.blackColor00,fontSize: MySize.size16),
                        )
                      ),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
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
                                color: AppColors.blackColor00,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MySize.size100,
                            height: MySize.scaleFactorHeight * 46,
                            child: customTextField(
                                controller: widget.lengthController,
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
                                controller: widget.widthController,
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
                                controller: widget.heightController,
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: customTextMedium(
                          title: 'Expedition',
                          fontSize: MySize.size16,
                          color: AppColors.titleColor29,
                        ),
                      ),
                      SizedBox(
                        height: MySize.size4,
                      ),
                      customTextField(
                        controller: widget.expeditionController,
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
                        height: MySize.size160,
                      ),
                      SizedBox(
                        height: MySize.size20,
                      ),
          
                    ],
                  ),
                ),
              ),
            ],
          ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MySize.scaleFactorWidth *50,
                      height: MySize.scaleFactorHeight * 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.lineColorC8
                      ),
                      child: IconButton(icon: SvgPicture.asset(AppConstant.ic_back,),onPressed: () {
                          Get.back();
                      },),
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 50,
                      width: MySize.scaleFactorWidth *280,
                      child: customButton(
                          ontap: (){
                            Get.back();
                          },
                          text: 'SAVE ',
                          colors: AppColors.parcelSecondaryColor8B,
                          fontColor: Colors.white,
                          borderRadius: MySize.size10

                      ),
                    ),
                  ],
                ),
                SizedBox(height: MySize.scaleFactorHeight * 70,)

              ],
            ),
          ),
        )

    );
  }
}