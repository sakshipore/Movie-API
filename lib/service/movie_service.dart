import 'dart:developer';

import 'package:dio/dio.dart';

class MovieService {
  Future<Map<String, dynamic>> getMovies() async {
    try {
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
      // Type get runtimeType;
      // log(response.data.runtimeType);
      // final res = json.decode(response.data);
      // log("**************************");
      // log(res.runtimeType as String);
      return response.data;
    } catch (e) {
      log("INSIDE SERVICE CATCH : ${e.toString()}");
      return {};
    }
  }
}
