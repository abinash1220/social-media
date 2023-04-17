import 'package:get/get.dart';

class bottombarcontroller extends GetxController {
  var _selectedIndex = 0.obs;
  Getindex() => _selectedIndex.value;
  setIndex(val) => _selectedIndex.value = val;
}
