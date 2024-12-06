import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import '../../../../utils/appconstant.dart';
import '../createShipment/create_shipment.dart';
import '../createpackage/create_package.dart';



class PackageDetail extends StatefulWidget {
  const PackageDetail({super.key});

  @override
  State<PackageDetail> createState() => _PackageDetailState();
}

class _PackageDetailState extends State<PackageDetail> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MySize.size24, vertical: MySize.size24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTextMedium(
                      title: "Package Detail",
                      fontSize: MySize.size20,
                      fontWeight: FontWeight.w500),
                  SizedBox(height: MySize.size16),
                  Container(
                    padding: EdgeInsets.only(
                        left: MySize.size15,
                        right: MySize.size14,
                        top: MySize.size12,
                        bottom: MySize.size17),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(color: AppColors.lineColorAD),

                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customTextRegular(
                                  title: "M1 MacBook 2023",
                                  fontSize: MySize.size16,
                                  fontWeight: FontWeight.w500),
                              InkWell(
                                onTap: (){
                                  Get.to(CreateShipmentScreen());
                                },
                                child: SvgPicture.asset(AppConstant.ic_black_edit,
                                  height: MySize.size17,
                                ),
                              ),
                            ],),
                          SizedBox(height: MySize.size8),
                          Row(
                            children: [
                              customTextRegular(
                                  title: "Package Type",
                                  fontSize: MySize.size16,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.blackColor00,
                                  fontWeight: FontWeight.w500),
                              customTextRegular(
                                  title: " . Electronic",
                                  fontSize: MySize.size16,
                                  fontWeight: FontWeight.w500),
                            ],
                          ),
                          SizedBox(height: MySize.size10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Row(
                              children: [
                                customTextRegular(
                                    title: "Approx. Weight",
                                    fontSize: MySize.size12,
                                    decoration: TextDecoration.underline,
                                    color: AppColors.blackColor00,
                                    decorationColor:AppColors.blackColor00,
                                    fontWeight: FontWeight.w400),
                                customTextRegular(
                                    title: " . ",
                                    fontSize: MySize.size12,

                                    color: Color(0xff454C49),

                                    fontWeight: FontWeight.w400),
                                customTextRegular(
                                    title: "50KG",
                                    fontSize: MySize.size14,

                                    color: AppColors.blackColor00,

                                    fontWeight: FontWeight.w400),
                              ],
                            ),

                            Row(
                              children: [
                                customTextRegular(
                                    title: "Dimension",
                                    fontSize: MySize.size12,
                                    decoration: TextDecoration.underline,
                                    color: AppColors.blackColor00,
                                    decorationColor: AppColors.blackColor00,
                                    fontWeight: FontWeight.w400),
                                customTextRegular(
                                    title: " . ",
                                    fontSize: MySize.size14,

                                    color: Color(0xff454C49),

                                    fontWeight: FontWeight.w400),
                                customTextRegular(
                                    title: "23L . 23W . 10H",
                                    fontSize: MySize.size12,
                                    decoration: TextDecoration.underline,
                                    color: AppColors.blackColor00,
                                    decorationColor:AppColors.blackColor00,
                                    fontWeight: FontWeight.w400),
                              ],
                            ),


                          ],)
                        ]),
                  ),
                  SizedBox(height: MySize.size20),
                  GestureDetector(
                    onTap: (){
                      Get.to(CreateShipmentScreen());
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          left: MySize.size15,
                          right: MySize.size14,
                          top: MySize.size15,
                          bottom: MySize.size15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(MySize.size8),
                        border: Border.all(color:AppColors.lineColorAD),
                      ),
                      child: Row(children: [
                        customTextRegular(
                            title: "Add new Package",
                            fontSize: MySize.size16,
                            color: Color(0xFF02091E),
                            fontWeight: FontWeight.w400),
                        Spacer(),
                        SvgPicture.asset(AppConstant.ic_add,
                          height: MySize.size17,

                        ),
                      ]),
                    ),
                  ),
                  SizedBox(height: MySize.size20),
                  Divider(
                    height: 1,
                    color: AppColors.lineColorAD,
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
              child: Divider(
                height: 1,
                color: AppColors.lineColorAD,
              ),
            ),
            SizedBox(height: MySize.size15),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(MySize.size14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(MySize.size8),
                        border: Border.all(color: AppColors.lineColorAD),
                        color: AppColors.lineColorC8
                    ),
                    child: SvgPicture.asset(AppConstant.ic_arrow_back,
                      height: MySize.size15,
                    ),
                  ),
                  SizedBox(width: MySize.size12),
                  Expanded(
                    child: customButton(
                      ontap: (){
                        Get.to(const CreateShipment());
                      },
                      height: MySize.scaleFactorHeight * 46,
                      text: "Next",
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w500,
                      fontColor: Colors.white,
                      borderRadius: MySize.size8,
                      borderColor: Color(0xFFD8AA8B),
                      colors: Color(0xFFD8AA8B),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MySize.size15),
          ],
        ),

        ));
    }
}