import 'package:get/get.dart';

class MenuItem {
  final String name;
  final int price;
  final String category;
  final RxInt quantity;

  MenuItem({
    required this.name,
    required this.price,
    required this.category,
    int quantity = 0,
  }) : quantity = quantity.obs;
}
