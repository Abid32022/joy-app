import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class CheckingTime extends StatefulWidget {

  String text;
  CheckingTime({
    required this.text,
    Key? key}) : super(key: key);

  @override
  State<CheckingTime> createState() => _CheckingTimeState();
}

class _CheckingTimeState extends State<CheckingTime> {
  String _setTime = '', _setDate = '';

  String _hour = '', _minute = '', _time = '';

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      initialDatePickerMode: DatePickerMode.day,
      firstDate: DateTime(2015),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat.yMd().format(selectedDate);
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
        _hour = selectedTime.hour.toString();
        _minute = selectedTime.minute.toString();
        _time = _hour + ' : ' + _minute;
        _timeController.text = _time;
        _timeController.text = DateFormat.jm().format(
          DateTime(2019, 8, 1, selectedTime.hour, selectedTime.minute),
        );
      });
    }
  }

  @override
  void initState() {
    _dateController.text = DateFormat.yMd().format(DateTime.now());

    _timeController.text = DateFormat.jm().format(
      DateTime(2019, 8, 1, DateTime.now().hour, DateTime.now().minute),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customTextMedium(
            title: widget.text,
            fontSize: MySize.size18,
            fontWeight: FontWeight.w500),
        SizedBox(height: MySize.size10),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: MySize.scaleFactorHeight * 53,
                padding: EdgeInsets.symmetric(horizontal: MySize.size10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(MySize.size8),
                    bottomLeft: Radius.circular(MySize.size8),
                  ),
                  border: Border.all(color: AppColors.lineColorAD, width: 0.3),
                  color: AppColors.whiteColorFF,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: MySize.size5),
                        customTextRegular(
                          title: _dateController.text,
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.placeHolderColor4F,
                        ),
                        customTextRegular(
                          title: DateFormat.EEEE().format(selectedDate),
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    GestureDetector(
                        onTap: () => _selectDate(context),
                        child: SvgPicture.asset(AppConstant.ic_class_date)),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: MySize.scaleFactorHeight * 53,
                padding: EdgeInsets.symmetric(horizontal: MySize.size10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(MySize.size8),
                    topRight: Radius.circular(MySize.size8),
                  ),
                  border: Border.all(color: AppColors.lineColorAD, width: 0.3),
                  color: AppColors.whiteColorFF,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customTextRegular(
                      title: _timeController.text,
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w500,
                    ),
                    GestureDetector(
                        onTap: () => _selectTime(context),
                        child: SvgPicture.asset(AppConstant.ic_clock, height: MySize.size28)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
