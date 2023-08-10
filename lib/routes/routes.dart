import 'package:get/get.dart';
import 'package:movie_api/routes/routes_names.dart';

import '../bindings/home_binding.dart';
import '../bindings/movie_details_bnding.dart';
import '../view/home_screen.dart';
import '../view/movie_details_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: RoutesNames.homeScreen, 
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ), 
    GetPage(
      name: RoutesNames.movieDetailsScreen, 
      page: () => MovieDetailsScreen(),
      binding: MovieDetailsBinding(),
    ),
  ];
}
