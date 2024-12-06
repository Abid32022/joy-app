import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_rich_text.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
class XpParcelPackageCancelled extends StatefulWidget {
  const XpParcelPackageCancelled({super.key});

  @override
  State<XpParcelPackageCancelled> createState() => _XpParcelPackageCancelledState();
}

class _XpParcelPackageCancelledState extends State<XpParcelPackageCancelled> {
  bool isCancel = true;
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
        backgroundColor: AppColors.backGroundColorFA,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MySize.scaleFactorWidth * 24,
            ),
            child: Column(
              children: [
                SizedBox(
                  height:  MySize.scaleFactorHeight * 12,
                ),
                ListView.builder(
                  itemCount:3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding:  EdgeInsets.only(bottom: MySize.scaleFactorHeight*13),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(MySize.size8),
                            border:
                            Border.all(color: AppColors.borderColorAD, width: 1),
                            color: AppColors.backGroundColorFA),
                        child: Column(
                          children: [
                            Container(
                              height: MySize.scaleFactorHeight * 43,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(MySize.size8),
                                      topRight: Radius.circular(MySize.size8)),
                                  color: AppColors.lineColorE4),
                              child: Center(
                                child: Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: MySize.size10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomRichText(text1: 'Parcel Box Id:', text2: " 01", fontSize: MySize.size16),
                                      InkWell(
                                        onTap: (){
                                          setState(() {
                                            isCancel =! isCancel;
                                          });
                                        },
                                        child: customTextMedium(
                                            title: isCancel == true ?  "Cancelled" : "Collected",
                                            fontWeight: FontWeight.w500,
                                            fontSize: MySize.size16,
                                            color:isCancel == true ? AppColors.errorFailureColor26: AppColors.successColor7C
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: MySize.size14, horizontal: MySize.size12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomRichText(text1: 'Title:', text2: " MacBook Pro 2023", fontSize: MySize.size16),
                                  SizedBox(
                                    height: MySize.scaleFactorHeight*13,
                                  ),
                                  CustomRichText(text1: 'Approx. Weight:', text2: " 70 to 80 kg", fontSize: MySize.size16),
                                  SizedBox(
                                    height: MySize.scaleFactorHeight*13,
                                  ),
                                  CustomRichText(text1: 'Dimension:', text2: " 20L . 6H . 50W", fontSize: MySize.size16),
                                  SizedBox(
                                    height: MySize.scaleFactorHeight*13,
                                  ),
                                  CustomRichText(text1: 'Package Type :', text2: " Electronic", fontSize: MySize.size16),
                                  SizedBox(
                                    height: MySize.scaleFactorHeight*13,
                                  ),
                                  CustomRichText(text1: 'Condition:', text2: " Breakable items", fontSize: MySize.size16),
                                  SizedBox(
                                    height: MySize.scaleFactorHeight*10,
                                  ),
                                  Visibility(
                                    visible: isCancel,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Divider(
                                          thickness: 1,
                                          color: AppColors.lineColorC8,
                                        ),
                                        customTextMedium(
                                            title: "Reason:",
                                            fontWeight: FontWeight.w500,
                                            fontSize: MySize.size16,
                                            color:AppColors.blackColor0
                                        ),
                                        customTextRegular(
                                            title: "Anticipate your parcel's expedited arrival today. Please ensure someone is available to receive it",
                                            fontWeight: FontWeight.w500,
                                            fontSize: MySize.size16,
                                            color:AppColors.blackColor0
                                        ),
                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
