import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/sell&rent/propertylisting/base/property_type.dart';
class PropertyMap1 extends StatefulWidget {
  const PropertyMap1({super.key});

  @override
  State<PropertyMap1> createState() => _PropertyMap1State();
}

class _PropertyMap1State extends State<PropertyMap1> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: Stack(
        children: [
          Image.asset(AppConstant.map_backg,height: double.infinity,width: double.infinity,),
          Column(
            children: [
              PropertyType(),
            ],
          ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: GestureDetector(
          onTap: (){
            showModalBottomSheet(
              isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Container(
                    height: MySize.scaleFactorHeight * 135,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MySize.size8),
                          border: Border.all(color: AppColors.lineColorAD),
                          color: AppColors.whiteColorFF),
                      child: Row(children: [
                        Container(
                          width: MySize.scaleFactorWidth * 142,
                          height: MySize.scaleFactorHeight * 135,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(MySize.size8),
                          ),
                          child: Image.asset(AppConstant.house2, fit: BoxFit.fill),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MySize.size12,
                              top: MySize.size12,
                              bottom: MySize.size12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MySize.scaleFactorWidth * 170,
                                child: customTextMedium(
                                    title: "Upstairs rental your next home in the sky",
                                    fontSize: MySize.size18,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: MySize.size5,
                              ),
                              customTextRegular(
                                  title: "8 bed . 4 bath . 2 stories",
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subTitleColor37),
                              SizedBox(
                                height: MySize.size5,
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Rent",
                                        style: TextStyle(
                                          fontSize: MySize.size16,
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.underline,
                                          decorationColor: AppColors.primaryColor62,
                                          color: AppColors.primaryColor62,
                                        )),
                                    TextSpan(
                                        text: " \$1,490 ",
                                        style: TextStyle(
                                          fontSize: MySize.size16,
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.underline,
                                          decorationColor: AppColors.blackColor00,
                                          color: AppColors.blackColor00,
                                        )),
                                    TextSpan(
                                        text: "CAD",
                                        style: TextStyle(
                                          fontSize: MySize.size16,
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.underline,
                                          decorationColor:
                                          AppColors.currencyShortCodeColor60,
                                          color: AppColors.currencyShortCodeColor60,
                                        )),
                                  ]))
                            ],
                          ),
                        )
                      ]),
                    ),
                  );
                },
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(MySize.size10),
                topRight: Radius.circular(MySize.size10),
              ),
              color: Colors.white, // Change the color as needed
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // You can change the shadow color here
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes the position of the shadow
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: MySize.scaleFactorHeight * 14),
                child: customTextRegular(
                  title: 'Over 1,444 listings',
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor00,
                ),
              ),
            ),
          ),
        ),
      )
        ],
      ),
    );
  }
}
