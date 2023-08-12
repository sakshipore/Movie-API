import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCard extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final String image;
  final int height;
  final int width;
  MyCard({
    super.key,
    required this.titleText,
    required this.subtitleText,
    required this.image,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height.h,
          width: width.w,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Row(
              children: [
                Container(
                  height: 130.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    // color: Colors.black,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: image == ""
                      ? Image.asset(
                          "assets/images/default_image.png",
                          fit: BoxFit.fill,
                        )
                      : Image.network(
                          "http://image.tmdb.org/t/p/w500/$image",
                          fit: BoxFit.fill,
                        ),
                ),
                SizedBox(
                  width: 30.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      width: 150.w,
                      child: Text(
                        titleText,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      subtitleText,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
