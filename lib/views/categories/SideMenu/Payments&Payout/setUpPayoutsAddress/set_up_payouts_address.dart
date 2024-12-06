import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/textfield.dart';
import '../../../../../utils/appcolors.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_app_bar.dart';
import '../../../../base/custom_button.dart';
import '../../../../base/custom_textwidget.dart';
import '../setUpPayoutsReview/set_up_payouts_review.dart';

class SetUpPayoutsAddress extends StatefulWidget {
  const SetUpPayoutsAddress({super.key});

  @override
  State<SetUpPayoutsAddress> createState() => _SetUpPayoutsAddressState();
}

class _SetUpPayoutsAddressState extends State<SetUpPayoutsAddress> {

  TextEditingController streetAddressController = TextEditingController();
  TextEditingController flatSuiteBldgController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: () {
          Navigator.pop(context);
        },
        verifiedVisibile: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MySize.scaleFactorWidth * 22,
            vertical: MySize.scaleFactorHeight * 19),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextMedium(
                title: 'Add the address associated with this account',
                fontSize: MySize.size22,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.scaleFactorHeight*18),

              customTextLight(
                  title: 'Add the primary address for Adnan Qureshi. This is where they actually live (usually on utility bills).',
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.hinttextcolor),


              SizedBox(height: MySize.size14,),

              customTextMedium(title: 'Street Address',
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.scaleFactorHeight * 7,),
              customTextField(
                controller: streetAddressController,
                  minLines: 1,
                  hintText: 'Enter Street Address (required)',
                  suffix: true,
                  filled: true,
                  borderWidth: .5,
                  fillcolor: AppColors.whiteColorFF,
                  bordercolor: AppColors.borderColorAD,
                  suffixWidget: IconButton(onPressed: () {
                  }, icon: SvgPicture.asset(AppConstant.ic_drop_down)),
                ontap: (){

                },
              ),

              SizedBox(height: MySize.size20,),
              customTextMedium(title: 'Flat, Suite Bldg',
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.scaleFactorHeight * 7,),
              customTextField(
                minLines: 1,
                controller: flatSuiteBldgController,
                hintText: 'Enter Flat, Suite Bldg (Optional)',
                filled: true,
                borderWidth: .5,
                fillcolor: AppColors.whiteColorFF,
                bordercolor: AppColors.borderColorAD,
                ontap: (){

                },
              ),
              SizedBox(height: MySize.size20,),
              customTextMedium(title: 'City',
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.scaleFactorHeight * 7,),
              customTextField(
                minLines: 1,
                controller: cityController,
                hintText: 'Enter City Name (Optional)',
                filled: true,
                borderWidth: .5,
                fillcolor: AppColors.whiteColorFF,
                bordercolor: AppColors.borderColorAD,
                ontap: (){

                },
              ),
              SizedBox(height: MySize.size20,),
              customTextMedium(title: 'Country or Region',
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.scaleFactorHeight * 7,),
              customTextField(
                minLines: 1,
                controller: countryController,
                hintText: 'Select Country',
                filled: true,
                borderRadius: MySize.size2,
                borderWidth: .5,
                fillcolor: AppColors.whiteColorFF,
                bordercolor: AppColors.borderColorAD,
                ontap: (){

                },
              ),
              customTextField(
                minLines: 1,
                controller: zipcodeController,
                borderRadius: MySize.size2,
                hintText: 'Enter Zipcode',
                filled: true,
                borderWidth: .5,
                fillcolor: AppColors.whiteColorFF,
                bordercolor: AppColors.borderColorAD,
                ontap: (){
                },
              ),
              SizedBox(height: MySize.size20,),
              customTextMedium(title: 'Country / Region',
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.scaleFactorHeight * 7,),
              customTextField(
                minLines: 1,
                controller: countryController,
                hintText: 'Canada',
                filled: true,
                ontap: (){

                },
                borderWidth: .5,
                fillcolor: AppColors.btnColorDE,
                bordercolor: AppColors.borderColorAD,
              ),
              SizedBox(height: MySize.size120,),
              customDivider(width: MySize.scaleFactorWidth * 320),
              SizedBox(height: MySize.size18,),
              customButton(
                  colors: AppColors.btnColorDE,
                  text: 'Continue',
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w600,
                  width: MySize.scaleFactorWidth * 360,
                  height: MySize.scaleFactorHeight * 46,
                  borderRadius: MySize.size10,
                  borderColor: AppColors.btnColorDE,
                  ontap: () {
                    Get.to(SetUpPayoutsReview());
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}