import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_selectable_container.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/base/textfield.dart';
class XpAddressPoint extends StatefulWidget {
  const XpAddressPoint({super.key});

  @override
  State<XpAddressPoint> createState() => _XpAddressPointState();
}

class _XpAddressPointState extends State<XpAddressPoint> {
  int selectedIndex = -1;
  final TextEditingController buildingController = TextEditingController();
  final TextEditingController apartmentController = TextEditingController();
  final TextEditingController shortNoteController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MySize.size24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MySize.scaleFactorHeight * 21,),

              _buildSectionTitle('Title', MySize.size14),
              _buildTextField('Enter Title',
                  title),
              SizedBox(
                height: MySize.size20,
              ),
              customTextMedium(
                title: 'Select Pickup - Point Address Type',
                fontSize: MySize.size20,
                color: AppColors.titleColor29,
              ),
              SizedBox(
                height: MySize.size16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SelectableContainer(
                    title: 'Office',
                    index: 0,
                    selectedIndex: selectedIndex,
                    onTap: _handleSelection,
                  ),
                  SelectableContainer(
                    title: 'Hotel',
                    index: 1,
                    selectedIndex: selectedIndex,
                    onTap: _handleSelection,
                  ),
                ],
              ),
              SizedBox(
                height: MySize.size8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SelectableContainer(
                    title: 'Villa',
                    index: 2,
                    selectedIndex: selectedIndex,
                    onTap: _handleSelection,
                  ),
                  SelectableContainer(
                    title: 'Apartment',
                    index: 4,
                    selectedIndex: selectedIndex,
                    onTap: _handleSelection,
                  ),
                ],
              ),
              SizedBox(
                height: MySize.size20,
              ),
              customDivider(
                  width: MySize.size363
              ),
              SizedBox(
                height: MySize.scaleFactorHeight * 11,
              ),

              _buildSectionTitle('Apartment Details', MySize.size20),
              SizedBox(
                height: MySize.size16,
              ),
              _buildSectionTitle('Building', MySize.size16),
              _buildTextField('Enter Building',
                  buildingController),
              SizedBox(
                height: MySize.size20,
              ),
              _buildSectionTitle('Apartment number', MySize.size14),
              _buildTextField('Enter Apartment Number',
                  apartmentController),
              SizedBox(
                height: MySize.size20,
              ),
              _buildShortNoteTextField(),
              SizedBox(
                height: MySize.size19,
              ),
              customDivider(
                  width: MySize.size363
              ),
              SizedBox(
                height: MySize.size10,
              ),
              _buildSectionTitle('Complete Address', MySize.size20),
              SizedBox(
                height: MySize.size20,
              ),
              _buildSectionTitle('Complete Address', MySize.size14),
              _buildTextField(
                  'Locate your apartment, villa, office, or hotel address.',
                  addressController
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MySize.size24),
          child: Column(
            children: [
              customDivider(
                  width: MySize.size363
              ),
              SizedBox(
                height: MySize.size14,
              ),
              customButton(
                ontap: (){
                  Get.back();
                },
                  width: double.infinity,
                  height: MySize.scaleFactorHeight * 46,
                  text: "Save Address",
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  fontColor: Colors.black,
                  borderRadius: MySize.size8,
                  borderColor: AppColors.lineColorC8,
                  colors: AppColors.lineColorC8),
              SizedBox(height: MySize.size8,)
            ],
          ),
        ),
      ),
    );
  }

  void _handleSelection(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget _buildSectionTitle(String title, double fontSize) {
    return Align(
      alignment: Alignment.centerLeft,
      child: customTextMedium(
        title: title,
        fontSize: MySize.size16,
        fontWeight: FontWeight.w500,
        color: AppColors.titleColor29,
      ),
    );
  }

  Widget _buildTextField(String hintText, TextEditingController controller) {
    return Column(
      children: [
        SizedBox(
          height: MySize.size4,
        ),
        customTextField(
          borderRadius: MySize.size10,
          hintText: hintText,
          hinttextcolor: AppColors.hinttextcolor,
          maxLines: 1,
          minLines: 1,
          bordercolor: AppColors.lineColorAD,
          ontap: (){},
          controller: controller,
        ),
      ],
    );
  }

  Widget _buildShortNoteTextField() {
    return Column(
      children: [
        SizedBox(
          height: MySize.size4,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: RichText(
            text: TextSpan(children: [
              WidgetSpan(child: customTextMedium(title: 'Short Note',fontSize: MySize.size16)),
              WidgetSpan(child: customTextLight(title: ' (Optional)',fontSize: MySize.size16))
            ]),
          ),
        ),
        _buildTextField('Enter short note', shortNoteController),
      ],
    );
  }

}
