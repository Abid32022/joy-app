
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/appcolors.dart';
import '../../../../utils/appconstant.dart';
import '../../../../utils/mysize.dart';
import '../../../base/custom_textwidget.dart';
import 'component/ratingStars.dart';

class Listing1 extends StatefulWidget {
  const Listing1({super.key});

  @override
  State<Listing1> createState() => _Listing1State();
}

class _Listing1State extends State<Listing1> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: (){
                Get.back();
              },
              child: Icon(Icons.arrow_back_outlined,color: Colors.black,)),
          elevation: 1,
          backgroundColor: AppColors.whiteColorFF,
          title: customTextMedium(title: "Move for Pickup Point",fontSize: 16),
          centerTitle: true,

          actions: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: customTextRegular(title: "Help",fontSize: 16,color:
              AppColors.line2B),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SvgPicture.asset(AppConstant.ic_menu),
            ),
          ],
        ),
      body: SingleChildScrollView(
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
                      title: "SEOUL FOOD", fontSize: 18)),
              SizedBox(
                height: MySize.size10,
              ),
              Center(
                  child: customTextRegular(title: "Please rate, your feedback will help improve ")),
              SizedBox(
                height: MySize.size6,
              ),
              Center(
                  child: customTextRegular(
                      title: "delivery experience and lorem ipsum.")),
              SizedBox(
                height: MySize.size80,
              ),
              RichText(text: TextSpan(text: "* ",style:TextStyle(color:
              AppColors.line2B),
                  children: [
                TextSpan(text: "Your Review About",style:TextStyle(color:
                AppColors.blackColor00,fontSize: MySize.size16))
              ])),
              SizedBox(height: MySize.size6,),
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
                    TextField(
                      maxLines: 14,
                      style: TextStyle(
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.lineColor60
                      ),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
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
              SizedBox(height: MySize.size26,),
              RatingStars(),
            ],
          ),
        ),
      ),
    );
  }
}
