import 'package:cule/routes/route_name.dart';
import 'package:cule/routes/route_page.dart';
import 'package:cule/utils/main_color.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChamsarngCafeApp());
}

// ignore: must_be_immutable
class ChamsarngCafeApp extends StatelessWidget {
  ChamsarngCafeApp({super.key});
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
