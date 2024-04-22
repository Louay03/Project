import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gorofat/Core/custom_textfield.dart';
import 'package:gorofat/Core/transaction_history_widget.dart';
import 'package:gorofat/presentation/home/widgets/navigation_drawer.dart';

import '../Core/client_data_container.dart';

class Wallet extends StatelessWidget {
  Wallet({super.key});
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
            top: 100.h,
            right: 0.w,
            child: Image.asset(
              "assets/images/balance.png",
              height: 225.h,
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
            top: 130.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Wallet',
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
                    'Details about balance',
                    style: TextStyle(
                      color: const Color(0xff878787),
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 280.h,
            child: Padding(
              padding: EdgeInsets.only(right: 15.w, left: 15.w),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xffF4F3F3),
                ),
                width: 400.w,
                height: 360.h,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
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
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Guy Hawkins",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "nevaeh.simmons@example.com",
                                style: TextStyle(
                                    color: const Color(0xff878787),
                                    fontSize: 14.sp),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Current Balance",
                        style: TextStyle(
                            color: const Color(0xff878787), fontSize: 14.sp),
                      ),
                      SizedBox(height: 20.h),
                      Center(
                        child: Text(
                          "1000 SAR",
                          style: TextStyle(
                              color: const Color(0xff1C44B4),
                              fontSize: 45.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 174.w,
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
                                'Top Up',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          SizedBox(
                            width: 174.w,
                            height: 50.h,
                            child: ElevatedButton(
                              onPressed: () {
                                // Get.to(AddPropertyStep2());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffF3881D),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'Transfer',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
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
          ),
          Positioned(
            top: 640.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recent Transactions",
                    style: TextStyle(
                        color: const Color(0xff878787), fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const TransactionHistoryWidget(
                      name: "Cameron Williamson",
                      amount: "150 SAR",
                      date: "02/11/12"),
                  SizedBox(height: 20.h),
                  const TransactionHistoryWidget(
                      name: "Cameron Williamson",
                      amount: "150 SAR",
                      date: "02/11/12"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
