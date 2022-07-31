import 'package:get/get.dart';

class ProfileController extends GetxController{
  int selectedIndex = 0;
  void setIndex(int newIndex){
    selectedIndex = newIndex;
    update();
  }
}