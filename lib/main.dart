import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


import 'package:joyapp/providers/rentalservice_provider.dart';
import 'package:joyapp/providers/rentandsale_provider.dart';
import 'package:joyapp/views/auth/splashScreen/splash_screen.dart';
import 'package:joyapp/views/categories/make_apporientments/medicalexplore/medical_explore.dart';
import 'package:joyapp/views/categories/rent&sellfilter/searchpropertysearch/propertysearch.dart';
import 'package:joyapp/views/categories/rental_service_filter/rental_service_filter/service_filter.dart';
import 'package:joyapp/views/categories/roomsharefilter/room_share_filter.dart';
import 'package:joyapp/views/categories/vendorServices/vendorItemsImages/itemsImagesPage.dart';
import 'package:joyapp/views/categories/xp_parcelservice/xpparceldelivery/xp_parcel_delivery.dart';
import 'package:provider/provider.dart';

import 'views/categories/make_apporientments/medicalhostipal/medical_hostipal.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);



    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SaleAndRentProvider()),
        ChangeNotifierProvider(create: (_) => RentalServiceProvider()),

      ],
      child: GetMaterialApp(
        title: 'Joy App',
        theme: ThemeData(
          // scaffoldBackgroundColor: Colors.white
        ),
        debugShowCheckedModeBanner: false,

        home: SplasScreen(),



      ));

  }
}
