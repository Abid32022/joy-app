import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../../../../utils/appcolors.dart';
import '../../../../utils/appconstant.dart';

class ProductAbout extends StatefulWidget {
  const ProductAbout({super.key});

  @override
  State<ProductAbout> createState() => _ProductAboutState();
}

class _ProductAboutState extends State<ProductAbout> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MySize.size30,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.bgColorC4,
                  width: 0.2

                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MySize.size10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: customTextMedium(title: "Small Premium Roast Coffee Additions",fontSize: 20,fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: MySize.size6,),
                  Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                    child: customTextRegular(title: "Choose up to 3"),
                  ),
                  SizedBox(height: MySize.size10,),
                  Container(
                    color: AppColors.whiteColorFF,
                    padding: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 26,bottom: 13,left: 16,
                          right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              customTextMedium(title: "Espresso [1.0 Cals]",
                                  fontSize: 16),Spacer(),
                              CircleAvatar(
                                backgroundColor: AppColors.bgColorC4.withOpacity(0.1),
                                radius: MySize.size24,
                                child: SvgPicture.asset(AppConstant.ic_add),
                              )
                            ],
                          ),
                          SizedBox(height: MySize.size5,),
                          customTextRegular(title: "CA\$0.70")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
              SizedBox(height: MySize.size28,),

              Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.2,
                      color: AppColors.bgColorC4,
                  ),
                    color: AppColors.whiteColorFF,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.bgColorC4.withOpacity(0.1),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: MySize.size30,),
                            customTextMedium(title: "Small Premium Roast Coffee Additions",fontSize: 20,fontWeight: FontWeight.w500),
                            SizedBox(height: MySize.size6,),
                            customTextRegular(title: "Choose up to 17"),
                            SizedBox(height: MySize.size10,),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          shrinkWrap: true,
                          itemBuilder: (context,index)
                      {
                        return Container(
                          padding: EdgeInsets.zero,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 17,top: 18,
                                right: 17),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    customTextMedium(title: "Black [0.0 Cals]"),
                                    Spacer(),
                                    Container(
                                      width: MySize.size25,
                                      height: MySize.size25,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(2),
                                          color: AppColors.bgColorC4.withOpacity(0.1)
                                      ),
                                      child:Center(child: SvgPicture.asset(AppConstant.ic_check)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: MySize.size10,),
                                customDivider(width: double.infinity,
                                    color:AppColors.borderColorAD),
                                SizedBox(height: MySize.size20,),
                              ],
                            ),
                          ),
                        );

                      }),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MySize.size200,),
            ],
          ),
        ),
      ),
        bottomSheet: Container(
          color:AppColors.whiteColorFF,
          height: 70,
          // color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                customDivider(
                    color: AppColors.lineColorAD,
                    width: double.infinity
                ),
                SizedBox(height: MySize.size10,),
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColors.btnColorDE,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        customTextMedium(title: "Save   .  ",fontSize: 16,),
                        SizedBox(width: MySize.size5,),
                        customTextMedium(title: ""
                            "\$ 10.50 CAD",fontSize: 16),
                      ],
                    )
                ),
              ],
            ),
          ),
        )

    );
  }
}
