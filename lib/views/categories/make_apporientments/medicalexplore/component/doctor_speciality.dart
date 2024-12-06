import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/custom_divider.dart';

import '../../../../../utils/mysize.dart';
import '../../../../base/custom_textwidget.dart';



class DoctorSpeciality extends StatefulWidget {
  const DoctorSpeciality({super.key});

  @override
  State<DoctorSpeciality> createState() => _DoctorSpecialityState();
}

class _DoctorSpecialityState extends State<DoctorSpeciality> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        customTextMedium(
            title: "Doctor Speciality",
            fontSize: MySize.size18,
            fontWeight: FontWeight.w500),
        Spacer(),
        customTextMedium(
            title: "See All",
            fontSize: MySize.size14,
            fontWeight: FontWeight.w500,
          color: AppColors.primaryColor62
        ),
      ],),
      SizedBox(
        height: MySize.scaleFactorHeight * 134,
        child: ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: MySize.size20,bottom: MySize.size18,top: MySize.size18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Wrap(
                children: [
                  CircleAvatar(
                    radius: MySize.scaleFactorHeight * 36,
                    backgroundColor: Color(0xFFE4F1EF),
                    child: SvgPicture.asset(AppConstant.ic_teeth,height: MySize.size32,color: AppColors.primaryColor62),
                  ),

                ],
              ),
              customTextMedium(
                  title: "Dentist",
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500),
            ],),
          );
        },),
      ),
      customDivider(
        width: double.infinity,
        color: AppColors.lineColorAD
      ),
    ],);
  }
}
