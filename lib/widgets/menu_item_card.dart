import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/menu_item.dart';
import '../controllers/menu_controller.dart';

class MenuItemCard extends StatelessWidget {
  final MenuItem item;
  final int index;
  final CafeMenuController controller;

  const MenuItemCard({
    Key? key,
    required this.item,
    required this.index,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(item.name),
        subtitle: Text('${item.price}원'),
        trailing: Container(
          width: 120,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () => controller.decrementQuantity(index),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                iconSize: 20,
              ),
              SizedBox(width: 8),
              Obx(() => Text('${item.quantity.value}')),
              SizedBox(width: 8),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () => controller.incrementQuantity(index),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                iconSize: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
