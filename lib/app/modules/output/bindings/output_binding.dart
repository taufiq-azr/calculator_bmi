import 'package:get/get.dart';

import '../controllers/output_controller.dart';

class OutputBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OutputController>(
      () => OutputController(),
    );
  }
}
