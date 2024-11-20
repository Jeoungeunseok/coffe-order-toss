import 'package:get/get.dart';
import '../models/menu_item.dart';

class CafeMenuController extends GetxController {
  final RxList<MenuItem> menuItems = <MenuItem>[].obs;
  final RxDouble totalPrice = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    loadMenuItems();
  }

  void loadMenuItems() {
    menuItems.addAll([
      // 2천원 메뉴
      MenuItem(name: '아메리카노', price: 2000, category: '커피'),
      MenuItem(name: '복숭아 아이스티', price: 2000, category: '차'),
      MenuItem(name: '레몬 아이스티', price: 2000, category: '차'),
      MenuItem(name: '청포도에이드', price: 2000, category: '에이드'),
      MenuItem(name: '자두에이드', price: 2000, category: '에이드'),
      MenuItem(name: '자몽에이드', price: 2000, category: '에이드'),
      MenuItem(name: '초코스무디', price: 2000, category: '스무디'),
      MenuItem(name: '딸기스무디', price: 2000, category: '스무디'),
      MenuItem(name: '블루베리스무디', price: 2000, category: '스무디'),

      // 3천원 메뉴
      MenuItem(name: '대추차', price: 3000, category: '차'),
      MenuItem(name: '유자차', price: 3000, category: '차'),
      MenuItem(name: '카페라떼', price: 3000, category: '커피'),
      MenuItem(name: '아이스바닐라라떼', price: 3000, category: '커피'),
    ]);
  }

  void incrementQuantity(int index) {
    menuItems[index].quantity.value++;
    calculateTotal();
  }

  void decrementQuantity(int index) {
    if (menuItems[index].quantity.value > 0) {
      menuItems[index].quantity.value--;
      calculateTotal();
    }
  }

  void calculateTotal() {
    totalPrice.value = menuItems.fold(
        0.0, (sum, item) => sum + (item.price * item.quantity.value));
  }
}
