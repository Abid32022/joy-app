import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';

import '../donationDetail/donation_detail.dart';

class DonationList extends StatefulWidget {
  const DonationList({super.key});

  @override
  State<DonationList> createState() => _DonationListState();
}

class _DonationListState extends State<DonationList> {
  List item = [
    AppConstant.neady1,
    AppConstant.neady2,
    AppConstant.neady3,
  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(height: MySize.size18),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
          child: ListView.builder(
            itemCount: item.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return    Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: (){
                    Get.to(DonationDetail());
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(MySize.size8),
                        color: AppColors.whiteColorFF,
                        border: Border.all(color: AppColors.lineColorC8,width: 1)
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(MySize.size8),
                                topLeft: Radius.circular(MySize.size8)),
                            child: Image.asset(
                              item[index],
                              width: double.infinity,
                              height: MySize.scaleFactorHeight * 222,
                              fit: BoxFit.fill,
                            )),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: MySize.size10),
                          child: Column(
                            children: [
                              SizedBox(
                                height: MySize.scaleFactorHeight * 10,
                              ),
                              customTextMedium(
                                  title: "Helping feed the impoverished during Ramadan",
                                  fontSize: MySize.size16,
                                  fontWeight: FontWeight.w500),
                              SizedBox(
                                height: MySize.scaleFactorHeight * 10,
                              ),
                              customTextRegular(
                                title:
                                "Ramadan Food Packs (\$ 100 to feed a family of five for the entire month of Ramadan)",
                                fontSize: MySize.size16,
                                fontWeight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: MySize.scaleFactorHeight * 10,
                              ),
                              Divider(
                                thickness: 1,
                                color: AppColors.lineColorC8,
                                height: 0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.37,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        customTextMedium(
                                            title: "Our goal",
                                            fontSize: MySize.size16,
                                            color: AppColors.primaryColor62,
                                            fontWeight: FontWeight.w500),
                                        customTextRegular(
                                          title: "\$25000",
                                          fontSize: MySize.size16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                    child: VerticalDivider(
                                      thickness: 1,
                                      color: AppColors.lineColorC8,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MySize.scaleFactorWidth * 5,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.37,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        customTextMedium(
                                            title: "We raised",
                                            fontSize: MySize.size16,
                                            color: AppColors.primaryColor62,
                                            fontWeight: FontWeight.w500),
                                        customTextRegular(
                                          title: "\$25",
                                          fontSize: MySize.size16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
      
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },),
        )
      ],),
    );
  }
}
