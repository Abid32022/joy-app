import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joyapp/utils/appconstant.dart';

// ignore: must_be_immutable
class CustomCheckBox extends StatefulWidget {
  bool isChecked;

  CustomCheckBox({super.key, required this.isChecked});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  // bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isChecked = !widget.isChecked;
        });
      },
      child: Container(
        // padding: const EdgeInsets.all(4),
        height: 17.73,
        width: 17.73,
        decoration: BoxDecoration(
            border: Border.all(
                color: widget.isChecked ? Colors.transparent : Colors.grey
                    .withOpacity(0.3),
                width: 1),
            borderRadius: BorderRadius.circular(4)),
        child: widget.isChecked
            ? SvgPicture.asset(
                AppConstant.ic_chekbox_agreed,
                fit: BoxFit.cover,
              )
            : const SizedBox(),
      ),
    );
  }
}
