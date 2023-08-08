import 'dart:developer';
import 'package:get/get.dart';
import 'package:movie_api/model/movie.dart';

import '../service/movie_service.dart';

class HomeController extends GetxController {
  MovieService service = MovieService();
  List<Movie> movies = [];

  Future<void> getMovies() async {
    try {
      Map<String, dynamic> res = await service.getMovies();
      log("Length of data: ${res["d"].length}");
      movies = [];
      List<dynamic> allMovies = res["d"];
      for (Map<String, dynamic> item in allMovies) {
        movies.add(Movie.fromMap(item));
      }
      log(movies[1].description);
    } catch (e) {
      log(e.toString());
    }
  }
}
