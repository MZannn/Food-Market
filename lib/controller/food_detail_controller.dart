import 'dart:math';

import 'package:get/get.dart';

class FoodDetailController extends GetxController {
  int quantity = 1;
  void addQuantity() {
    quantity = min(100, quantity + 1);
    update();
  }

  void minQuantity() {
    quantity = max(1, quantity - 1);
    update();
  }
}
