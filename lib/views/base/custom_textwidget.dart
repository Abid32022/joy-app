import 'package:flutter/material.dart';

Widget customTextMedium(
    {required String title,
    Color color = Colors.black,
    TextAlign textAlign = TextAlign.start,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return Text(
    title,
    style: TextStyle(
        fontFamily: 'EnnVisionsMedium',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: decoration,
        decorationColor: decorationColor),
    textAlign: textAlign,
  );
}

Widget customTextBold(
    {required String title,
    Color color = Colors.black,
    TextAlign textAlign = TextAlign.start,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return Text(
    title,
    style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: 'EnnVisionsBold',
        decoration: decoration,
        decorationColor: decorationColor
        // height: 1.5,
        // wordSpacing: 5
        ),
    textAlign: textAlign,
  );
}

Widget customTextRegular(
    {required String title,
    Color color = Colors.black,
    TextAlign textAlign = TextAlign.start,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
    Color? decorationColor,
    int? maxLines = 3}) {
  return Text(
    title,
    style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'EnnVisions',
        fontWeight: fontWeight,
        color: color,
        // height: 1.5,
        decoration: decoration,
        decorationColor: decorationColor),
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    textAlign: textAlign,
  );
}


Widget customTextLight(
    {required String title,
    Color color = Colors.black,
    TextAlign textAlign = TextAlign.start,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
    Color? decorationColor,
    }) {

  return Text(
    title,
    style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'EnnVisionsLight',
        fontWeight: fontWeight,
        color: color,
        decoration: decoration,
        decorationColor: decorationColor
        // height: 1.5,
        ),
    textAlign: textAlign,
  );
}
