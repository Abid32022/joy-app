import 'package:flutter/material.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../../../../base/custom_app_bar.dart';
import 'base/base.dart';


class CerditCardListScreen extends StatefulWidget {
  const CerditCardListScreen({super.key});

  @override
  State<CerditCardListScreen> createState() => _CerditCardListScreenState();
}

class _CerditCardListScreenState extends State<CerditCardListScreen> {
  List<bool> switchStates = [false, false, false, false, false];


  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: () {
          Navigator.pop(context);
        },
        showBackButton: true,
        verifiedVisibile: false,
      ),
      body: SafeArea(child: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.size23, vertical: MySize.size22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              customTextMedium(title: 'Cerdit Card List',fontSize: MySize.size22,
                fontWeight:FontWeight.w500,),
              SizedBox(height: MySize.size20,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  border: Border.all(color: AppColors.borderColorAD,width: .5),
                  color: AppColors.whiteColorFF
                ),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return Column(
                    children: [
                      CreditCardWidget.buildCreditCardTile(
                        cardImage: index == 0
                            ? AppConstant.ic_visa_card
                            : AppConstant.ic_visa_card2,
                        cardHolder: 'Marc Wilson',
                        cardNumber: '#CM-00234',
                        expirationDate: '12/22',
                        onSwitchChanged: (value) {
                          setState(() {
                            // Update the switch state for the current card
                            switchStates[index] = value;
          
                            // Set all other switches to false
                            for (int i = 0; i < switchStates.length; i++) {
                              if (i != index) {
                                switchStates[i] = false;
                              }
                            }
                          });
                        },
                        switchOn: switchStates[index],
                      ),
                      customDivider(width: MySize.scaleFactorWidth * 320),
                    ],
                  );
                }),
                )
              ),
              SizedBox(height: MySize.size120,),
              customButton(
                colors: AppColors.btnColorDE,
                  text: 'Add new card',
                fontSize: MySize.size16,
                fontWeight: FontWeight.w500,
                width: MySize.scaleFactorWidth * 360,
                height: MySize.scaleFactorHeight * 46,
                borderRadius: MySize.size10,
                borderColor: AppColors.btnColorDE,
                ontap: (){
                  CerditCardList().PaymentInformation(context);
                }
              )
            ],
          ),
        ),
      )),
    );
  }
}


