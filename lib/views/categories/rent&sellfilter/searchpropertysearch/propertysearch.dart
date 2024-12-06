import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/custom_button.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/categories/rent&sellfilter/searchpropertysearch/components/areacomponent.dart';
import 'package:joyapp/views/categories/rent&sellfilter/searchpropertysearch/components/morefilterbuttoncomponent.dart';
import 'package:joyapp/views/categories/rent&sellfilter/searchpropertysearch/components/pricerangecomponent.dart';
import 'package:joyapp/views/categories/rent&sellfilter/searchpropertysearch/components/selectfeaturescomponent.dart';
import 'package:provider/provider.dart';
import '../../../../providers/rentandsale_provider.dart';
import '../../rental_service_filter/rental_service_filter/service_filter.dart';
import 'components/accommodationcomponents.dart';
import 'components/bathroomcomponent.dart';
import 'components/bedroomcomponent.dart';
import 'components/categoriescomponents.dart';
import 'components/rentandsalecomponents.dart';
import 'components/residentialcomponent.dart';

class SearchPropertyScreen extends StatelessWidget {
  SearchPropertyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: AppointmentAppBar(verifiedVisibile: false),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.size23),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Categories and List of Categories Component
              CategoriesComponents(),

              ///Sale And Rent Goals Components of Categories Component
              SaleAndRentGoalsComponents(),

              ///Accommodation Component
              AccommodationComponents(),

              ///Residential Component
              ResidentialComponent(),

              ///Area Component
              AreaComponents(),

              ///Price Range Component
              PriceRangeComponent(),

              ///Bedroom List Component
              BedRoomComponents(),

              /// Bathroom List Component
              BathroomComponents(),

              MoreFiltersButtonComponent(),

              ///Select Features and expansion tile Component
              Consumer<SaleAndRentProvider>(
                builder: (context, saleAndRentProvider, child) {
                  return Visibility(
                    visible: saleAndRentProvider.isSelectFeaturesVisible,
                    child: SelectFeaturesComponent(),
                  );
                },
              ),

              ///Divider and apply filter button
              SizedBox(height: MySize.size20),
              customDivider(
                color: Color(0xFFC6C6C8),
                width: double.infinity,
                height: MySize.scaleFactorHeight * 1,
              ),
              SizedBox(height: MySize.size10),
              customButton(
                height: MySize.scaleFactorHeight * 46,
                borderRadius: MySize.size8,
                ontap: () {
                  Get.to(RentalServiceFilterScreen());
                },
                text: "Apply Filter",
                fontSize: MySize.size14,
                fontWeight: FontWeight.w500,
                fontColor: AppColors.blackColor00,
                colors: Color(0xFFD6DEDE),
                borderColor: Color(0xFFD6DEDE),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
