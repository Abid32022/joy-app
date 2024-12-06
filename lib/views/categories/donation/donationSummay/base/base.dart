import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/appcolors.dart';
import '../../../../../utils/appconstant.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_textwidget.dart';


class DonationBottomSheet {
  void DonationMessage(BuildContext context) {
    donationMessage(context);
  }

  Future donationMessage(BuildContext context) async {
    await showModalBottomSheet(
      backgroundColor: AppColors.whiteColorFF,
      context: context,
      isScrollControlled: false,
      builder: (context) => Padding(
        padding:  EdgeInsets.only(top: MySize.size16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppConstant.ic_success,
              height: MySize.scaleFactorHeight * 61,
              width: MySize.scaleFactorWidth * 61,
              color: AppColors.completedFinishedColor4D,
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 13,
            ),
            customTextMedium(
                title: 'Donation Successful',
                fontSize: MySize.size18,
                fontWeight: FontWeight.w500),
            SizedBox(
              height: MySize.scaleFactorHeight * 5,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16),
              child: customTextRegular(
                  title:
                  'Thank you for your generous gift to Adnan Qureshi. We are thrilled to have your support. Through your donation, we have been able to accomplish \$25000.00 and continue working towards Helping feed the impoverished during Ramadan. You truly make a difference for us, and we are extremely grateful!',
                  fontSize: MySize.size18,
                  maxLines: 7,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center),
            ),
            SizedBox(
              height: MySize.scaleFactorHeight * 27,
            ),
          ],
        ),
      ),
    );
  }

}