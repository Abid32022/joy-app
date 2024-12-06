import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../../../base/custom_app_bar.dart';
import '../listing1/listing1.dart';

class DLSVendorService2 extends StatefulWidget {
  const DLSVendorService2({super.key});

  @override
  State<DLSVendorService2> createState() => _DLSVendorService2State();
}

class _DLSVendorService2State extends State<DLSVendorService2> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        verifiedVisibile: false,
        onBackTap: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size10,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 13, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.whiteColorFF,
                    border:
                    Border.all(width: 0.1, color: AppColors.borderColorAD)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    customTextMedium(
                        title: "Big Mac Bacon [600.0 Cals]",
                        fontSize: MySize.size28),
                    customTextRegular(
                        title: "Curabitur sit amet massa nunc. "
                            "Fusce tristiquie "),
                    customTextRegular(title: "magna. Fusce eget dapibus dui. ")
                  ],
                ),
              ),
              SizedBox(
                height: MySize.size18,
              ),
              Row(
                children: [
                  customTextRegular(
                      title: "\$50.00",
                      decoration: TextDecoration.lineThrough,
                      decorationColor: AppColors.line2B,
                      fontSize: MySize.size25,
                      color: AppColors.borderColorAD),
                  SizedBox(
                    width: MySize.size10,
                  ),
                  customTextBold(title: "\$45.00", fontSize: MySize.size28),
                  Spacer(),
                  customTextMedium(title: "6 items", fontSize: MySize.size30),
                ],
              ),
              SizedBox(
                height: MySize.size30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                    top: MySize.size16,
                    left: MySize.size16,
                    right: MySize.size14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.whiteColorFF,
                    border:
                    Border.all(width: 0.1, color: AppColors.borderColorAD)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextMedium(
                        title: "Big Mac Bacon Comes With", fontSize: 20),
                    // SizedBox(height: MySize.size32,),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 22),
                            child: Row(
                              children: [
                                customTextMedium(title: "1"),
                                SizedBox(
                                  width: MySize.size20,
                                ),
                                customTextMedium(
                                    title: "Bacon Strips [70.0 Cals]"),
                                Spacer(),
                                customTextRegular(title: "CA\$1.49")
                              ],
                            ),
                          );
                        })
                  ],
                ),
              ),
              SizedBox(
                height: MySize.size30,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            top: MySize.size16,
                            left: MySize.size16,
                            right: MySize.size14),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.whiteColorFF,
                            border: Border.all(
                                width: 0.1, color: AppColors.borderColorAD)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customTextMedium(
                                title: "Big Mac Bacon Comes With",
                                fontSize: 20),
                            // SizedBox(height: MySize.size32,),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 22),
                              child: Row(
                                children: [
                                  customTextMedium(
                                      title: "Bacon Strips [70.0 Cals]"),
                                  Spacer(),
                                  customTextRegular(title: "CA\$1.49")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),

              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      clipBehavior: Clip.none,

                      context: context,
                      builder: (context) {
                          return bottomModel1();
                      }
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                      top: MySize.size16,
                      left: MySize.size16,
                      right: MySize.size14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.whiteColorFF,
                      border: Border.all(
                          width: 0.1, color: AppColors.borderColorAD)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextMedium(title: "Special Requests", fontSize: 20),
                      SizedBox(height: MySize.size10,),
                      customTextRegular(
                          title: "Please add extra cheese to my dish",
                          fontSize: MySize.size15),
                      SizedBox(height: MySize.size6,),
                      customTextRegular(
                          title: "Please include some extra hot wings",
                          fontSize: MySize.size15),
                      SizedBox(height: MySize.size22,),

                    ],
                  ),
                ),
              ),
              SizedBox(height: MySize.size22,),
              Row(
                children: [
                  SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.58,
                      height: 48,
                      child: ElevatedButton(onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            clipBehavior: Clip.none,

                            context: context,
                            builder: (context) {
                              return bottomModel();
                            }
                        );

                      },
                        child:
                        customTextMedium(title: "CONFIRMED"),
                        style: ElevatedButton
                            .styleFrom(

                            elevation: 0,
                            backgroundColor: AppColors.btnColorDE
                        ),)),
                  SizedBox(width: MySize.size16,),
                  GestureDetector(
                      onTap: () {
                        count--;
                        setState(() {

                        });
                      },
                      child: SvgPicture.asset(
                        AppConstant.ic_item_delete_red, width: MySize.size32,)),
                  SizedBox(width: MySize.size10,),
                  count <= 0 ? Text("0") : customTextMedium(title: count
                      .toString(),
                      fontSize: MySize.size20),
                  SizedBox(width: MySize.size10,),
                  GestureDetector(
                      onTap: () {
                        count++;
                        setState(() {

                        });
                      },
                      child: SvgPicture.asset(
                        AppConstant.ic_item_add_green, width:
                      MySize.size32,))
                ],
              ),
              SizedBox(height: MySize.size20,),


            ],
          ),
        ),
      ),
    );
  }
}

Widget bottomModel() =>
    Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColorFF,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
            topRight: Radius.circular(10)),
      ),
      height: 124,
      // color: Colors.red,
      child: Column(
        children: [
          SizedBox(height: MySize.size35,),
          customTextMedium(
              title: "Thanks for Pick Order", fontSize: MySize.size16,
              fontWeight: FontWeight.w500),
          SizedBox(height: MySize.size7,),
          customTextRegular(title: "You can unblock them anytime from their profile."),
          SizedBox(height: MySize.size20,),
          customDivider(
            width: double.infinity,
            color: AppColors.borderColorAD,
          ),
          SizedBox(height: MySize.size10,),
          GestureDetector(
              onTap: (){
                Get.to(Listing1());
              },
              child: customTextMedium(title: "DISMISS",color: AppColors.line2B))




        ],
      ),

    );



Widget bottomModel1() =>
    Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColorFF,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
            topRight: Radius.circular(10)),
      ),
      height: 155,
      // color: Colors.red,
      child: Column(
        children: [
          SizedBox(height: MySize.size35,),
          customTextRegular(
              title: "Please Choose Which Review You Want To Add", fontSize: MySize.size16,),
          SizedBox(height: MySize.size14,),
          customDivider(
            width: double.infinity,
            color: AppColors.borderColorAD,
          ),
          SizedBox(height: MySize.size14,),
          customTextMedium(title: "Restaurant Review",fontSize: MySize.size22),
          SizedBox(height: MySize.size20,),
          customDivider(
            width: double.infinity,
            color: AppColors.borderColorAD,
          ),
          SizedBox(height: MySize.size16,),
          customTextMedium(title: "Menu Review",fontSize: MySize.size22)




        ],
      ),

    );
