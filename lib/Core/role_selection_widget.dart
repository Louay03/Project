import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoleSelection extends StatelessWidget {
  final String imgPath;
  final double height;
  final double width;
  final String title;
  final String body;
  const RoleSelection({
    super.key,
    required this.imgPath,
    required this.height,
    required this.width,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: const Color(0xffF4F3F3),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
        child: Row(
          children: [
            Image.asset(
              imgPath,
              height: height,
              width: width,
            ),
            SizedBox(
              width: 5.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff1C44B4)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  body,
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xff7F91FF)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
