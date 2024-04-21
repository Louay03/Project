import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gorofat/Core/role_selection_widget.dart';
import 'package:gorofat/presentation/Auth/signup/signup.dart';

import '../login_page.dart';

class SelectRole extends StatelessWidget {
  const SelectRole({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 25.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Image.asset(
                    "assets/images/logo_gorofat_mini_blue.png",
                    height: 47.h,
                    width: 71.h,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Image.asset("assets/images/join_us.png"),
              SizedBox(
                height: 64.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: GestureDetector(
                  onTap: () {
                    Get.to(const Signup());
                  },
                  child: RoleSelection(
                    imgPath: "assets/images/person.png",
                    height: 80.h,
                    width: 80.w,
                    body: "Book Hotels, Rooms and Apartments",
                    title: "General",
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: GestureDetector(
                  onTap: () {
                    Get.to(const Signup());
                  },
                  child: RoleSelection(
                    imgPath: "assets/images/bed.png",
                    height: 80.h,
                    width: 80.w,
                    body: "List your hotels, rooms and apartments",
                    title: "Owner",
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Already have an account ?",
                style:
                    TextStyle(fontSize: 14.sp, color: const Color(0xff878787)),
              ),
              TextButton(
                onPressed: () {
                  Get.to(const LoginPage());
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: const Color(0xffF3881D),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.w),
                child: const Divider(
                  color: Color(0xff1C44B4),
                ),
              ),
              GestureDetector(
                onTap: () {
                  //open bottom sheet of privacy policyr
                },
                child: Text(
                  "Terms of Service & Privacy Policy",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xff878787),
                    fontSize: 14.sp,
                    color: const Color(0xff878787),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
