import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_rich_text.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MySize.size20,),
              customTextBold(title: "Estimate Charge",fontSize: 20,fontWeight: FontWeight.w500),
              SizedBox(height: MySize.size18,),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.borderColorAD,
                        width: 0.5,
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 13,right: 13,top: 14,
                        bottom: 11),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context,index)
                    {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              customTextBold(title: "Fixture Replacement", fontSize: MySize.size16,fontWeight: FontWeight.w500),
                              Spacer(),
                              CustomRichText(text1: "\$05 ", text2: "CAD ", text3: "sqft", fontSize:MySize.size16,),
                              SizedBox(width: MySize.size8,),
                              customTextBold(title: "3"),
                              SizedBox(width: MySize.size2,),
                              SvgPicture.asset(AppConstant.ic_delete,height: MySize.size20,),
                            ],
                          ),
                          SizedBox(height: MySize.size10,),
                          customTextRegular(title: "Price Per Square Foot", fontSize: MySize.size14,),
                          SizedBox(height: MySize.size10,),
                          customDivider(
                              width: MediaQuery.of(context).size.width,
                              color: AppColors.borderColorAD
                          ),
                          SizedBox(height: MySize.size17,),
                        ],
                      );
                    }
                    ),
                  ),
                ),
              ),
              // SizedBox(height: MySize.size10,),
              Row(
                children: [
                  customTextBold(title: "Total (CAD)", fontSize: MySize.size16,fontWeight: FontWeight.w500),
                  Spacer(),
                  CustomRichText(text1: "\$50.19 ", text2: "CAD ", fontSize:MySize.size16,),
                  SizedBox(width: MySize.size8,),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
              RichText(text: TextSpan(text: "Note* ",style:TextStyle(color:
              AppColors.parcelPrimaryColor5C),
                  children: [
                TextSpan(text: "Every shoe and bag will assessment and "
                    "pricing based on factors such as material, condition, "
                    "and overall value.",style: TextStyle(color: AppColors.lineColorAD
                )),
              ]),),
              SizedBox(height: MySize.size100,),



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
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: AppColors.lineColorC8,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: SvgPicture.asset(AppConstant.ic_back),
                    ),
                    SizedBox(width: MySize.size14,),
                    Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: AppColors.parcelPrimaryColor5C,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: MediaQuery.of(context).size.width *
                                0.07 ,),
                            customTextMedium(title: "Send Request for quotation", color: AppColors.whiteColorFF,),
                            SizedBox(width: MediaQuery.of(context).size.width *
                                0.098 ,),
                            SvgPicture.asset(AppConstant.ic_forward,color: AppColors.whiteColorFF,)
                          ],
                        )
                    )
                  ],
                ),
              ],
            ),
          ),
        )

    );
  }
}
