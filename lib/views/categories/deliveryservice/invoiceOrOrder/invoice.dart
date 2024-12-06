import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/auth_bottomsheet.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';

import '../vendorServiceScreen/vendorService.dart';
import 'component/componentRichText.dart';

class DeliveryInvoice extends StatefulWidget {
  const DeliveryInvoice({super.key});

  @override
  State<DeliveryInvoice> createState() => _DeliveryInvoiceState();
}

class _DeliveryInvoiceState extends State<DeliveryInvoice> {

  int count = 0;
  int currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: (){
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
                height: MySize.size17,
              ),
              Center(
                  child: customTextMedium(
                      title: "Invoice No. 30WT43GD54", fontSize: 18)),
              SizedBox(
                height: MySize.size10,
              ),
              Center(
                  child: customTextRegular(
                      title:
                          "Curabitur sit amet massanunc. Fusce at tristique ")),
              SizedBox(
                height: MySize.size6,
              ),
              Center(
                  child: customTextRegular(
                      title: "magna. Fusce eget dapibus dui.")),
              SizedBox(
                height: MySize.size20,
              ),
              customDivider(width: double.infinity, color: AppColors.bgColorC4),
              SizedBox(
                height: MySize.size15,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: AppColors.whiteColorFF,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 0.2, color: AppColors.bgColorC4)),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                customTextMedium(
                                    title: "Big Mac Bacon [600.0 Cals]",
                                    fontSize: 16),
                                SizedBox(
                                  height: MySize.size12,
                                ),
                                customTextRegular(
                                  title: "Lunch & Dinner Menu",
                                ),
                                SizedBox(
                                  height: MySize.size10,
                                ),
                                customTextRegular(
                                  title: "Buy 1, Get 1 Free",
                                ),
                                SizedBox(
                                  height: MySize.size10,
                                ),
                                Row(
                                  children: [
                                    customTextRegular(
                                        title: "\$50.00",
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor: AppColors.line2B,
                                        fontSize: 15,
                                        color: AppColors.borderColorAD),
                                    SizedBox(
                                      width: MySize.size10,
                                    ),
                                    customTextBold(
                                        title: "\$45.00", fontSize: 16)
                                  ],
                                ),
                              ],
                            ),
                            Positioned(
                              right: MySize.size12,
                              top: MySize.size28,
                              child: Row(
                                children: [
                                  Container(
                                    height: MySize.size80,
                                    width: MySize.size80,
                                    decoration: BoxDecoration(
                                        color: Colors.blue[100],
                                        borderRadius:
                                            BorderRadius.circular(10),
                                    ),
                                    child: Image(image: AssetImage(AppConstant.pasta_img)),
                                  ),
                                  SizedBox(
                                    width: MySize.size10,
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          count++;
                                          setState(() {

                                          });
                                        },
                                        child: SvgPicture.asset(
                                            AppConstant.ic_item_add_green),
                                      ),
                                      SizedBox(
                                        height: MySize.size5,
                                      ),
                                      customTextBold(title: count <= 0?"0":count.toString()),
                                      SizedBox(
                                        height: MySize.size5,
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          count--;
                                          setState(() {

                                          });
                                        },
                                        child: SvgPicture.asset(
                                            AppConstant.ic_item_delete_red),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: MySize.size20,
              ),
              customDivider(
                  width: double.infinity, color: AppColors.borderColorAD),
              SizedBox(
                height: MySize.size12,
              ),
              customTextMedium(title: "Tip your delivery person", fontSize: 18),
              SizedBox(
                height: MySize.size10,
              ),
              customTextRegular(
                  title: "Your tip is sent to the courtier 1hours "
                      "after delivery."),
              SizedBox(
                height: MySize.size7,
              ),
              customTextRegular(
                title: "You can adjust the amount until then.",
              ),
              SizedBox(height: MySize.size15),
              SizedBox(
                height: MySize.size60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: GestureDetector(
                          onTap: (){
                            print(currentIndex);
                            if(currentIndex == index) {}
                            else{
                              setState(() {
                                currentIndex = index;
                              });
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: MySize.size20,
                                right: MySize.size20,
                                // bottom: MySize.size10
                      ),
                            color: currentIndex == index ?AppColors.primaryColor62:AppColors.primaryColorF0,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MySize.size6,
                                ),
                                customTextMedium(
                                    title: "10%", fontSize: MySize.size16),
                                SizedBox(
                                  height: MySize.size6,
                                ),
                                customTextRegular(
                                    title: "\$1.45", fontSize: MySize.size14)
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: MySize.scaleFactorHeight * 127,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextBold(
                      title: "Deliver To: ", fontSize: MySize.size16),
                  customTextBold(
                      title: "\$3.95",
                      fontSize: MySize.size19,
                      color: AppColors.primaryColor62),
                ],
              ),
              SizedBox(
                height: MySize.size16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextRegular(
                      title: "71, Charter str. App. 5r., Boston, MA, USA",
                      fontSize: MySize.size15),
                  SvgPicture.asset(AppConstant.ic_edit),
                ],
              ),
              SizedBox(
                height: MySize.size17,
              ),
              customDivider(
                  width: double.infinity, color: AppColors.borderColorAD),
              SizedBox(
                height: MySize.size19,
              ),
              customTextMedium(title: "Deliver at - 10:00"),
              SizedBox(
                height: MySize.size25,
              ),
              customTextField(
                  bordercolor: AppColors.borderColorAD,
                  suffix: true,
                  suffixWidget: ElevatedButton(
                    onPressed: () {
                      authcustombottomsheet(
                          context,
                          text1: "Please Wait",
                          text2: "System are ait for the recipient to accept your order. We will notify you as soon as we have an update on the status of your order.",
                          image: AppConstant.ic_success,
                          );
                    },
                    child: customTextMedium(
                      title: "APPLY",
                    ),
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: AppColors.btnColorDE,
                        fixedSize:
                            Size(MySize.scaleFactorWidth * 135, MySize.size44)),
                  )),
              SizedBox(
                height: MySize.size26,
              ),
              customDivider(
                  width: double.infinity, color: AppColors.borderColorAD),
              SizedBox(
                height: MySize.size18,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RchText(text: "Sub-total:",text1: "\$ 30.00",),
                    SizedBox(height: MySize.size12,),
                    RchText(text: "Tax",text1: "\$ 30.00",),
                    SizedBox(height: MySize.size12,),
                    RchText(text: "Delivery",text1: "\$ 30.00",),
                    SizedBox(height: MySize.size12,),
                    RchText(text: "Promo",text1: "\$ 30.00",),
                    SizedBox(height: MySize.size12,),
                    customDivider(width: double.infinity,color: AppColors
                        .borderColorAD),
                    SizedBox(height: MySize.size7,),
                    RchText(text: "Sub-total:",text1: "\$ 30.00",),
                  ],
                ),
              ),
              SizedBox(height: MySize.size24,),
              Container(
                width: double.infinity,
                height: MySize.size50,
                child: ElevatedButton(
                  onPressed: (){

                    authcustombottomsheet(

                      context,
                      text1: "Order Has Been Accepted By Recipient Successfully! ",
                      text2: "Thank you for letting us know. You will be redirected to the shipping tracking page in a few seconds, where you can monitor the progress of your shipment..   ",
                      image: AppConstant.ic_success,
                    );
                      Get.to(DLSVendorService());
                  }, child:
                customTextMedium(title: "PAY NOW"),style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: AppColors.btnColorDE
                ),),
              ),
              SizedBox(
                height: MySize.size10,
              ),
            ],
          ),

        ),

      ),
    );
  }
}
