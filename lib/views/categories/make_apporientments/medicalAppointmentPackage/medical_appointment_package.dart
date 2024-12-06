import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import '../../../base/appointment_app_bar.dart';
import '../../../base/custom_divider.dart';
import '../MedicalAboutPetiant/medicalAboutPetiant.dart';

class MedicalAppointmentPackage extends StatefulWidget {
  const MedicalAppointmentPackage({Key? key}) : super(key: key);

  @override
  State<MedicalAppointmentPackage> createState() => _MedicalAppointmentPackageState();
}

class _MedicalAppointmentPackageState extends State<MedicalAppointmentPackage> {
  String selectedDuration = '30 Minutes';
  int duration1 = 0;
  List<String> Duration = [
    '/30 mins',
    '/40 mins',
    '/1 hrs',
    '/3 hrs'

  ];
  int selectedDurationIndex = 0; // Added index to track selected duration
  bool border = false;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
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
                customTextMedium(title: 'Select Duration', fontSize: MySize.size16, fontWeight: FontWeight.w500),
                SizedBox(height: MySize.size4),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
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
                      title: customTextLight(title: selectedDuration, fontSize: MySize.size16),
                      trailing: SvgPicture.asset(AppConstant.ic_drop_down),

                      backgroundColor: AppColors.whiteColorFF,
                      onExpansionChanged: (value) {
                        setState(() {
                          border = ! border;
                        });
                      },
                      collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MySize.size10)),
                      children: [
                        buildListTile('30 Minutes',0),
                        buildListTile('40 Minutes',1),
                        buildListTile('1 Hour',2),
                        buildListTile('Long Session',3),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MySize.size20),
                Align(
                    alignment: Alignment.center,
                    child: customDivider(width: MySize.scaleFactorWidth * 340)),
                SizedBox(height: MySize.size16),
                customTextMedium(title: 'Select Package', fontSize: MySize.size16, fontWeight: FontWeight.w500),
                buildPackageListTile('Message', '\$20', 'Chat with Doctor', Duration[duration1],0),
                SizedBox(height: MySize.size20),
                buildPackageListTile('Voice Call', '\$40', 'Voice Call with Doctor', Duration[duration1],1),
                SizedBox(height: MySize.size12),
                buildPackageListTile('Video Call', '\$60', 'Video Call with Doctor', Duration[duration1],2),
                SizedBox(height: MySize.size12),
                buildPackageListTile('In Person', '\$100', 'In Person visit with Doctor', Duration[duration1],3),
                SizedBox(height: MySize.size160),
                customDivider(width: MySize.scaleFactorWidth * 340),
                SizedBox(height: MySize.size12),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MySize.size8),
                  child: customButton(
                    text: 'NEXT',
                    ontap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MedicalAboutPetiant(),));
                    },
                      colors: AppColors.borderColorAD,
                      borderColor: AppColors.borderColorAD,
                    width: MySize.scaleFactorWidth * 348,
                    height: MySize.size48,
                    borderRadius: MySize.size10
                  ),
                )





                // Add more buildPackageListTile entries if needed
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(String duration, int index) {
    return ListTile(
      title: customTextLight(title: duration),
      onTap: () {
        setState(() {
          selectedDuration = duration;
          duration1 = index;


        });
      },
    );
  }

  Widget buildPackageListTile(String title, String cost, String subtitle, String duration, int index) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          color: AppColors.whiteColorFF,
          border: Border.all(color:  AppColors.borderColorAD,width: .4),
        borderRadius: BorderRadius.circular(MySize.size10)
      ),
      margin: EdgeInsets.zero,
      child: ListTile(
        visualDensity: VisualDensity.compact,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MySize.size10)
        ),
        onTap: () {
          setState(() {
            selectedDurationIndex = index; // Update selected duration index

          });
        },
        trailing: selectedDurationIndex == index
            ? SvgPicture.asset(AppConstant.ic_selected, color: AppColors.completedFinishedColor4D)
            : SvgPicture.asset(AppConstant.ic_select),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customTextMedium(title: title, fontSize: MySize.size16, fontWeight: FontWeight.w500),
            customTextMedium(title: cost, fontSize: MySize.size16, fontWeight: FontWeight.w500),
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            customTextLight(title: subtitle, fontSize: MySize.size16, fontWeight: FontWeight.w500),
            customTextLight(title: duration, fontSize: MySize.size16, fontWeight: FontWeight.w500),
          ],
        ),
      ),
    );
  }
}