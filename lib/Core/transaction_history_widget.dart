import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionHistoryWidget extends StatelessWidget {
  final String name;
  final String amount;
  final String date;
  const TransactionHistoryWidget({
    super.key,
    required this.name,
    required this.amount,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: Colors.grey.withOpacity(0.3))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Received From",
                  style: TextStyle(
                      color: const Color(0xff878787), fontSize: 14.sp),
                ),
                Text(
                  "Amount",
                  style: TextStyle(
                      color: const Color(0xff878787), fontSize: 14.sp),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: const Color(0xff1C44B4), fontSize: 14.sp),
                ),
                Text(
                  amount,
                  style: TextStyle(
                      color: const Color(0xff1C44B4),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Date",
                  style: TextStyle(
                      color: const Color(0xff878787), fontSize: 14.sp),
                ),
                Text(
                  date,
                  style: TextStyle(
                    color: const Color(0xffF3881D),
                    fontSize: 14.sp,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}