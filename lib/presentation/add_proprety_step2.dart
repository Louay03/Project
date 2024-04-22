import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gorofat/Core/custom_textfield.dart';
import 'package:gorofat/presentation/home/home_page.dart';
import 'package:gorofat/presentation/home/widgets/navigation_drawer.dart';

class AddPropertyStep2 extends StatelessWidget {
  AddPropertyStep2({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(
        firstName: "Louay",
        lastName: "Bk",
        balance: "450",
        points: '2k',
        imgUri:
            "https://blockchainfrance.net/wp-content/uploads/2023/02/Bored-Ape-8351.png",
      ),
      body: Stack(
        children: [
          Positioned(
            top: 160.h,
            right: 0.w,
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                "assets/images/property_pic.png",
                height: 255.h,
                width: 230.w,
              ),
            ),
          ),
          Positioned(
            left: 0.w,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/drawer_circle.png",
                  height: 130.h,
                ),
                Positioned(
                  top: 30.h,
                  left: 20.w,
                  child: GestureDetector(
                    onTap: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 24.h,
            right: 0.w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Image.asset(
                "assets/images/logo_gorofat_mini_blue.png",
                height: 57.h,
                width: 81.h,
              ),
            ),
          ),
          Positioned(
            top: 160.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Add Property',
                        style: TextStyle(
                          color: const Color(0xff1C44B4),
                          fontSize: 32.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Enter details about your property',
                      style: TextStyle(
                        color: const Color(0xff878787),
                        fontSize: 16.sp,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 30.h),
                        SizedBox(
                          width: 364.w,
                          height: 64.h,
                          child: const CustomTextField(
                            fillColor: Color(0xffF4F3F3),
                            hintText: "Price",
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Fully Booked (Dates with outlines)",
                              style: TextStyle(color: Color(0xff878787)),
                            ),
                            Image.asset(
                              "assets/images/calendar_pic.png",
                              height: 241.h,
                              width: 400.w,
                            )
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "1% on payment with card",
                              style: TextStyle(color: Color(0xff878787)),
                            ),
                            SizedBox(height: 20.h),
                            SizedBox(
                                width: 364.w,
                                height: 64.h,
                                child: const CustomTextField(
                                  fillColor: Color(0xffF4F3F3),
                                  hintText: "Hotel",
                                  suffixIcon: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    size: 20,
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Center(
                          child: SizedBox(
                            width: 317.w,
                            height: 64.h,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(HomePage());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff1C44B4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'Live Your Property',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
