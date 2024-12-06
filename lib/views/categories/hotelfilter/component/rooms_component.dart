import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class HotelRooms extends StatefulWidget {

  String text;
   HotelRooms({
     required this.text,
     Key? key}) : super(key: key);

  @override
  State<HotelRooms> createState() => _HotelRoomsState();
}

class _HotelRoomsState extends State<HotelRooms> {

  int value = 0;
  String dropdownValue = 'One - 1';
  String dropdownValue1 = 'One - 1';
  bool visibleValue = false;
  bool selectedValue = false;
  List<String> itemsValue = [
    'One - 1',
    'One - 2',
    'One - 3',
    'One - 4',
  ];
  List<String> itemsValue1 = [
    'One - 1',
    'One - 2',
    'One - 3',
    'One - 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            customTextMedium(
                title: widget.text,
                fontSize: MySize.size18,
                fontWeight: FontWeight.w400),
            Spacer(),
            GestureDetector(
              onTap: () {
                setState(() {
                  visibleValue = !visibleValue;
                });
              },
              child: visibleValue
                  ? SvgPicture.asset(AppConstant.ic_close)
                  : SvgPicture.asset(AppConstant.ic_forward),
            ),
          ],
        ),
        SizedBox(height: visibleValue ? MySize.size10 : 0),
        Visibility(
          visible: visibleValue,
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: MySize.size10, vertical: MySize.size18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MySize.size8),
              border: Border.all(color: AppColors.lineColorAD, width: 0.3),
              color: AppColors.whiteColorFF,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    customTextRegular(
                        title: "Adults",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400),
                    Spacer(),
                    SvgPicture.asset(AppConstant.ic_plus2,
                        height: MySize.size28),
                  ],
                ),
                SizedBox(height: MySize.size18),
                Row(
                  children: [
                    customTextRegular(
                        title: "Children",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        if (value > 0) {
                          setState(() {
                            value--;
                          });
                        }
                      },
                      child: SvgPicture.asset(AppConstant.ic_minus,
                          height: MySize.size28),
                    ),
                    SizedBox(width: MySize.size5),
                    customTextMedium(
                        title: "$value",
                        fontSize: MySize.size18,
                        fontWeight: FontWeight.w500),
                    SizedBox(width: MySize.size5),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          value++;
                        });
                      },
                      child: SvgPicture.asset(AppConstant.ic_plus,
                          height: MySize.size28),
                    ),
                  ],
                ),
                SizedBox(height: MySize.size18),
                customTextRegular(
                    title: "Child Age 1",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
                SizedBox(height: MySize.size7),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: MySize.size10,vertical: MySize.size10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    border: Border.all(color: AppColors.lineColorAD),
                    color: AppColors.whiteColorFF
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                       isDense: true,
                      isExpanded: true,
                       
                      value: dropdownValue,
                      icon: SvgPicture.asset(AppConstant.ic_drop_down),
                      items: itemsValue.map((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: customTextRegular(title: item,fontSize: MySize.size16,fontWeight: FontWeight.w400)
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue = newValue.toString();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: MySize.size16),
                customTextRegular(
                    title: "Child Age 2",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
                SizedBox(height: MySize.size7),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: MySize.size10,vertical: MySize.size10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(color: AppColors.lineColorAD),
                      color: AppColors.whiteColorFF
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isDense: true,
                      isExpanded: true,

                      value: dropdownValue1,
                      icon: SvgPicture.asset(AppConstant.ic_drop_down),
                      items: itemsValue1.map((String item) {
                        return DropdownMenuItem(
                            value: item,
                            child: customTextRegular(title: item,fontSize: MySize.size16,fontWeight: FontWeight.w400)
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue1 = newValue.toString();
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
