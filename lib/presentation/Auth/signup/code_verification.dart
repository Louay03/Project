import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gorofat/presentation/Auth/signup/create_profile.dart';
import 'package:pinput/pinput.dart';

class CodeVerification extends StatelessWidget {
  const CodeVerification({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50.w,
      height: 81.h,
      textStyle: TextStyle(
          fontSize: 20.sp, color: Colors.black, fontWeight: FontWeight.bold),
      decoration: BoxDecoration(
        color: const Color(0xffF4F3F3),
        borderRadius: BorderRadius.circular(10.r),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color(0xffF3881D)),
      borderRadius: BorderRadius.circular(10.r),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: const Color(0xffF4F3F3),
      ),
    );
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
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
                Image.asset("assets/images/verify_code.png"),
                SizedBox(
                  height: 10.h,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Enter ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 32.sp,
                        ),
                      ),
                      TextSpan(
                        text: "Verification code",
                        style: TextStyle(
                          color: const Color(0xffF3881D),
                          fontSize: 32.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Verification code has been sent to your email :  ',
                          style: TextStyle(
                            color: const Color(0xff878787),
                            fontSize: 14.sp,
                          ),
                        ),
                        TextSpan(
                          text: "abc123@gmail.com",
                          style: TextStyle(
                              color: const Color(0xff00B3FF),
                              fontSize: 14.sp,
                              decoration: TextDecoration.underline,
                              decorationColor: const Color(0xff00B3FF)),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Pinput(
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: submittedPinTheme,
                  validator: (s) {
                    return null;
                  },
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Resend ",
                      style: TextStyle(
                        color: const Color(0xffF3881D),
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      "after 30 seconds",
                      style: TextStyle(
                        color: const Color(0xff878787),
                        fontSize: 16.sp,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                SizedBox(
                  width: 317.w,
                  height: 64.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(CreateProfile());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF3881D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Submit',
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
      ),
    );
  }
}
