import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gorofat/Core/custom_textfield.dart';
import 'package:gorofat/presentation/home/widgets/navigation_drawer.dart';

class HistoryDetails extends StatelessWidget {
  HistoryDetails({super.key});
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
            top: 120.h,
            right: 0.w,
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                "assets/images/yellow_pic.png",
                height: 225.h,
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
            top: 110.h,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: SizedBox(
                  width: 384.w,
                  child: const CustomTextField(
                    hintText: "Search by client name",
                    suffixIcon: Icon(
                      Icons.mic_rounded,
                      color: Color(0xff878787),
                      size: 30,
                    ),
                    fillColor: Color(0xffF4F3F3),
                  ),
                )),
          ),
          Positioned(
            top: 180.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'History',
                    style: TextStyle(
                      color: const Color(0xff1C44B4),
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Details about your clients',
                    style: TextStyle(
                      color: const Color(0xff878787),
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: 280.h, right: 20.w, left: 20.w, bottom: 20.h),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: const Color.fromARGB(255, 189, 190, 192)
                            .withOpacity(0.4),
                        blurRadius: 4.0,
                        offset: const Offset(0, 1),
                        spreadRadius: 1),
                  ],
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                radius: 53.r,
                                backgroundImage: const NetworkImage(
                                    "https://blockchainfrance.net/wp-content/uploads/2023/02/Bored-Ape-8351.png"),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Center(
                            child: Text(
                              "Guy Hawkins",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16.sp),
                            ),
                          ),
                          Center(
                            child: Text(
                              "nevaeh.simmons@example.com",
                              style: TextStyle(
                                  color: const Color(0xff878787),
                                  fontSize: 14.sp),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Stays at : ",
                            style: TextStyle(
                                color: const Color(0xff1C44B4),
                                fontSize: 16.sp),
                          ),
                          Text(
                            "Al Hamra ",
                            style: TextStyle(
                                color: const Color(0xff1C44B4),
                                fontSize: 32.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Hotel ",
                            style: TextStyle(
                                color: const Color(0xff878787),
                                fontSize: 14.sp),
                          ),
                          SizedBox(height: 20.h),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Dated",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16.sp),
                                ),
                                Text(
                                  "8/2/19",
                                  style: TextStyle(
                                      color: const Color(0xffF3881D),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Contact ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16.sp),
                              ),
                              Text(
                                "(704) 555 - 0217",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16.sp),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "Price Paid ",
                            style: TextStyle(
                                color: const Color(0xff878787),
                                fontSize: 14.sp),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "130 SAR",
                            style: TextStyle(
                                color: const Color(0xff1C44B4),
                                fontSize: 32.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              Image.asset("assets/images/location.png"),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "2118 Thornridge Cir. Syracuse, Connecticut 35624",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: const Color(0xff878787),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Feedback",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset("assets/images/bed_grey.png"),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      const Icon(
                                        Icons.star_rate_rounded,
                                        color: Color(0xffF3881D),
                                        size: 15,
                                      ),
                                      Text(
                                        "8.9",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: const Color(0xff878787),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Duration",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xff1C44B4),
                                    ),
                                  ),
                                  Text(
                                    "3 Days",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xff1C44B4),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Opacity(
                            opacity: 0.3,
                            child: Center(
                              child: SizedBox(
                                width: 400.w,
                                height: 50.h,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Get.to(AddPropertyStep2());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff1C44B4),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Text(
                                    'Request Feedback',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          )
                        ]),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
