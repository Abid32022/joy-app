import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';

import '../../../base/appointment_app_bar.dart';
import '../../../base/custom_divider.dart';
import '../MedicalSummay/medical_summay.dart';

class MedicalAboutPetiant extends StatefulWidget {
  const MedicalAboutPetiant({super.key});

  @override
  State<MedicalAboutPetiant> createState() => _MedicalAboutPetiantState();
}

class _MedicalAboutPetiantState extends State<MedicalAboutPetiant> {
  List<String> patientTypes = [
    'Self',
    'Wife',
    'Husband',
    'Child',
  ];
  int selectedPatientTypeIndex = 0;
  bool border = false;

  List<String> concernType = [
    '24 Years',
    'Minor',
    'Adult',
    '50 +',
  ];
  int selectedConcernTypeIndex = 0;
  bool border2 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: AppointmentAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.size17, vertical: MySize.size22),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextMedium(title: 'Booking For', fontSize: MySize.size16, fontWeight: FontWeight.w500),
                SizedBox(height: MySize.size4),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: border ? Border.all(color: Colors.transparent)  : Border.all(color: AppColors.borderColorAD),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      listTileTheme: ListTileTheme.of(context).copyWith(
                        dense: true,
                      ),
                    ),
                    child: ExpansionTile(
                      clipBehavior: Clip.antiAlias,
                      shape: Border.all(color: Colors.transparent),
                      title: customTextLight(title: patientTypes[selectedPatientTypeIndex], fontSize: MySize.size16),
                      trailing: SvgPicture.asset(AppConstant.ic_drop_down),

                      backgroundColor: AppColors.whiteColorFF,
                      onExpansionChanged: (value) {
                        setState(() {
                          border = ! border;
                        });
                      },
                      collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MySize.size10)),
                      children: [
                        buildListTile(patientTypes, 0),
                        buildListTile(patientTypes, 1),
                        buildListTile(patientTypes, 2),
                        buildListTile(patientTypes, 3),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MySize.size20),
                customTextMedium(title: 'Gender', fontSize: MySize.size16, fontWeight: FontWeight.w500),
                customTextField(
                    filled: true,
                    ontap: (){},
                    fillcolor: Colors.white,
                    bordercolor: AppColors.borderColorAD,borderRadius: MySize.size10,hintText: 'Male',hinttextcolor: AppColors.hinttextcolor),
                SizedBox(height: MySize.size20),
                customTextMedium(title: 'Your Age', fontSize: MySize.size16, fontWeight: FontWeight.w500),
                customTextField( filled: true,
                    ontap: (){},
                    fillcolor: Colors.white,bordercolor: AppColors.borderColorAD,borderRadius: MySize.size10,hintText: '24 years',hinttextcolor: AppColors.hinttextcolor),
                SizedBox(height: MySize.size20),
                customTextMedium(title: 'Concern', fontSize: MySize.size16, fontWeight: FontWeight.w500),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: border2 ? Border.all(color: Colors.transparent)  : Border.all(color: AppColors.borderColorAD),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      listTileTheme: ListTileTheme.of(context).copyWith(
                        dense: true,
                      ),
                    ),
                    child: ExpansionTile(
                      clipBehavior: Clip.antiAlias,
                      shape: Border.all(color: Colors.transparent),
                      title: customTextLight(title: concernType[selectedConcernTypeIndex], fontSize: MySize.size16),
                      trailing: SvgPicture.asset(AppConstant.ic_drop_down),

                      backgroundColor: AppColors.whiteColorFF,
                      onExpansionChanged: (value) {
                        setState(() {
                          border2 = ! border2;
                        });
                      },
                      collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MySize.size10)),
                      children: [
                        buildListTile(concernType, 0),
                        buildListTile(concernType, 1),
                        buildListTile(concernType, 2),
                        buildListTile(concernType, 3),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MySize.size20),
                customTextMedium(title: 'Write Your Problem', fontSize: MySize.size16, fontWeight: FontWeight.w500),
                SizedBox(
                  height: MySize.scaleFactorHeight * 235,
                  child: customTextField( filled: true,
                      minLines: 7,
                      ontap: (){},
                      fillcolor: Colors.white,bordercolor: AppColors.borderColorAD,borderRadius: MySize.size10,hintText: 'Write Your Problem',hinttextcolor: AppColors.hinttextcolor),
                ),
                SizedBox(height: MySize.size60,),
                customDivider(width: MySize.scaleFactorWidth * 340),
                SizedBox(height: MySize.size12),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MySize.size8),
                  child: customButton(
                      text: 'NEXT',
                      fontWeight: FontWeight.w600,
                      ontap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MedicalSummay(),));
                      },
                      colors: AppColors.borderColorAD,
                      borderColor: AppColors.borderColorAD,
                      width: MySize.scaleFactorWidth * 348,
                      height: MySize.size48,
                      borderRadius: MySize.size10
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(List<String> types, int index) {
    return ListTile(
      title: customTextLight(title: types[index]),
      onTap: () {
        setState(() {
          if (types == patientTypes) {
            selectedPatientTypeIndex = index;
          } else if (types == concernType) {
            selectedConcernTypeIndex = index;
          }
        });
      },
    );
  }
}