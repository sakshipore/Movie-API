import 'dart:developer';

import 'package:dio/dio.dart';

class MovieService {
  Future<Map<String, dynamic>> getMovies() async {
    String url = "https://api.themoviedb.org/3/discover/movie";
    var response = await Dio().getUri(
      Uri.parse(url),
      options: Options(
        headers: {
          "Authorization":
              "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmMTExZTdlOTVmMTI1ZDc3OGNlMWI1OWQ0NDY2NDQ5NCIsInN1YiI6IjY0ZDM3Y2YxYjZjMjY0MTE1NGY3MjViZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.PZPb6mXE4CQiA-13E54RC_xNFf9ixWNHT8VgvbKr2Is",
          "accept": "application/json",
        },
      ),
    );
    // log(response.data.toString());
    return response.data;
  }

  Future<Map<String, dynamic>> getSpecificMovie(int id) async {
    String url = "https://api.themoviedb.org/3/movie/$id";
    var response = await Dio().getUri(
      Uri.parse(url),
      options: Options(
        headers: {
          "Authorization":
              "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmMTExZTdlOTVmMTI1ZDc3OGNlMWI1OWQ0NDY2NDQ5NCIsInN1YiI6IjY0ZDM3Y2YxYjZjMjY0MTE1NGY3MjViZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.PZPb6mXE4CQiA-13E54RC_xNFf9ixWNHT8VgvbKr2Is",
          "accept": "application/json",
        },
      ),
    );
    log(response.data.toString());
    return response.data;
  }
}
