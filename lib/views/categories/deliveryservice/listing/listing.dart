import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../../../../utils/mysize.dart';
import '../vendorServiceScreen1/vendorservice1.dart';

class Listing extends StatefulWidget {
  const Listing({super.key});

  @override
  State<Listing> createState() => _ListingState();
}

class _ListingState extends State<Listing> {
  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.87,
                    child: Image(image: AssetImage(AppConstant.ic_map_background),fit: BoxFit.fill,)),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MySize.size24,vertical: MySize.size20),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.only(left: MySize.size23,right: MySize.size3),
                          width: MySize.scaleFactorWidth * 130,
                          height: MySize.scaleFactorHeight * 46,
                          decoration: BoxDecoration(
                              color: Color(0xFFEABC01),
                              borderRadius: BorderRadius.circular(MySize.size25)
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customTextRegular(title: 'AWAY', color: AppColors.whiteColorFF,fontSize: MySize.size17),
                              Container(
                                  height: MySize.scaleFactorHeight * 40,
                                  width: MySize.scaleFactorWidth * 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.whiteColorFF
                                  ),
                                  child: Center(child: SvgPicture.asset(AppConstant.ic_sports_car,width: MySize.size28,height: MySize.size19,)))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MySize.size80,
                      ),
                      Container(
                        height: MySize.scaleFactorHeight * 400,
                        child: Image(image: AssetImage(AppConstant.ic_delivering),fit: BoxFit.fill),
                      ),
                      SizedBox(
                        height: MySize.size50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Get.to(DLSVendorService1());
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(MySize.size10),
                                  color: Color(0xFF1877F2)
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.all(MySize.size15),
                                  child: SvgPicture.asset(AppConstant.ic_arrowUp,width: MySize
                                      .size20,),
                                )),
                          ),
                          SvgPicture.asset(AppConstant.ic_target),
                        ],),
                    ],),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
