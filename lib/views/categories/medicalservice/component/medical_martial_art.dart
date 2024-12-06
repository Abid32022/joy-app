import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';


class MartialArtStyle extends StatefulWidget {
  const MartialArtStyle({super.key});

  @override
  State<MartialArtStyle> createState() => _MartialArtStyleState();
}

class _MartialArtStyleState extends State<MartialArtStyle> {
  int? currentIndex;
  bool value = false;
  bool seeMoreValue = false;
  List martial = [
    "Wifi",
    "Kitchen",
    "Washing Machine",
    "Dryer",
    "Air Conditioning",
    "Heating",
    "Dedicated Workspace",
    "Wifi",
    "Kitchen",
    "Washing Machine",
    "Dryer",
    "Air Conditioning",
    "Heating",
    "Dedicated Workspace",
    "Wifi",
    "Kitchen",
    "Washing Machine",
    "Dryer",
    "Air Conditioning",
    "Heating",
    "Dedicated Workspace",
    "Wifi",
    "Kitchen",
    "Washing Machine",
    "Dryer",
    "Air Conditioning",
    "Heating",
    "Dedicated Workspace",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
              title: "Martial Art Style",
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
          visible: value == true,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: seeMoreValue ? martial.length : 7,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  customTextRegular(
                      title: martial[index],
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w400),
                  Spacer(),
                  Transform.scale(
                    scale: 1.2,
                    child: Checkbox(
                      activeColor: AppColors.primaryColor62,
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
      GestureDetector(
        onTap: (){
          if(value){
            setState(() {
              seeMoreValue = !seeMoreValue;
            });
          }
        },

        child: Row(children: [
          customTextMedium(
              title: seeMoreValue ? "CLOSE":"See More",
              fontSize: MySize.size18,
              color:seeMoreValue? AppColors.criticalCrisisColor00:AppColors.primaryColor62,
              fontWeight: FontWeight.w500),
          SizedBox(width: MySize.size10),
          SvgPicture.asset(
            seeMoreValue
                ? AppConstant.ic_arrow_up_red: AppConstant.ic_arrow_up_green,)
        ],),
      ),
      SizedBox(height: MySize.size10),
      customDivider(
          width: MySize.scaleFactorWidth * 363
      ),
    ],);
  }
}
