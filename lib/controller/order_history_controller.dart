import 'package:get/get.dart';

class OrderHistoryController extends GetxController {
  int selectedIndex = 0;
  void setIndex(int newIndex) {
    selectedIndex = newIndex;
    update();
  }
}
