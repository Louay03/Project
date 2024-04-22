import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gorofat/Core/custom_textfield.dart';
import 'package:gorofat/presentation/hotel_Info/recharge_wallet.dart';

class CheckoutStep1 extends StatelessWidget {
  final List<String> imageUrls = [
    "assets/images/hotel1.jpg",
    "assets/images/hotel2.jpg",
    "assets/images/hotel3.jpg",
    "assets/images/hotel4.jpg",
    "assets/images/hotel6.jpg",
    "assets/images/hotel2.jpg",
  ];

  CheckoutStep1({super.key});

  List<Widget> buildImageSlideshow() {
    return imageUrls.map((imageUrl) {
      return Image.asset(
        imageUrl,
        fit: BoxFit.cover,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return ImageSlideshow(
                isLoop: true,
                indicatorRadius: 7.r,
                width: double.infinity,
                height: 260.h,
                initialPage: 0,
                indicatorColor: Colors.white,
                indicatorBackgroundColor: Colors.grey,
                indicatorBottomPadding: 40.h,
                children: buildImageSlideshow(),
              );
            },
          ),
          Positioned(
            top: 180.h,
            right: 20.w,
            child: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.75,
            minChildSize: 0.75,
            maxChildSize: 0.8,
            builder: (context, ScrollController scrollController) {
              return SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r))),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/calendar_pic.png"),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 189, 190, 192)
                                          .withOpacity(0.4),
                                  blurRadius: 4.0,
                                  offset: const Offset(0, 1),
                                  spreadRadius: 1),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            child: Column(
                              children: [
                                Text(
                                  "Check out",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 15.h),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                  ),
                                  child: const CustomTextField(
                                    hintText: "2 adults zero children",
                                    suffixIcon: Icon(
                                      Icons.arrow_drop_down_rounded,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.w,
                                  ),
                                  child: const Divider(
                                    color: Color(0xffF4F3F3),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "My balance",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.sp,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            "560 SAR",
                                            style: TextStyle(
                                              color: const Color(0xff878787),
                                              fontSize: 18.sp,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "220 SAR",
                                            style: TextStyle(
                                                color: const Color(0xffF3881D),
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            "Total Price",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.sp,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Total Price",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.sp,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            "340 SAR",
                                            style: TextStyle(
                                              color: const Color(0xff878787),
                                              fontSize: 18.sp,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Center(
                                  child: SizedBox(
                                    width: 317.w,
                                    height: 64.h,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Get.to(RechargeWallet());
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xff1C44B4),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: Text(
                                        'Confirm',
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
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
