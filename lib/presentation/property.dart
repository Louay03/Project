import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gorofat/Core/custom_textfield.dart';
import 'package:gorofat/Core/property_data_container.dart';
import 'package:gorofat/presentation/home/widgets/navigation_drawer.dart';

import 'add_property.dart';

class Property extends StatelessWidget {
  Property({super.key});
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
            child: Image.asset(
              "assets/images/property_pic.png",
              height: 255.h,
              width: 230.w,
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
                    hintText: "Search by property",
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
                    'Property',
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
                    'Details about your property',
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
            padding: EdgeInsets.only(top: 280.h, right: 3.w, left: 3.w),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: const Color(0xffF4F3F3),
              ),
              height: double.infinity,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const PropertyDataContainer(
                    name: "Bindford Tower",
                    type: "Apartments",
                    date: "08/02/24",
                    adress: "2118 Thornridge Cir. Syracuse, Connecticut 35624",
                    rating: "8.9",
                    image:
                        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/88/93/c6/la-cigale-tabarka.jpg?w=700&h=-1&s=1",
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 0.h,
            child: Container(
              height: 108.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(30.r),
                color: Colors.white,
              ),
              child: Center(
                child: SizedBox(
                  width: 317.w,
                  height: 64.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(AddProperty());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff1C44B4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Add Property',
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
