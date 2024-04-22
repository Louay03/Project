import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gorofat/Core/custom_textfield.dart';
import 'package:gorofat/presentation/add_proprety_step2.dart';
import 'package:gorofat/presentation/home/widgets/navigation_drawer.dart';

class AddProperty extends StatelessWidget {
  AddProperty({super.key});

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
                                hintText: "Enter Property name")),
                        SizedBox(height: 15.h),
                        SizedBox(
                          width: 364.w,
                          height: 64.h,
                          child: const CustomTextField(
                            fillColor: Color(0xffF4F3F3),
                            hintText: "Location",
                            suffixIcon: Icon(
                              Icons.add_location_alt_sharp,
                              color: Color(0xffA5A6AD),
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Up to 5 maximum",
                              style: TextStyle(color: Color(0xff878787)),
                            ),
                            DottedBorder(
                              dashPattern: const [8, 4],
                              padding: EdgeInsets.zero,
                              borderType: BorderType.RRect,
                              radius: Radius.circular(10.r),
                              color: Colors.white,
                              strokeWidth: 1,
                              child: Container(
                                height: 227.h,
                                width: 397.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: const Color(0xff4F66D6)
                                        .withOpacity(0.4)),
                                child: Center(
                                  child: TextButton.icon(
                                      onPressed: () {
                                        //add the logic to open camera or gallery
                                      },
                                      icon: const Icon(
                                        Icons.camera_alt_rounded,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      label: Text(
                                        "add Photos",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.sp),
                                      )),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Select Category",
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
                                Get.to(AddPropertyStep2());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff1C44B4),
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
