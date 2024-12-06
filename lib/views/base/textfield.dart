import 'package:flutter/material.dart';
import 'package:joyapp/utils/mysize.dart';

import '../../utils/appcolors.dart';

Widget customTextField({
  double borderWidth = 1,
  bool showtext = true,
  String? hintText,
  FontWeight fontWeight = FontWeight.w400,
  TextEditingController? controller,
  Function? validator,
  double fontSize = 14,
  double verticalpadding = 10,
  Color bordercolor = Colors.blue,
  Color cursorColor = Colors.black,
  Color hinttextcolor = Colors.grey,
  int maxLines = 200,
  int minLines = 5,
  bool? isprefixImage = false,
  bool? suffix = false,
  bool enableborder = true,
  Widget? suffixWidget,
  bool? isObscure = false,
  Color fillcolor = Colors.white,
  bool filled = false,
  double borderRadius = 8,
  bool nonborder = false,
  Function? ontap,
  bool isKeyboard = false,
  Function? onChanged,
  bool showErrorBorder = false,
  double errorBorderWidth = 2.0,
  bool isPrefixIcon = true,
  bool focusBorder = false,
  Widget? prefixImage,
  double? height = 46,
  Color textFieldColor = Colors.black,
  IconData prefixicon = Icons.mail,
  bool noOutlineBorder = true,
  bool hideBorder = false,
  bool disableBorder = false, // Added property
}) {
  return SizedBox(
    height: MySize.scaleFactorHeight * 46,
    child: TextFormField(
        onTap: () {
          ontap!();
        },
        // onChanged: (text){
        //   onChanged!();
        // },
        controller: controller,
        validator: (value) {
          return validator!(value);
        },
        keyboardType: isKeyboard ? TextInputType.number : TextInputType.text,
        minLines: minLines,
        maxLines: maxLines,
        obscureText: isObscure!,
        cursorColor: cursorColor,
        style: TextStyle(
            fontSize: MySize.size16,
            fontWeight: FontWeight.w500,
            color: textFieldColor,
            fontFamily: 'EnnVisions'),
        // style: focusBorder?  const TextStyle(color: Colors.yellow,fontSize: 9):null,
        decoration: noOutlineBorder
            ? InputDecoration(
                errorBorder: OutlineInputBorder(

                  borderSide: BorderSide(
                      color: Colors.red, width: MySize.scaleFactorWidth * 2),

                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                filled: filled,
                fillColor: fillcolor,
                focusedErrorBorder: OutlineInputBorder(

                  borderSide:  BorderSide(color: Colors.red, width: borderWidth),


                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                enabledBorder: enableborder
                    ? OutlineInputBorder(

                        borderSide: BorderSide(color: bordercolor, width: borderWidth),
                        borderRadius: BorderRadius.circular(borderRadius),
                      )
                    : OutlineInputBorder(
                        borderSide: BorderSide(color: bordercolor, width: borderWidth),
                        borderRadius: BorderRadius.circular(borderRadius),
                      ),
                contentPadding:
                     EdgeInsets.symmetric(horizontal: 10, vertical: verticalpadding),

                hintText: showtext ? hintText : null,
                prefixIcon: prefixImage,
                focusedBorder: enableborder
                    ? OutlineInputBorder(

                        borderSide: BorderSide(color: bordercolor, width: borderWidth),
                        borderRadius: BorderRadius.circular(borderRadius),
                      )
                    : OutlineInputBorder(
                        borderSide: BorderSide(color: bordercolor, width: borderWidth),
                        borderRadius: BorderRadius.circular(borderRadius),
                      ),

                suffixIcon: suffix! ? suffixWidget : null,
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: fontSize,
                    color: hinttextcolor,
                    height: MySize.scaleFactorHeight * 1,
                    fontFamily: 'EnnVisions'),
              )
            : InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: fontSize,
                    color: Colors.white,
                    height: MySize.scaleFactorHeight * 1,
                    fontFamily: 'EnnVisions'),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color:
                        Colors.brown, // Color for the enabled underline border
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color:
                        Colors.brown, // Color for the focused underline border
                  ),
                ),
                suffixIcon: suffixWidget,
              )),

  );
}
