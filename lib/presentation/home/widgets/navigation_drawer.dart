import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatelessWidget {
  final String imgUri;
  final String firstName;
  final String lastName;
  final String balance;
  final String points;
  const CustomDrawer({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.balance,
    required this.points,
    required this.imgUri,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.only(top: 58.h, bottom: 160.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            width: 1,
            color: const Color(0xffE4E5E8).withOpacity(0.8),
          ),
        ),
        width: 303.w,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 30.h),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xff1C44B4),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Row(
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
                          radius: 30.r,
                          backgroundImage: NetworkImage(imgUri),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "$firstName $lastName",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: const Color(0xffF4F3F3),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              //navigate to my account page
                            },
                            child: Text(
                              "My account",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xffF4F3F3),
                                decoration: TextDecoration.underline,
                                decorationColor: const Color(0xffF4F3F3),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_rate_rounded,
                                size: 20,
                                color: Color(0xffFFE500),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "$points points",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: const Color(0xffF4F3F3),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0xffF4F3F3)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/exchange.png",
                        height: 20.h,
                        width: 20.w,
                      ),
                      Text(
                        "Balance",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "$balance SAR",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffF3881D),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0xff4F66D6)),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // navigate to my wallet
                      },
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/wallet.png",
                          height: 24.h,
                          width: 30.w,
                        ),
                        title: Text(
                          "My wallet",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // navigate to promotions
                      },
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/promotions.png",
                          height: 24.h,
                          width: 30.w,
                        ),
                        title: Text(
                          "Promotions",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // navigate to stays
                      },
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/stays.png",
                          height: 24.h,
                          width: 30.w,
                        ),
                        title: Text(
                          "My stays",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // navigate to support
                      },
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/support.png",
                          height: 24.h,
                          width: 30.w,
                        ),
                        title: Text(
                          "Support",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // navigate to about
                      },
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/about.png",
                          height: 24.h,
                          width: 30.w,
                        ),
                        title: Text(
                          "About",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0xff1C44B4)),
                child: GestureDetector(
                  onTap: () {
                    // navigate to login page + perform logout logic
                  },
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/logout.png",
                      height: 24.h,
                      width: 30.w,
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
