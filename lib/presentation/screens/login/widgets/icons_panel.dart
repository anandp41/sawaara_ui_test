import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconsPanel extends StatelessWidget {
  const IconsPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
            child: Image.asset(
              'assets/google.png',
              height: 35.h,
              width: 35.w,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
            child: Image.asset(
              'assets/linkedin.png',
              height: 35.h,
              width: 35.w,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
            child: Image.asset(
              'assets/facebook.png',
              height: 35.h,
              width: 35.w,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
            child: Image.asset(
              'assets/instagram.png',
              height: 35.h,
              width: 35.w,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
            child: Image.asset(
              'assets/whatsapp.png',
              height: 35.h,
              width: 35.w,
            ),
          )
        ],
      ),
    );
  }
}
