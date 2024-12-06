import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';


class SelectFeatures extends StatefulWidget {
  const SelectFeatures({super.key});

  @override
  State<SelectFeatures> createState() => _SelectFeaturesState();
}

class _SelectFeaturesState extends State<SelectFeatures> {
  int? currentIndex;
  bool value = false;
  List improvement = [
    "Wifi",
    "Kitchen",
    "Washing Machine",
    "Dryer",
    "Air Conditioning",
    "Heating",
    "Dedicated Workspace",
  ];
  List seeMore = [
    "Maintenance",
    "Inspection",
    "Landscaping",
    "Real Estate",
    "Moving",
    "Photography",
    "Financial",
    "Miscellaneous",
    "Office Setup",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding:  EdgeInsets.only(right: MySize.size12),
        child: Row(children: [
          customTextMedium(
              title: "Select Features",
              fontSize: MySize.size18,
              fontWeight: FontWeight.w500),
          Spacer(),
          SvgPicture.asset(AppConstant.ic_arrow_up)
        ],),
      ),
      SizedBox(height: MySize.size16),
      Container(
        padding: EdgeInsets.symmetric(horizontal: MySize.size12,vertical: MySize.size12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySize.size8),
          border: Border.all(color: AppColors.lineColorAD,width: 0.3),
          color: AppColors.lineColorC8,
        ),
        child: Row(children: [
          customTextRegular(
              title: "Improvement",
              fontSize: MySize.size16,
              fontWeight: FontWeight.w400),
          Spacer(),
          GestureDetector(
              onTap: (){
                setState(() {
                  value = !value;
                });
              },
              child: SvgPicture.asset(value ?AppConstant.ic_drop_down:AppConstant.ic_forward))
        ]),
      ),
     Visibility(
         visible: value,
         child: ListView.builder(
           shrinkWrap: true,
           itemCount: improvement.length,
           physics: NeverScrollableScrollPhysics(),
           itemBuilder: (context, index) {
           return Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               customTextRegular(
                   title: improvement[index],
                   fontSize: MySize.size16,
                   fontWeight: FontWeight.w400),
               Spacer(),
               Transform.scale(
                 scale: 1.2,
                 child: Checkbox(
                   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(MySize.size5),
                   ),
                   side: BorderSide(color: AppColors.lineColorAD,width: 0.5),
                   value: currentIndex == index,
                   onChanged: (value) {
                     if (value == true) {
                       setState(() {
                         currentIndex = index;
                       });
                     } else {
                       currentIndex = null;
                     }
                   },),
               ),

             ],);
         },)),
      SizedBox(height: MySize.size10),
      customDivider(
        width: MySize.scaleFactorWidth * 363
      ),
      SizedBox(height: MySize.size10),
      Row(children: [
        customTextMedium(
            title: "See More",
            fontSize: MySize.size18,
            color: AppColors.primaryColor62,
            fontWeight: FontWeight.w500),
        SizedBox(width: MySize.size10),
        SvgPicture.asset(AppConstant.ic_drop_down,color:AppColors.primaryColor62 ,)
      ],),
      SizedBox(height: MySize.size10),
      customDivider(
          width: MySize.scaleFactorWidth * 363
      ),
      SizedBox(height: MySize.size5),
      ListView.builder(
        itemCount: seeMore.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(top: MySize.size20),
          padding: EdgeInsets.all(MySize.size12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MySize.size8),
            border: Border.all(color: AppColors.lineColorAD,width: 0.3),
            color: AppColors.whiteColorFF
          ),
          child: Row(children: [
            customTextRegular(
                title: seeMore[index],
                fontSize: MySize.size16,
                fontWeight: FontWeight.w400),
            Spacer(),
            SvgPicture.asset(AppConstant.ic_forward),
          ],),
        );
      },),
      SizedBox(height: MySize.size16),
      customDivider(
          width: MySize.scaleFactorWidth * 363
      ),
    ],);
  }
}
