


import 'package:get/get.dart';
import 'package:mykotche/pages/utilities/utilities_cars_controller.dart';

class UtilitiesCarsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<UtilitiesCarsController>(UtilitiesCarsController());
  }
}