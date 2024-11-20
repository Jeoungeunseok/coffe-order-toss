import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/menu_controller.dart';
import '../models/menu_item.dart';
import 'menu_item_card.dart';

class CategoryMenuList extends StatelessWidget {
  final String category;
  final CafeMenuController menuController;

  const CategoryMenuList({
    Key? key,
    required this.category,
    required this.menuController,
  }) : super(key: key);

  List<MenuItem> getMenuByCategory() {
    return menuController.menuItems
        .where((item) => item.category == category)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: getMenuByCategory().length,
        itemBuilder: (context, index) {
          final item = getMenuByCategory()[index];
          return MenuItemCard(
            item: item,
            index: menuController.menuItems.indexOf(item),
            controller: menuController,
          );
        },
      ),
    );
  }
}
