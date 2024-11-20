import 'package:chamsarngcafe/routes/route_name.dart';
import 'package:chamsarngcafe/routes/route_page.dart';
import 'package:chamsarngcafe/utils/main_color.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:chamsarngcafe/controllers/menu_controller.dart';

void main() {
  runApp(ChamsarngcafeApp());
}

// ignore: must_be_immutable
class ChamsarngcafeApp extends StatelessWidget {
  ChamsarngcafeApp({super.key});
  final MainColor mainColor = MainColor();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: mainColor.mainColor(),
        ),
        initialBinding: BindingsBuilder(() {
          Get.put(CafeMenuController());
        }),
        getPages: RoutePage.page,
        initialRoute: RouteName.home);
  }
}
