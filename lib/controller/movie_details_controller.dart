import 'dart:developer';

import 'package:get/get.dart';
import 'package:movie_api/model/details.dart';

import '../services/movie_service.dart';

class MovieDetailsController extends GetxController {
  bool isLoading = true;
  MovieService service = MovieService();
  Details? details;

  Future<void> getSpecificMovie(int id) async {
    try {
      isLoading = true;
      update();
      Map<String, dynamic> result = await service.getSpecificMovie(id);
      // log("Length: ${result.length}");
      details = Details.fromMap(result);
      log(details!.productionCompanies[0].name);
    } catch (e) {
      log(e.toString());
    } finally {
      isLoading = false;
      update();
    }
  }
}
