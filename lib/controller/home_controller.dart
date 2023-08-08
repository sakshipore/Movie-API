import 'dart:developer';
import 'package:get/get.dart';

import '../service/movie_service.dart';

class HomeController extends GetxController {
  MovieService service = MovieService();

  Future<void> getMovies() async {
    try {
      Map<String, dynamic> res = await service.getMovies();
      log(res.toString());
    } catch (e) {
      log(e.toString());
    }
  }
}
