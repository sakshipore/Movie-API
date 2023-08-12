import 'dart:developer';

import 'package:get/get.dart';

import '../model/movie.dart';
import '../services/movie_service.dart';

class HomeController extends GetxController {
  bool isLoading = true;
  MovieService service = MovieService();
  List<Movie> movies = [];

  Future<void> getMovies() async {
    try {
      isLoading = true;
      update();
      Map<String, dynamic> result = await service.getMovies();
      // log("Length: ${result.length}");
      movies = [];
      List<dynamic> allMovies = result['results'];
      for (Map<String, dynamic> item in allMovies) {
        movies.add(Movie.fromMap(item));
      }
      // log(movies[0].originalTitle);
    } catch (e) {
      log(e.toString());
    } finally {
      isLoading = false;
      update();
    }
  }
}
