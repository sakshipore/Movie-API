import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class MovieDetailsScreen extends StatelessWidget {
  final int index;
  MovieDetailsScreen({super.key, required this.index});

  HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Movie Details",
        ),
      ),
      body: GetBuilder<HomeController>(builder: (controller) {
        return SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 300.h,
                    width: 460.w,
                    child: Image.network(
                      controller.movies[index].image,
                      errorBuilder: (context, error, stackTrace) {
                        return Text(
                          "No image",
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Title: ${controller.movies[index].title}",
                    style: TextStyle(
                      fontSize: 20.sp, 
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Year: ${controller.movies[index].year.toString()}",
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Rank: ${controller.movies[index].rank.toString()}",
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Description: ${controller.movies[index].description}",
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
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
