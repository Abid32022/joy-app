import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/textfield.dart';
import '../../../../../utils/appcolors.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_app_bar.dart';
import '../../../../base/custom_button.dart';
import '../../../../base/custom_textwidget.dart';
import '../setUpPayoutsAddBank/setup_payouts_add_bank.dart';

class SetUpPayoutsBrithOfPlace extends StatefulWidget {
  const SetUpPayoutsBrithOfPlace({super.key});

  @override
  State<SetUpPayoutsBrithOfPlace> createState() => _SetUpPayoutsBrithOfPlaceState();
}

class _SetUpPayoutsBrithOfPlaceState extends State<SetUpPayoutsBrithOfPlace> {
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController placeOfBirthController = TextEditingController();
  TextEditingController citizenshipController = TextEditingController();


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
                title: 'We need more details about the account holder.',
                fontSize: MySize.size22,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.size16,),
              customTextLight(
                  title: 'This information is legally mandated as part of the Know Your Customer (KYC) process.',
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.hinttextcolor),
              InkWell(
                  onTap: () {

                  },
                  child: customTextMedium(title: 'More Info.',
                      fontWeight: FontWeight.w500,
                      fontSize: MySize.size16,
                      decoration: TextDecoration.underline)),
              SizedBox(height: MySize.size18,),
              customTextMedium(title: 'Date of Birth',
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.scaleFactorHeight * 7,),
              customTextField(
                  minLines: 1,
                  hintText: 'Select Date of Brith (Required)',
                  suffix: true,
                  filled: true,
                  borderWidth: .5,
                  fillcolor: AppColors.whiteColorFF,
                  bordercolor: AppColors.borderColorAD,
                  suffixWidget: IconButton(onPressed: () {

                  }, icon: SvgPicture.asset(AppConstant.ic_booked))
              ),
              SizedBox(height: MySize.size20,),
              customTextMedium(title: 'Place of Birth',
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.scaleFactorHeight * 7,),
              customTextField(
                  minLines: 1,
                  hintText: 'Select Place of Brith (Required)',
                  suffix: true,
                  filled: true,
                  borderWidth: .5,
                  fillcolor: AppColors.whiteColorFF,
                  bordercolor: AppColors.borderColorAD,
                  suffixWidget: IconButton(onPressed: () {

                  }, icon: SvgPicture.asset(AppConstant.ic_drop_down))
              ),
              SizedBox(height: MySize.size16,),
              customTextMedium(title: 'Citizenship',
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500,),
              SizedBox(height: MySize.scaleFactorHeight * 7,),
              customTextField(
                  minLines: 1,
                  hintText: 'Select Citizenship (Required)',
                  suffix: true,
                  filled: true,
                  borderWidth: .5,
                  fillcolor: AppColors.whiteColorFF,
                  bordercolor: AppColors.borderColorAD,
                  suffixWidget: IconButton(onPressed: () {

                  }, icon: SvgPicture.asset(AppConstant.ic_drop_down))
              ),
              SizedBox(height: MySize.size180,),
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
                    Get.to(setUpPayoutsAddBank());
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}