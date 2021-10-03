import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tour_website/controllers/home_controller.dart';
import 'package:tour_website/pages/home_page.dart';
import 'package:tour_website/site_layout.dart';

void main() {
  Get.put(HomePageController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Muheeb Mehraj',
      debugShowCheckedModeBanner: false,
      home: SiteLayout(title: 'Flutter Demo Home Page'),
    );
  }
}