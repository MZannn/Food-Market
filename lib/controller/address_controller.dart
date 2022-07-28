import 'package:get/get.dart';

class AddressController extends GetxController{
  RxString dropdownValue = "Jakarta".obs;

  void dropdownSet (String? newValue){
    dropdownValue.value = newValue!;
  }
}