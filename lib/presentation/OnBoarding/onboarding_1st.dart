import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingFirst extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const OnBoardingFirst({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Image.asset("assets/images/logo_gorofat_mini.png"),
        ),
        actions: [
          TextButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16.sp,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/onboarding_1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 90.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                'Discover the closest hotels, furnished apartments ,\nsuits and homes at unbeatable prices in the market.',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
