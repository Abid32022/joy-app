import 'package:flutter/material.dart';

import '../../utils/appcolors.dart';

Widget customDivider({double width = 0,double height = 0.5, Color color = AppColors.borderColorAD}){
  return Container(
    height: height,
    width: width,
    color: color,
  );
}