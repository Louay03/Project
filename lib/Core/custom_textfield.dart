import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  const CustomTextField({
    Key? key,
    required this.hintText,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffD9D9D9).withOpacity(0.5),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 12.sp, color: const Color(0xff878787)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
