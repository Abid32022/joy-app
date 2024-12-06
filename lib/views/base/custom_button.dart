import 'package:flutter/material.dart';

Widget customButton({
  double? width,
  String text = "",
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.w500,
  Color fontColor = Colors.black,
  double borderRadius = 0,
  Function? ontap,
  Color colors = const Color(0xffFFF0BA),
  Color borderColor = const Color(0xFFF0E1A9),
  double? height = 46,
}) {
  return GestureDetector(
    onTap: () {
      ontap!();
    },
    child: Container(
        // margin: EdgeInsets.only(bottom:80 ),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: colors,

          border: Border.all(color: borderColor),


          // gradient: LinearGradient(
          //   colors: [Colors.blue, AppColors.lightgreen ithOpacity(0.50)],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'EnnVisions',
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: fontColor,
            ),
          ),
        )),
  );
}
