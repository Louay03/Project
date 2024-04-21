import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gorofat/presentation/OnBoarding/onboarding_page_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/splash_screen.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
              child: Image.asset(
            "assets/images/logo_gorofat.png",
            height: 213.h,
            width: 203.w,
          )),
          Positioned(
            left: 57.w,
            right: 57.w,
            bottom: 76.h,
            child: SizedBox(
              width: 317.w,
              height: 64.h,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(
                    const OnboardingScreen(),
                    transition: Transition.fade,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF3881D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
