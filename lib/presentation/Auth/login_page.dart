import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gorofat/presentation/Auth/signup/select_role.dart';
import 'package:gorofat/presentation/home/home_page.dart';

import '../../Core/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "assets/images/logo_gorofat_mini_blue.png",
                    height: 47.h,
                    width: 71.h,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 56.w),
                  child: Image.asset(
                    "assets/images/lock_login.png",
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Log In & ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 32.sp,
                        ),
                      ),
                      TextSpan(
                        text: "Let's Stay",
                        style: TextStyle(
                          color: const Color(0xff4F66D6),
                          fontSize: 32.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            //login with google
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff4F66D6),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 10.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/google.png",
                                height: 32.h,
                                width: 32.w,
                              ),
                              SizedBox(width: 15.w),
                              Text(
                                'Continue with Google',
                                style: TextStyle(
                                    fontSize: 16.sp, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),
                        ElevatedButton(
                          onPressed: () {
                            //login with apple
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff4F66D6),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                          child: Image.asset(
                            "assets/images/apple.png",
                            height: 32.h,
                            width: 27.w,
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 40.h),
                Text(
                  'or use E-mail',
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xff878787)),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: const CustomTextField(
                    hintText: "Email",
                  ),
                ),
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: const CustomTextField(
                    hintText: "Password",
                  ),
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  width: 317.w,
                  height: 64.h,
                  child: ElevatedButton(
                    onPressed: () {
                      //navigate to home page
                      Get.to(HomePage());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF3881D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Enter',
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Do not have an account ? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const SelectRole());
                      },
                      child: Text(
                        "REGISTER NOW",
                        style: TextStyle(
                          color: const Color(0xff1C44B4),
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
