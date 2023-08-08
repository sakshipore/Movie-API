import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
      appBar: AppBar(
        title: Text(
          "Home Screen",
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (builder, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Container(
                        height: 150.h,
                        width: 360.w,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                          child: Row(
                            children:[
                              Container(
                                height: 130.h, 
                                width: 100.w, 
                                decoration: BoxDecoration(
                                  color: Colors.black, 
                                  borderRadius: BorderRadius.circular(10.r),
                                ), 
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "My Text", 
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                    ),
                                  ),
                                  Text(
                                    "My Text", 
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                    ), 
                                  ),
                                ],
                              ), 
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
