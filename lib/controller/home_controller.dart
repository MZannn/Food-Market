import 'package:get/get.dart';

class HomeController extends GetxController{
  int selectedIndex = 0;

  void tabBarIndex(int newIndex){
    selectedIndex = newIndex;
    update();
  }
}