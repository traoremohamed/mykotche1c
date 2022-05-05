
import 'package:get/get.dart';
import 'package:mykotche/pages/utilities_details/details_utilities_cars_controller.dart';

class DetailsUtilitiesCarsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DetailsUtilitiesCarsController>(DetailsUtilitiesCarsController());
  }
}