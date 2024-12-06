import 'package:flutter/material.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/make_apporientments/medicaldoctordetial/medical_doctor_detial.dart';
class HostpitalLocationTab extends StatefulWidget {
  const HostpitalLocationTab({super.key});

  @override
  State<HostpitalLocationTab> createState() => _HostpitalLocationTabState();
}

class _HostpitalLocationTabState extends State<HostpitalLocationTab> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(MySize.size10),
                topRight: Radius.circular(MySize.size10),
              ),
              color: Colors.white, // Change the color as needed
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(
                      0.5), // You can change the shadow color here
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes the position of the shadow
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MySize.scaleFactorHeight * 14),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MedicalDoctorDetial(),));
                  },
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
        ),
      ],
    );
  }
}
