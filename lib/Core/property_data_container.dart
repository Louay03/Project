import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropertyDataContainer extends StatelessWidget {
  final String image;
  final String name;
  final String type;

  final String date;
  final String adress;
  final String rating;
  const PropertyDataContainer({
    super.key,
    required this.name,
    required this.type,
    required this.date,
    required this.adress,
    required this.rating,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.white,
            border: Border.all(color: Colors.grey.withOpacity(0.2))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Column(
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
                      radius: 30.r,
                      backgroundImage: NetworkImage(image),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            type,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: const Color(0xff878787),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
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
                        rating,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xff878787),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "Added on ",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xff878787),
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xff878787),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset("assets/images/location.png"),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    adress,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xff878787),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    //navigate to use details
                  },
                  child: Text(
                    "More Details",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xffF3881D),
                      decoration: TextDecoration.underline,
                      decorationColor: const Color(0xffF3881D),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
