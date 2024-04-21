import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gorofat/Core/custom_textfield.dart';
import 'package:gorofat/presentation/home/widgets/hotel_infos.dart';
import 'package:gorofat/presentation/home/widgets/hotem_class.dart';
import 'package:gorofat/presentation/hotel_Info/hotel_info_page.dart';

import 'widgets/navigation_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Hotel> hotels = [
    Hotel(
      imgPath: "assets/images/hotel_logo.png",
      name: "Al Hamra",
      type: "Hotel",
      distance: "1.2",
      rating: "8.9",
      price: "100\$",
    ),
    Hotel(
      imgPath: "assets/images/hotel_logo.png",
      name: "Grand Hotel",
      type: "Hotel",
      distance: "2.5",
      rating: "9.0",
      price: "120\$",
    ),
    Hotel(
      imgPath: "assets/images/hotel_logo.png",
      name: "Sunset Inn",
      type: "Inn",
      distance: "0.8",
      rating: "7.5",
      price: "80\$",
    ),
    Hotel(
      imgPath: "assets/images/hotel_logo.png",
      name: "Sunset Inn",
      type: "Inn",
      distance: "0.8",
      rating: "7.5",
      price: "80\$",
    ),
    Hotel(
      imgPath: "assets/images/hotel_logo.png",
      name: "Sunset Inn",
      type: "Inn",
      distance: "0.8",
      rating: "7.5",
      price: "80\$",
    ),
    Hotel(
      imgPath: "assets/images/hotel_logo.png",
      name: "Sunset Inn",
      type: "Inn",
      distance: "0.8",
      rating: "7.5",
      price: "80\$",
    ),
  ];
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
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(top: 100.h),
                  child: Container(
                    //change this widget with the google map widget
                    height: 650,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/map.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Image.asset(
                  "assets/images/logo_gorofat_mini_blue.png",
                  height: 57.h,
                  width: 81.h,
                ),
              ),
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.4,
            minChildSize: 0.4,
            maxChildSize: 0.8,
            builder: (context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 40.h, horizontal: 15.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Flexible(
                            child: CustomTextField(
                              hintText: "Where to stay",
                              suffixIcon: Icon(
                                Icons.mic,
                                color: Color(0xff878787),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Image.asset(
                            "assets/images/calendarr.png",
                            height: 56.h,
                            width: 56.w,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Expanded(
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 8.h,
                            );
                          },
                          controller: scrollController,
                          itemCount: (hotels.length / 2).ceil(),
                          itemBuilder: (context, index) {
                            int firstIndex = index * 2;
                            int secondIndex = firstIndex + 1;

                            if (secondIndex >= hotels.length) {
                              return HotelInfos(
                                imgPath: hotels[firstIndex].imgPath,
                                name: hotels[firstIndex].name,
                                type: hotels[firstIndex].type,
                                distance: hotels[firstIndex].distance,
                                rating: hotels[firstIndex].rating,
                                price: hotels[firstIndex].price,
                                onTap: () {
                                  Get.to(HotelInfosPage());
                                },
                              );
                            } else {
                              return Row(
                                children: [
                                  Expanded(
                                    child: HotelInfos(
                                      imgPath: hotels[firstIndex].imgPath,
                                      name: hotels[firstIndex].name,
                                      type: hotels[firstIndex].type,
                                      distance: hotels[firstIndex].distance,
                                      rating: hotels[firstIndex].rating,
                                      price: hotels[firstIndex].price,
                                      onTap: () {
                                        Get.to(HotelInfosPage());
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 8.w),
                                  Expanded(
                                    child: HotelInfos(
                                      imgPath: hotels[secondIndex].imgPath,
                                      name: hotels[secondIndex].name,
                                      type: hotels[secondIndex].type,
                                      distance: hotels[secondIndex].distance,
                                      rating: hotels[secondIndex].rating,
                                      price: hotels[secondIndex].price,
                                      onTap: () {
                                        Get.to(HotelInfosPage());
                                      },
                                    ),
                                  ),
                                ],
                              );
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
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
