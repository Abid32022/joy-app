import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../vendorServiceScreen2/vendorScreen2.dart';
import 'components/burgerDetailList.dart';

class DLSVendorService1 extends StatefulWidget {
  const DLSVendorService1({super.key});

  @override
  State<DLSVendorService1> createState() => _DLSVendorService1State();
}

class _DLSVendorService1State extends State<DLSVendorService1> {
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
              SizedBox(height: MySize.size14,),
              Center(
                child: RichText(text: TextSpan(text: "Pickup by:",style:TextStyle
                  (fontSize: MySize.size17,color: AppColors.blackColor00,
                    fontWeight: FontWeight.w500,fontFamily: "EnnVisionsMedium"),
                    children: [
                  TextSpan(text: "3:22 PM",style: TextStyle(color: AppColors.richTxt96))
                ])),
              ),
              SizedBox(height: MySize.size12,),
              customTextMedium(title: "Order Details:"),
              Row(
                children: [
                  customTextRegular(title: "Pick Up 4 items"),
                  Spacer(),
                  RichText(text: TextSpan(text: "Subtotal:",style:TextStyle
                    (fontSize: MySize.size17,color: AppColors.blackColor00,
                      fontWeight: FontWeight.w500,fontFamily: "EnnVisionsMedium"),
                      children: [
                        TextSpan(text: "\$33.75",style: TextStyle(color:
                        AppColors.line2B))
                      ]))
                ],
              ),
              SizedBox(height: MySize.size28,),
              customTextMedium(title: "All in Dairy & Eggs",fontSize: MySize.size28),

              ///Detail list of fastfood..
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                  itemCount:3,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                return BurgerDetailList();
              }),

              // SizedBox(height: MySize.size12,),
              customTextMedium(title: "Butter",fontSize: MySize.size28),

              ///Detail list of fastfood..
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:3,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return BurgerDetailList();
                  }),
              SizedBox(height: MySize.size19,),
              Container(
                padding: EdgeInsets.all(MySize.size15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    border: Border.all(
                        width: 0.1,
                        color: AppColors.lineColorAD),
                    color: AppColors.whiteColorFF
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextMedium(title: "Special Requests",fontSize: MySize.size18,fontWeight: FontWeight.w500),
                    SizedBox(
                      height: MySize.size8,
                    ),
                    TextField(
                      maxLines: 4,
                      style: TextStyle(
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.lineColor60
                      ),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          hintText: "Add comment (eg extra sauce, no onion)",
                          hintStyle: TextStyle(
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.lineColor60
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none
                          )
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MySize.size17,),
              Container(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(onPressed: (){
                    Get.to(DLSVendorService2());
                  }, child:
                  customTextMedium(title: "COLLECTED"),style: ElevatedButton
              .styleFrom(
                    elevation: 0,
          backgroundColor: AppColors.btnColorDE
        ),)),
              SizedBox(height: MySize.size20,),





            ],
          ),
        ),
      ),
    );
  }
}
