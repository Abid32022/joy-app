import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';
import 'package:joyapp/views/categories/xp_parcelservice/xpaddresspoint/xp_address_point.dart';

class XpAddressList extends StatefulWidget {
  const XpAddressList({super.key});

  @override
  State<XpAddressList> createState() => _XpAddressListState();
}

class _XpAddressListState extends State<XpAddressList> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.scaleFactorHeight * 20,
              ),
              customTextField(
                  hintText: "Search Address",
                  isPrefixIcon: true,
                  filled: true,
                  fillcolor: Color(0xffECF6FA),
                  bordercolor: Color(0xffC0D4DC),
                  prefixImage: Icon(Icons.search)),
              SizedBox(
                height: MySize.scaleFactorHeight * 20,
              ),
              customTextMedium(
                  title: "Explore Nearby",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
              Divider(
                thickness: 1,
                color: AppColors.lineColorC8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: MySize.size20),
                    child: SvgPicture.asset(AppConstant.ic_arrow),
                  ),
                  SizedBox(
                    width: MySize.size30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextMedium(
                          title: "Improve Canada",
                          fontSize: MySize.size18,
                          color: AppColors.blackColor00,
                          fontWeight: FontWeight.w500),
                      SizedBox(
                        height: MySize.size5,
                      ),
                      SizedBox(
                        width: MySize.scaleFactorWidth * 200,
                        child: customTextRegular(
                            title: "7250 Keele St, Vaughan, ON L4K 1Z8, Canada",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset(AppConstant.ic_black_edit),
        
                ],
              ),
              SizedBox(
                height: MySize.scaleFactorHeight * 10,
              ),
              customTextMedium(
                  title: "Save Address",
                  fontSize: MySize.size20,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: MySize.scaleFactorHeight * 10,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                return Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: MySize.size20),
                        child: SvgPicture.asset(AppConstant.ic_arrow),
                      ),
                      SizedBox(
                        width: MySize.size30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customTextMedium(
                              title: "Improve Canada",
                              fontSize: MySize.size18,
                              color: AppColors.blackColor00,
                              fontWeight: FontWeight.w500),
                          SizedBox(
                            height: MySize.size5,
                          ),
                          SizedBox(
                            width: MySize.scaleFactorWidth * 200,
                            child: customTextRegular(
                                title: "7250 Keele St, Vaughan, ON L4K 1Z8, Canada",
                                fontSize: MySize.size16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Spacer(),
                      SvgPicture.asset(AppConstant.ic_black_edit),
        
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: AppColors.lineColorC8,
                  ),
                ],);
              },)
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MySize.size24),
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
                          Get.to(XpAddressPoint());
                        },
                        width: double.infinity,
                        height: MySize.scaleFactorHeight * 46,
                        text: "Next",
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
