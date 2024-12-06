import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class AppointmentAppBar extends StatelessWidget implements PreferredSizeWidget {
  // final String title;

  AppointmentAppBar(
      {Key? key,
      this.onBackTap,
      this.showBackButton = true,
      this.verifiedVisibile = true})
      : super(key: key);
  final Function()? onBackTap;
  final bool showBackButton;
  final bool verifiedVisibile;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return AppBar(
      backgroundColor:
          AppColors.backGroundColorFA, // Customize the background color
      elevation: 1, // Remove the shadow
      leading: Visibility(
        visible: showBackButton,
        child: IconButton(
          onPressed: onBackTap,
          icon: SvgPicture.asset(
            AppConstant.ic_back,
            fit: BoxFit.fill,
            width: MySize.scaleFactorWidth * 19,
            height: MySize.scaleFactorHeight * 15,
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTextRegular(
              title: "Location",
              fontWeight: FontWeight.w400,
              fontSize: MySize.size14,
              color: AppColors.disableTextColor96),
          Row(
            children: [
              SvgPicture.asset(
                AppConstant.location,
                height: MySize.scaleFactorHeight * 22,
                width: MySize.scaleFactorWidth * 16,
              ),
              customTextRegular(title: " London, USA ",fontSize: MySize.size18,fontWeight: FontWeight.w500),
              Container(
                height: MySize.scaleFactorHeight * 22,
                width: MySize.scaleFactorWidth * 16,
                child: SvgPicture.asset(
                  AppConstant.arrow_down,
                ),
              ),
            ],
          ),
        ],
      ),
      // centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 15),
          child: Row(
            children: [
              Visibility(
                visible: verifiedVisibile,
                child: SvgPicture.asset(
                  AppConstant.ic_verified_account,
                  height: MySize.scaleFactorHeight * 31,
                  width: MySize.scaleFactorWidth * 31,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: MySize.scaleFactorWidth * 11,
              ),
              SvgPicture.asset(
                AppConstant.ic_menu,
                height: MySize.scaleFactorHeight * 15,
                width: MySize.scaleFactorWidth * 20,
                fit: BoxFit.fill,
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
