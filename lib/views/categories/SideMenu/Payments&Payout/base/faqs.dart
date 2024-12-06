import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import '../../../../../../utils/mysize.dart';
import '../../../../base/custom_textwidget.dart';

class Faqs extends StatefulWidget {
  final VoidCallback onCollapseClicked;

  const Faqs({super.key, required this.onCollapseClicked});

  @override
  State<Faqs> createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
  bool parentexpand = false;
  List<bool> childExpand = List.filled(7, false); // Initialize with false for each child

  List<String> questions = [
    'What can gift cards be used for?',
    'Do gift cards expire?',
    'Why do I need to add an additional payment method?',
    'How can I check my gift card balance?',
    'What happens to my gift card credit if I\'ve cancelled my reservation?',
    'What if I lose my gift card?',
    'How can I purchase gift cards?',
  ];
  List<String> answers = [
    'Gift cards can be used to pay for eligible services offered by our platform. This includes booking accommodations, experiences, and other services available on our platform. Please note that gift cards may have certain restrictions, and it\'s essential to review the terms and conditions.',
    'Gift card expiration dates vary based on the terms and conditions of the specific gift card. It\'s important to check the expiration date mentioned on the gift card or in the accompanying documentation. Expired gift cards may not be eligible for use.',
    'We use your payment method to make sure you\'re eligible to use the gift card in your region. Also, if your total on any future trip is greater than your gift card balance, it will be used to pay the difference.',
    'To check your gift card balance, you can log in to your account on our platform and navigate to the "Gift Cards" or "Balance" section. Alternatively, you can contact our customer support for assistance in checking your gift card balance.',
    'If you\'ve canceled a reservation paid with a gift card, the refunded amount will typically be credited back to your gift card balance. The refunded credit can be used for future bookings or services, subject to the terms and conditions of the gift card.',
    'If your gift card is lost or stolen, please contact our customer support as soon as possible. We may be able to assist you in reissuing a new gift card or taking appropriate measures to safeguard your remaining balance.',
    'You can purchase gift cards directly from our platform. Look for the "Gift Cards" or "Purchase" section, where you can choose the gift card amount, provide recipient details, and complete the purchase. Gift cards are often available in various denominations to suit your preferences.',
  ];

  late ExpansionTileController _parentExpansiontileController;

  @override
  void initState() {
    super.initState();
    _parentExpansiontileController = ExpansionTileController();
  }
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      controller: _parentExpansiontileController,
      backgroundColor: Colors.transparent,
      maintainState: true,
      initiallyExpanded: parentexpand,
      onExpansionChanged: (bool expanded) {
        setState(() {
          parentexpand = expanded;
        });
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MySize.size8)),
      tilePadding: EdgeInsets.zero,
      trailing: SvgPicture.asset(
        parentexpand
            ? AppConstant.ic_detail_pageup
            : AppConstant.ic_detail_page,
      ),
      collapsedBackgroundColor: Colors.transparent,
      title: customTextMedium(
        title: 'Frequently asked question',
        fontSize: MySize.size18,
        fontWeight: FontWeight.w500,
      ),
      children: [
        SizedBox(height: MySize.size10),
        // Add SizedBox between the first and nested ExpansionTiles
        // Use a for loop to create nested ExpansionTiles
        for (int i = 1; i <= questions.length; i++)
          Column(
            children: [
              Theme(
                data: Theme.of(context).copyWith(
                  listTileTheme: ListTileTheme.of(context).copyWith(
                    dense: true,
                  ),
                ),
                child: ExpansionTile(
                  maintainState: true,
                  trailing: SvgPicture.asset(
                    (childExpand[i - 1] == true)
                        ? AppConstant.ic_detail_pageup
                        : AppConstant.ic_detail_page,
                  ),
                  tilePadding: EdgeInsets.symmetric(
                      horizontal: MySize.scaleFactorWidth * 11),
                  collapsedBackgroundColor: AppColors.whiteColorFF,
                  backgroundColor: AppColors.whiteColorFF,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      side: BorderSide(
                          color: AppColors.borderColorAD, width: .4)),
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      side: BorderSide(
                          color: AppColors.borderColorAD, width: .4)),
                  title: customTextMedium(
                    title: questions[i - 1],
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500,
                  ),
                  onExpansionChanged: (bool expanded) {
                    setState(() {
                      childExpand[i - 1] = expanded;
                    });
                  },
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MySize.size8,
                          horizontal: MySize.scaleFactorWidth * 11),
                      child: customTextMedium(
                        title: answers[i - 1],
                        fontSize: MySize.size14,
                        color: AppColors.hinttextcolor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height:
                  i == questions.length ? MySize.size15 : MySize.size20),
              // Add SizedBox between nested ExpansionTiles
              if (i == questions.length)
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      widget.onCollapseClicked(); // Call the callback
                      setState(() {
                        // Collapse the parent ExpansionTile
                        _parentExpansiontileController.collapse();
                      });
                    },
                    child: customTextRegular(
                        title: 'Collapse Frequently asked question',
                        fontSize: MySize.size18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textColor6c),
                  ),
                ),
            ],
          ),
      ],
    );
  }
}
