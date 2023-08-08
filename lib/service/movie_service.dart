import 'dart:developer';

import 'package:dio/dio.dart';

class MovieService {
  Future<Map<String, dynamic>> getMovies() async {
    String url =
        "https://online-movie-database.p.rapidapi.com/auto-complete?q=game of thr";

    var response = await Dio().getUri(
      Uri.parse(url),
      options: Options(
        headers: {
          "X-RapidAPI-Key":
              "8956953d38mshe3404dc56565909p1ed681jsne957c40b717a",
          "X-RapidAPI-Host": "online-movie-database.p.rapidapi.com",
        },
      ),
    );
    // log(response.data.toString());
    return response.data;
  }
}
