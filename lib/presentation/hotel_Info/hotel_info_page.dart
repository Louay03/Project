import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelInfosPage extends StatelessWidget {
  final List<String> imageUrls = [
    "assets/images/hotel1.jpg",
    "assets/images/hotel2.jpg",
    "assets/images/hotel3.jpg",
    "assets/images/hotel4.jpg",
    "assets/images/hotel6.jpg",
    "assets/images/hotel2.jpg",
  ];

  HotelInfosPage({super.key});

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
          ImageSlideshow(
            isLoop: true,
            indicatorRadius: 7.r,
            width: double.infinity,
            height: 350.h,
            initialPage: 0,
            indicatorColor: Colors.white,
            indicatorBackgroundColor: Colors.grey,
            children: buildImageSlideshow(),
            indicatorBottomPadding: 40.h,
          ),
          Positioned(
            top: 280.h,
            right: 20.w,
            child: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.65,
            minChildSize: 0.65,
            maxChildSize: 0.8,
            builder: (context, ScrollController scrollController) {
              return Container(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Al Hamra",
                                style: TextStyle(
                                    fontSize: 32.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Hotel",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: const Color(0xff878787),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/rating.png",
                                height: 20.h,
                                width: 100.w,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Good       ",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: const Color(0xff878787),
                                    ),
                                  ),
                                  Text(
                                    "8.0",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: const Color(0xff878787),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset("assets/images/location.png"),
                              SizedBox(height: 5.h),
                              Text(
                                "1.2km",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff878787),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 30.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Al Aswaq, AL Batha, Riyadh",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: const Color(0xff1C44B4),
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "Saudi Arabia",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: const Color(0xff878787),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 40.h),
                      Text(
                        "Prices",
                        style: TextStyle(
                            fontSize: 25.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 122.h,
                              width: 121.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color.fromARGB(
                                              255, 189, 190, 192)
                                          .withOpacity(0.4),
                                      blurRadius: 4.0,
                                      offset: const Offset(0, 1),
                                      spreadRadius: 1),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15.h, horizontal: 10.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Image.network(
                                        "https://lando.stay22.com/hs-fs/hubfs/2560px-Booking.com_logo.svg.png?width=2000&name=2560px-Booking.com_logo.svg.png"),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '120',
                                            style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' SAR',
                                            style: TextStyle(
                                              color: const Color(0xff878787),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.star_rounded,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Text(
                                          ' 8.9',
                                          style: TextStyle(
                                            color: const Color(0xff878787),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Text(
                                          ' (120)',
                                          style: TextStyle(
                                            color: const Color(0xff878787),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 45.h,
                                  width: 187.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: const Color.fromARGB(
                                                  255, 189, 190, 192)
                                              .withOpacity(0.4),
                                          blurRadius: 4.0,
                                          offset: const Offset(0, 1),
                                          spreadRadius: 1),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Image.network(
                                            "https://upload.wikimedia.org/wikipedia/commons/c/ce/Agoda_transparent_logo.png"),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '120',
                                                style: TextStyle(
                                                  color: Colors.orange,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' SAR',
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xff878787),
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.star_rounded,
                                              color: Colors.yellow,
                                              size: 20,
                                            ),
                                            Text(
                                              ' 9.9',
                                              style: TextStyle(
                                                color: const Color(0xff878787),
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            Text(
                                              ' (04)',
                                              style: TextStyle(
                                                color: const Color(0xff878787),
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  height: 71.h,
                                  width: 187.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: const Color.fromARGB(
                                                  255, 189, 190, 192)
                                              .withOpacity(0.4),
                                          blurRadius: 4.0,
                                          offset: const Offset(0, 1),
                                          spreadRadius: 1),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Image.network(
                                            "https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Airbnb_Logo_B%C3%A9lo.svg/1280px-Airbnb_Logo_B%C3%A9lo.svg.png",
                                            height: 27.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '120',
                                                    style: TextStyle(
                                                      color: Colors.orange,
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' SAR',
                                                    style: TextStyle(
                                                      color: const Color(
                                                          0xff878787),
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.star_rounded,
                                                  color: Colors.yellow,
                                                  size: 20,
                                                ),
                                                Text(
                                                  ' 7.9',
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xff878787),
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                                Text(
                                                  ' (33)',
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xff878787),
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Center(
                        child: SizedBox(
                          width: 317.w,
                          height: 64.h,
                          child: ElevatedButton(
                            onPressed: () {
                              // Get.to(
                              //get to home page

                              // );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff1C44B4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              'BOOK NOW',
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Center(
                        child: SizedBox(
                          width: 317.w,
                          height: 64.h,
                          child: ElevatedButton(
                            onPressed: () {
                              // Get.to(
                              //get to home page

                              // );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffF3881D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              'Location',
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
              );
            },
          ),
        ],
      ),
    );
  }
}
