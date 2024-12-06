import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/views/auth/restPaaswordScreen/reset_pass.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../utils/appconstant.dart';
import '../../../../utils/mysize.dart';
import '../forgot_passward.dart';
import '../../verificationPinScreen/verificationPin.dart';


class ForgotPasswardNavigation extends StatefulWidget {
  const ForgotPasswardNavigation ({super.key});

  @override
  State<ForgotPasswardNavigation> createState() => _ForgotPasswardNavigationState();
}

class _ForgotPasswardNavigationState extends State<ForgotPasswardNavigation> {
  // ignore: prefer_final_fields
  PageController _pageController = PageController(initialPage: 0);
  // ignore: unused_field
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
    body: SizedBox(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: MySize.size24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MySize.scaleFactorHeight * 45,),
               Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Expanded(child: SizedBox(child: Row(
                    children: [
                      GestureDetector(
                       onTap: _currentPage == 0 ? (){Get.back();} : () => _pageController.previousPage(
                       duration: const Duration(milliseconds: 300),
                       curve: Curves.linear,
                       ),
                      child: SvgPicture.asset(AppConstant.ic_back)
      ),
                    ],
                  ))),
                    Expanded(
                      child: SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SmoothPageIndicator(
                              controller: _pageController,
                              count: 3,
                              effect: WormEffect(
                                spacing: 12,
                                dotHeight: 4,
                                dotWidth: 26,
                                activeDotColor: AppColors.titleColor70,
                                dotColor: AppColors.borderColorAD.withOpacity(0.2),
                              ),
                              onDotClicked: (index){
                              }
                            ),
                          ],
                        ),
                      ),
                    ),
                   const Expanded(child: SizedBox()),
                      ],
                    ),
              SizedBox(
                height: MySize.scaleFactorHeight * 600,
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                   onPageChanged: (int index) {
                     setState(() {
                    _currentPage = index;
                  });
                  },
                  controller: _pageController,
                  clipBehavior: Clip.none,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index){
                   if (index == 0) {
                     return ForgotPassward(
                     onTap:() => _pageController.nextPage(
                     duration: const Duration(milliseconds: 300),
                     curve: Curves.linear,
                     ),
                     );
                   } else if (index == 1) {
                     return VerificationPin(
                    onTap:() => _pageController.nextPage(
                     duration: const Duration(milliseconds: 300),
                     curve: Curves.linear,
                     ),
                     );
                   } else if (index == 2) {
                     return const ResetPassward();
                   }
                    return const SizedBox.shrink();
                  }
                  ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}