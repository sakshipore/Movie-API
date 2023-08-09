import 'package:get/get.dart';

import '../controller/movie_details_controller.dart';

class MovieDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MovieDetailsController());
  }
}
