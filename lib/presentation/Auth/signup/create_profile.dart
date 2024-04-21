import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gorofat/presentation/home/home_page.dart';

import '../../../Core/custom_textfield.dart';

class CreateProfile extends StatelessWidget {
  CreateProfile({super.key});
  final RxBool isChecked = false.obs;

  @override
  Widget build(BuildContext context) {
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
                Image.asset("assets/images/create_profile.png"),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: const CustomTextField(
                    hintText: "First name",
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: const CustomTextField(
                    hintText: "Last name",
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: CustomTextField(
                    hintText: "Date of Birth",
                    suffixIcon: Image.asset(
                      "assets/images/calendar.png",
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
                  child: const CustomTextField(
                    hintText: "Country",
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: const CustomTextField(
                    hintText: "City",
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Row(
                    children: [
                      Obx(
                        () => Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: isChecked.value,
                            onChanged: (value) {
                              isChecked.value = value!;
                            },
                            activeColor: isChecked.value
                                ? const Color(0xff878787)
                                : const Color(0xff878787),
                          ),
                        ),
                      ),
                      Text(
                        "By signing up, you agree to the terms",
                        style: TextStyle(
                          color: isChecked.value
                              ? const Color(0xff878787)
                              : const Color(0xff878787),
                        ),
                      ),
                      if (isChecked.value)
                        const Icon(
                          Icons.check,
                          color: Colors.white,
                        ),
                    ],
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
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  backgroundColor: Colors.transparent,
                                  child: SizedBox(
                                    width: 330.h,
                                    height: 195.h,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(30.r),
                                                  topRight:
                                                      Radius.circular(30.r))),
                                          width: double.infinity,
                                          height: 121.h,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 20.h),
                                                child: Text(
                                                  "Confirmation",
                                                  style: TextStyle(
                                                      fontSize: 20.sp,
                                                      color: const Color(
                                                          0xff1C44B4),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 5.h),
                                                child: Text(
                                                  "I confirm all data is true",
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    color:
                                                        const Color(0xff878787),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Get.back();
                                                  },
                                                  child: Container(
                                                    height: 75.h,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xffE1E1E1),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  30.r),
                                                        )),
                                                    child: Center(
                                                      child: Text(
                                                        'NO',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20.sp,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Get.to(HomePage());
                                                  },
                                                  child: Container(
                                                    height: 75.h,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xffF3881D),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  30.r),
                                                        )),
                                                    child: Center(
                                                      child: Text(
                                                        'YES',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20.sp,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )));
                        },
                      );
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
