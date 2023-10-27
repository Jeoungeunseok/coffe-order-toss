import 'package:chamsarngcafe/routes/route_name.dart';
import 'package:chamsarngcafe/screens/home.dart';
import 'package:get/get.dart';

class RoutePage {
  static final page = [
    GetPage(
      name: RouteName.home,
      page: () => const Home(),
      transition: Transition.noTransition,
    ),
  ];
}
