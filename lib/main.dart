import 'package:chamsarngcafe/routes/route_name.dart';
import 'package:chamsarngcafe/routes/route_page.dart';
import 'package:chamsarngcafe/utils/main_color.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

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
        getPages: RoutePage.page,
        initialRoute: RouteName.home);
  }
}
