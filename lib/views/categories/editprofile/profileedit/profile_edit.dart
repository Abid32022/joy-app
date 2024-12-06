import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/editprofile/emergencycontact/emergency_contact.dart';
import 'package:joyapp/views/categories/editprofile/governmentid/government_id.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  List item = [
    ["Legal Name", "Adnan Qureshi", AppConstant.ic_black_edit],
    ["Phone Number", "+923008134076", AppConstant.ic_black_edit],
    ["Email", "adnan....n@gmail.com", AppConstant.ic_black_edit],
    ["Address", "Not Provided", AppConstant.ic_for],
    ["Emergency Contact", "Not Provided", AppConstant.ic_for],
    ["Government ID", "Not Provided", AppConstant.ic_for],
  ];
  String index = "0";
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
              customTextMedium(
                  title: "Personal info",
                  fontSize: MySize.size22,
                  fontWeight: FontWeight.w500),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  color: AppColors.backGroundColorFA,
                  border: Border.all(
                    color: AppColors.lineColorC8,
                    width: 1,
                  ),
                ),
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MySize.scaleFactorHeight * 20,
                        horizontal: MySize.scaleFactorWidth * 15),
                    child: ListView.builder(
                      itemCount: item.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    customTextRegular(
                                        title: item[index][0],
                                        fontSize: MySize.size15,
                                        color: AppColors.lineColor60,
                                        fontWeight: FontWeight.w400),
                                    customTextMedium(
                                        title: item[index][1],
                                        fontSize: MySize.size18,
                                        color: AppColors.lineColor60,
                                        fontWeight: FontWeight.w400)
                                  ],
                                ),
                                IconButton(onPressed: (){
                                  Get.to(GovernmentId());
                                }, icon: SvgPicture.asset(item[index][2]),)
        
                              ],
                            ),
                            SizedBox(
                              height: MySize.scaleFactorHeight * 10,
                            ),
                            Divider(
                              thickness: 1,
                              color: AppColors.lineColorC8,
                            ),
                            SizedBox(
                              height: MySize.scaleFactorHeight * 10,
                            ),
                          ],
                        );
                      },
                    )),
              ),
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
              customButton(
                  ontap: () {
                    Get.to(EmergencyContact());
                  },
                  width: double.infinity,
                  height: MySize.scaleFactorHeight * 46,
                  text: "Done",
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  fontColor: AppColors.whiteColorFF,
                  borderRadius: MySize.size8,
                  borderColor: Color(0xffC8313D),
                  colors: Color(0xffC8313D)),
            ],
          ),
        ),
      ),
    );
  }
}
