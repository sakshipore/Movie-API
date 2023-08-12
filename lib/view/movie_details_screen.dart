import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_api/widgets/my_card.dart';

import '../controller/movie_details_controller.dart';
import '../widgets/my_app_bar.dart';

class MovieDetailsScreen extends StatefulWidget {
  final int id;
  MovieDetailsScreen({super.key, required this.id});

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  MovieDetailsController movieDetailsController =
      Get.find<MovieDetailsController>();

  @override
  void initState() {
    getSpecificMoie();
    super.initState();
  }

  getSpecificMoie() async {
    await movieDetailsController.getSpecificMovie(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(text: "Movie Details"),
      body: GetBuilder<MovieDetailsController>(builder: (controller) {
        return SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: controller.isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            height: 300.h,
                            width: 200.w,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Image.network(
                              "http://image.tmdb.org/t/p/w500/${controller.details!.posterPath}",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          controller.details!.originalTitle,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          controller.details!.tagline,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 30.h,
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.details!.genres.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 3.w),
                                    child: Container(
                                      height: 10.h,
                                      width: 70.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        color: Colors.blue[900],
                                      ),
                                      child: Center(
                                        child: Text(
                                          controller
                                              .details!.genres[index].name,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          controller.details!.overview,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          "Production Companies: ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        ListView.builder(
                            itemCount:
                                controller.details!.productionCompanies.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return MyCard(
                                titleText: controller
                                    .details!.productionCompanies[index].name,
                                subtitleText:
                                    "ID: ${controller.details!.productionCompanies[index].id}",
                                image: controller
                                            .details!
                                            .productionCompanies[index]
                                            .logoPath ==
                                        "null"
                                    ? ""
                                    : controller.details!
                                        .productionCompanies[index].logoPath,
                                height: 100,
                                width: 360,
                              );
                            }, ),
                      ],
                    ),
            ),
          ),
        );
      }),
    );
  }
}
