import 'package:flutter/material.dart';
import 'package:food_market/controller/address_controller.dart';
import 'package:food_market/controller/dashboard_controller.dart';
import 'package:food_market/layout/pages/pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(AddressController());
    Get.put(DashboardController());
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}
