import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import '../../../../utils/mysize.dart';
import '../addressPoint/addresspoint_screen.dart';
import '../packagedetail/package_detail.dart';
import '../recevierDetails/recevierdetails_screen.dart';

class ShipmentAddress extends StatefulWidget {
  const ShipmentAddress({super.key});

  @override
  State<ShipmentAddress> createState() => _ShipmentAddressState();
}

class _ShipmentAddressState extends State<ShipmentAddress> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(
            onBackTap: () {
              Get.back();
            },
            verifiedVisibile: false,
          ),
            body: SingleChildScrollView(
              // physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MySize.size24, vertical: MySize.size24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextMedium(
                          title: "Shipment Address",
                          fontSize: MySize.size20,
                          fontWeight: FontWeight.w500),
                      SizedBox(height: MySize.size10),
                      Divider(
                        height: 1,
                        color: AppColors.lineColorAD,
                      ),
                      SizedBox(height: MySize.size14),
                      Container(
                        padding: EdgeInsets.only(
                            left: MySize.size15,
                            right: MySize.size14,
                            top: MySize.size12,
                            bottom: MySize.size17),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MySize.size8),
                          border: Border.all(color: Color(0xFFBCE9F0)),
                          color: Color(0xFFD6FDE7),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  customTextMedium(
                                      title: "Pickup - Point",
                                      fontSize: MySize.size17,
                                      color: AppColors.blackColor00,
                                      fontWeight: FontWeight.w500),
                                  InkWell(
                                    onTap: (){
                                      Get.to(AddressPointScreen());
                                    },
                                    child: SvgPicture.asset(AppConstant.ic_green_edit,
                                      height: MySize.size17,

                                    ),
                                  ),

                                ],),
                              SizedBox(height: MySize.size8),
                              customTextRegular(
                                  title: "7250 Keele St, Vaughan, ON L4K 1Z8, Canada",
                                  fontSize: MySize.size16,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFF04AB4D),
                                  decorationColor: Color(0xFF04AB4D),
                                  fontWeight: FontWeight.w400),
                              SizedBox(height: MySize.size10),
                              Row(children: [
                                customTextRegular(
                                    title: "Building",
                                    fontSize: MySize.size14,
                                    decoration: TextDecoration.underline,
                                    color: Color(0xFF04AB4D),
                                    decorationColor:Color(0xFF04AB4D),
                                    fontWeight: FontWeight.w400),
                                customTextRegular(
                                    title: " . ",
                                    fontSize: MySize.size14,

                                    color: Color(0xff454C49),

                                    fontWeight: FontWeight.w400),
                                customTextRegular(
                                    title: "5G",
                                    fontSize: MySize.size14,
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff454C49),
                                    decorationColor:Color(0xff454C49),
                                    fontWeight: FontWeight.w400),
                                SizedBox(width: MySize.size20),
                                customTextRegular(
                                    title: "Apartment Number",
                                    fontSize: MySize.size14,
                                    decoration: TextDecoration.underline,
                                    color: Color(0xFF04AB4D),
                                    decorationColor: Color(0xFF04AB4D),
                                    fontWeight: FontWeight.w400),
                                customTextRegular(
                                    title: " . ",
                                    fontSize: MySize.size14,

                                    color: Color(0xff454C49),

                                    fontWeight: FontWeight.w400),
                                customTextRegular(
                                    title: "434",
                                    fontSize: MySize.size14,
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff454C49),
                                    decorationColor:Color(0xff454C49),
                                    fontWeight: FontWeight.w400),
                              ],)
                            ]),
                      ),
                      SizedBox(height: MySize.size20),
                      Container(
                        padding: EdgeInsets.only(
                            left: MySize.size15,
                            right: MySize.size14,
                            top: MySize.size12,
                            bottom: MySize.size17),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MySize.size8),
                          border: Border.all(color: Color(0xFFFFBBC6)),
                          color: Color(0xFFFFE9EC),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  customTextMedium(
                                      title: "Drop Off - Point",
                                      fontSize: MySize.size17,
                                      fontWeight: FontWeight.w500),
                                  InkWell(
                                    onTap: (){
                                      Get.to(AddressPointScreen());
                                    },
                                    child: SvgPicture.asset(AppConstant.ic_red_edit,
                                      height: MySize.size17,

                                    ),
                                  ),

                                ],),
                              SizedBox(height: MySize.size8),
                              customTextRegular(
                                  title: "7250 Keele St, Vaughan, ON L4K 1Z8, Canada",
                                  fontSize: MySize.size16,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFFE43535),
                                  decorationColor: Color(0xFFE43535),
                                  fontWeight: FontWeight.w400),
                              SizedBox(height: MySize.size10),
                              Row(children: [
                                customTextRegular(
                                    title: "Building",
                                    fontSize: MySize.size14,
                                    decoration: TextDecoration.underline,
                                    color: Color(0xFFE43535),
                                    decorationColor:Color(0xFFE43535),
                                    fontWeight: FontWeight.w400),
                                customTextRegular(
                                    title: " . ",
                                    fontSize: MySize.size14,

                                    color: Color(0xff454C49),

                                    fontWeight: FontWeight.w400),
                                customTextRegular(
                                    title: "5G",
                                    fontSize: MySize.size14,
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff454C49),
                                    decorationColor:Color(0xff454C49),
                                    fontWeight: FontWeight.w400),
                                SizedBox(width: MySize.size20),
                                customTextRegular(
                                    title: "Apartment Number",
                                    fontSize: MySize.size14,
                                    decoration: TextDecoration.underline,
                                    color: Color(0xFFE43535),
                                    decorationColor: Color(0xFFE43535),
                                    fontWeight: FontWeight.w400),
                                customTextRegular(
                                    title: " . ",
                                    fontSize: MySize.size14,

                                    color: Color(0xff454C49),

                                    fontWeight: FontWeight.w400),
                                customTextRegular(
                                    title: "434",
                                    fontSize: MySize.size14,
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff454C49),
                                    decorationColor:Color(0xff454C49),
                                    fontWeight: FontWeight.w400),
                              ],)
                            ]),
                      ),
                      SizedBox(height: MySize.size16),
                      Container(
                        padding: EdgeInsets.only(
                            left: MySize.size15,
                            right: MySize.size14,
                            top: MySize.size12,
                            bottom: MySize.size17),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MySize.size8),
                          border: Border.all(color:AppColors.lineColorAD),
                        ),
                        child: Row(children: [
                          customTextRegular(
                              title: "Schedule your collection",
                              fontSize: MySize.size16,
                              color: Color(0xFF02091E),
                              fontWeight: FontWeight.w400),
                          Spacer(),
                          SvgPicture.asset(AppConstant.ic_add,
                            height: MySize.size17,

                          ),
                        ]),
                      ),
                      SizedBox(height: MySize.size20),
                      Divider(
                        height: 1,
                        color: AppColors.lineColorAD,
                      ),
                      SizedBox(height: MySize.size16),
                      Container(
                        padding: EdgeInsets.only(
                            left: MySize.size15,
                            right: MySize.size14,
                            top: MySize.size12,
                            bottom: MySize.size17),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MySize.size8),
                          border: Border.all(color: Color(0xFFD8AA8B)),
                          color: Color(0xFFFFF4E5),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  customTextMedium(
                                      title: "Parcel Receive By",
                                      fontSize: MySize.size17,
                                      fontWeight: FontWeight.w500),
                                  InkWell(
                                    onTap: (){
                                      Get.to(RecevierDetailsScreen());
                                    },
                                    child: SvgPicture.asset(AppConstant.ic_yellow_edit,
                                      height: MySize.size17,

                                    ),
                                  ),

                                ],),
                              SizedBox(height: MySize.size8),
                              customTextRegular(
                                  title: "O’Neil McLean",
                                  fontSize: MySize.size16,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFFD59264),
                                  decorationColor: Color(0xFFD59264),
                                  fontWeight: FontWeight.w400),
                              SizedBox(height: MySize.size10),
                              Row(children: [
                                customTextRegular(
                                    title: "omclean@gmail.com",
                                    fontSize: MySize.size14,
                                    decoration: TextDecoration.underline,
                                    color: Color(0xFF415060),
                                    decorationColor:Color(0xFF415060),
                                    fontWeight: FontWeight.w400),
                                Spacer(),
                                customTextRegular(
                                    title: "+4167045420",
                                    fontSize: MySize.size14,
                                    decoration: TextDecoration.underline,
                                    color: Color(0xFF415060),
                                    decorationColor:Color(0xFF415060),
                                    fontWeight: FontWeight.w400),
                              ],)
                            ]),
                      ),
                      SizedBox(height: MySize.size100),
                      Divider(
                        height: 1,
                        color: AppColors.lineColorAD,
                      ),
                      SizedBox(height: MySize.size15),
                      customButton(
                        ontap: (){
                          Get.to(PackageDetail());
                        },
                        text: "Continue",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w500,
                        fontColor: Colors.white,
                        borderRadius: MySize.size8,
                        borderColor: Color(0xFFD8AA8B),
                        colors: Color(0xFFD8AA8B),
                      ),
                    ]),
              ),
            ),
         ));
   }
}