import 'package:get/get.dart';
import 'package:movie_api/routes/routes_names.dart';

import '../view/home_screen.dart';
import '../view/movie_details_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: RoutesNames.homeScreen, 
      page: () => HomeScreen(),
    ), 
    GetPage(
      name: RoutesNames.movieDetailsScreen, 
      page: () => MovieDetailsScreen(),
    ),
  ];
}
