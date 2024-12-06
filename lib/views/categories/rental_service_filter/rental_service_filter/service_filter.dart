import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:provider/provider.dart';
import '../../../../providers/rentalservice_provider.dart';
import '../../../base/custom_button.dart';
import '../../../base/custom_divider.dart';
import '../../roomsharefilter/room_share_filter.dart';
import 'components/bath_room_component.dart';
import 'components/bed_component.dart';
import 'components/bed_rooms_components.dart';
import 'components/rental_categories_component.dart';
import 'components/select_amenities_component.dart';
import 'components/service_price_range_component.dart';
import 'components/type_of_place_components.dart';
import 'components/types_of_property_component.dart';

class RentalServiceFilterScreen extends StatefulWidget {
  RentalServiceFilterScreen({super.key});

  @override
  State<RentalServiceFilterScreen> createState() => _RentalServiceFilterScreenState();
}

class _RentalServiceFilterScreenState extends State<RentalServiceFilterScreen> {

  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: AppointmentAppBar(verifiedVisibile: false),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.size25),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Rental Categories Component
              RentalCategoriesComponent(),

              ///Type of Place Component
              TypeOfPlaceComponent(),

              ///Service Price Range Component
              ServicePriceRangeComponent(),

              ///Bed Room Component
              BedRoomComponent(),

              ///Bed Component
              BedComponent(),

              ///Bath Room Component
              BathRoomComponent(),

              ///Type Of Property Component
              TypeOfPropertyComponent(),

              SizedBox(height: MySize.size14),
              isShow == true ? SizedBox(height: 0) :customButton(
                height: MySize.scaleFactorHeight * 46,
                borderRadius: MySize.size8,
                ontap: () {
                  Provider.of<RentalServiceProvider>(context, listen: false)
                      .toggleSelectFeaturesVisibility();
                  setState(() {
                    isShow = !isShow;
                  });
                },
                text: "AMENITIES",
                fontSize: MySize.size14,
                fontWeight: FontWeight.w400,
                fontColor: Color(0xFF606060),
                colors: Color(0xFFF2F2F2),
                borderColor: Color(0xFFCCCCCC),
              ),

              Consumer<RentalServiceProvider>(
                builder: (context, value, child) {
                  return Visibility(
                      visible: value.isSelectFeaturesVisible,
                      child: SelectAmenitiesComponent(OnTap: () {
                        Provider.of<RentalServiceProvider>(context, listen: false)
                            .toggleSelectFeaturesVisibility();
                        setState(() {
                          isShow = !isShow;
                        });
                      },));
                },
              ),
              SizedBox(height: MySize.size12),
              customDivider(
                  width: double.infinity,
                  color: Color(0xFF828992),
                  height: MySize.scaleFactorHeight * 1
              ),

              SizedBox(height: MySize.size10),
              customButton(
                height: MySize.scaleFactorHeight * 46,
                borderRadius: MySize.size8,
                ontap: () {
                  Get.to(RoomShareFilter());
                },
                text: "Apply Filter",
                fontSize: MySize.size14,
                fontWeight: FontWeight.w500,
                fontColor: AppColors.blackColor00,
                colors: Color(0xFFD6DEDE),
                borderColor: Color(0xFFD6DEDE),
              ),
              SizedBox(height: MySize.size30),
            ],
          ),
        ),
      ),
    );
  }
}
