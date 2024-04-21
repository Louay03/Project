import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingSecond extends StatelessWidget {
  final void Function()? onPressed;
  final String text;

  const OnBoardingSecond({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Image.asset("assets/images/logo_gorofat_mini_blue.png"),
        ),
        actions: [
          TextButton(
            onPressed: onPressed,
            child: Text(
             text,
              style: TextStyle(
                fontSize: 16.sp,
                decoration: TextDecoration.underline,
                decorationColor: Colors.black,
                color: Colors.black,
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
                image: AssetImage("assets/images/onboarding_2.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 90.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                'Stay relaxed and your room Comes to your location\nwherever you are whenever you want.',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xff878787),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
