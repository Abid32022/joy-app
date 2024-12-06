import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import '../../../../utils/appcolors.dart';
import '../../../base/custom_button.dart';
import '../../../base/custom_divider.dart';
import '../../../base/custom_selectable_container.dart';
import '../../../base/custom_textwidget.dart';
import '../../../base/textfield.dart';
import '../recevierDetails/recevierdetails_screen.dart';

class AddressPointScreen extends StatefulWidget {
   AddressPointScreen({super.key});

 final int selectedIndex = -1;
 final TextEditingController buildingController = TextEditingController();
 final TextEditingController apartmentController = TextEditingController();
 final TextEditingController shortNoteController = TextEditingController();
 final TextEditingController addressController = TextEditingController();

  @override
  State<AddressPointScreen> createState() => _AddressPointScreenState();
}

class _AddressPointScreenState extends State<AddressPointScreen> {
  int selectedIndex = -1;

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MySize.size24,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: MySize.scaleFactorHeight * 21,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: customTextMedium(
                          title: 'Select Pickup - Point Address Type',
                          fontSize: MySize.size20,
                          color: AppColors.titleColor29,
                        ),
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
                      widget.buildingController),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      _buildSectionTitle('Apartment number', MySize.size14),
                      _buildTextField('Enter Apartment Number',
                      widget.apartmentController),
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
                        widget.addressController
                      ),


                    ],
                  ),
                ),
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
                  text: 'SAVE ADDRESS',
                  colors: AppColors.parcelSecondaryColor8B,
                  width: MySize.size380,
                  fontColor: Colors.white,
                  borderRadius: MySize.size10
              ),
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
        _buildTextField('Enter short note', widget.shortNoteController),
      ],
    );
  }
}