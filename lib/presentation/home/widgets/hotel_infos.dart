import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelInfos extends StatelessWidget {
  final String imgPath;
  final String name;
  final String type;
  final String distance;
  final String rating;
  final String price;
 final Function()? onTap;

  const HotelInfos({
    Key? key,
    required this.imgPath,
    required this.name,
    required this.type,
    required this.distance,
    required this.rating,
    required this.price, this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            width: 1,
            color: const Color(0xffE4E5E8).withOpacity(0.8),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0xffE4E5E8),
              blurRadius: 4.0,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Row(
                  children: [
                    Image.asset(
                      imgPath,
                      height: 25.h,
                      width: 25.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff414243),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
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
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.favorite_border,
                      size: 8,
                      color: Color(0xffA5A6AD),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0.w),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/location.png",
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "$distance Km",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff878787),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.h),
              Row(
                children: [
                  Image.asset(
                    "assets/images/bed_grey.png",
                    height: 25.h,
                    width: 25.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rounded,
                        color: Color(0xffF3881D),
                        size: 15,
                      ),
                      Text(
                        rating,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xff878787),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffF3881D),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
