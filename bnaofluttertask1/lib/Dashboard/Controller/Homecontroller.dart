import 'package:get/get.dart';

import '../../Model class.dart';

class HomeController extends GetxController {
  late List<ModelClass> items = getmodelclass;
  late List<ModelClass> item = getmodelclass2;
  late List<ModelClass> ite = getmodelclass3;
  RxInt selectedSliderIndex = RxInt(0);

  changeSliderIndex(int index) {
    selectedSliderIndex.value = index;
    update();
  }
}
