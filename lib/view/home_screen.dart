import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_api/routes/routes_names.dart';
import 'package:movie_api/widgets/my_app_bar.dart';
import 'package:movie_api/widgets/my_card.dart';

import '../controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.find<HomeController>();

  @override
  void initState() {
    getMovies();
    super.initState();
  }

  getMovies() async {
    await homeController.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(text: "Home Screen"),
      body: GetBuilder<HomeController>(builder: (controller) {
        return SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: controller.isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.movies.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Get.toNamed(RoutesNames.movieDetailsScreen,
                                    arguments: controller.movies[index].id);
                              },
                              child: MyCard(
                                titleText:
                                    controller.movies[index].originalTitle,
                                subtitleText:
                                    "Release date: ${controller.movies[index].releaseDate}",
                                image: controller.movies[index].posterPath,
                                height: 150,
                                width: 360,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
            ),
          ),
        );
      }),
    );
  }
}
