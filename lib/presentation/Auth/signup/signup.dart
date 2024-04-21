import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gorofat/presentation/Auth/signup/code_verification.dart';

import '../../../Core/custom_textfield.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
              Image.asset("assets/images/wlcm_gorofat.png"),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: CustomTextField(
                  hintText: "Username",
                  suffixIcon: Image.asset(
                    "assets/images/username.png",
                    height: 10.h,
                    width: 10.w,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: CustomTextField(
                  hintText: "Email",
                  suffixIcon: Image.asset(
                    "assets/images/email.png",
                    height: 10.h,
                    width: 10.w,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: CustomTextField(
                  hintText: "Phone No",
                  suffixIcon: Image.asset(
                    "assets/images/phone.png",
                    height: 10.h,
                    width: 10.w,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: CustomTextField(
                  hintText: "Password",
                  suffixIcon: Image.asset(
                    "assets/images/password.png",
                    height: 10.h,
                    width: 10.w,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: CustomTextField(
                  hintText: "Confirm password",
                  suffixIcon: Image.asset(
                    "assets/images/confpassword.png",
                    height: 10.h,
                    width: 10.w,
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              SizedBox(
                width: 317.w,
                height: 64.h,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const CodeVerification());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffF3881D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
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
