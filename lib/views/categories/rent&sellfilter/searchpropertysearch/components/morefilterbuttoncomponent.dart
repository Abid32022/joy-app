
import 'package:flutter/material.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:provider/provider.dart';
import 'package:joyapp/providers/rentandsale_provider.dart';

class MoreFiltersButtonComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SaleAndRentProvider>(
      builder: (context, saleAndRentProvider, child) {
        return Visibility(
          visible: saleAndRentProvider.isMoreFilterButtonVisible,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MySize.size20),
              customButton(
                height: MySize.scaleFactorHeight * 46,
                borderRadius: MySize.size8,
                ontap: () {
                  saleAndRentProvider.toggleSelectFeaturesVisibility();
                },
                text: "More Filter",
                fontSize: MySize.size14,
                fontWeight: FontWeight.w500,
                fontColor: Color(0xFF606060),
                colors: Color(0xFFF2F2F2),
                borderColor: Color(0xFFCCCCCC),
              ),

            ],
          ),
        );
      },
    );
  }
}
