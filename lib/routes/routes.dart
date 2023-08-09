import 'package:get/get.dart';
import 'package:movie_api/bindings/home_binding.dart';
import 'package:movie_api/routes/routes_names.dart';
import 'package:movie_api/view/home_screen.dart';
import 'package:movie_api/view/movie_details_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: RoutesNames.homeScreen, 
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: RoutesNames.movieDetailsScreen, 
      arguments: int,
      page: () => MovieDetailsScreen(index: Get.arguments),
    ),
  ];
}
