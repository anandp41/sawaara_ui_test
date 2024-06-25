import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors.dart';
import '../../../description/description.dart';

class BottomImageCards extends StatelessWidget {
  const BottomImageCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.h,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, mainAxisSpacing: 16),
          itemBuilder: (context, index) => ImageNumberStack(index: index)),
    );
  }
}

class ImageNumberStack extends StatelessWidget {
  final int index;
  const ImageNumberStack({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => const DescriptionPage()));
      },
      child: SizedBox(
        height: 140.h,
        width: 140.w,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      image: AssetImage('assets/imagenumber.jpg'))),
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 60.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        12,
                      )),
                  padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 6.h),
                  child: Text(
                    "${index + 1}".padLeft(2, '0'),
                    style: TextStyle(
                        fontSize: 40.sp,
                        color: MyColors.darkBlueColor,
                        fontWeight: FontWeight.w900),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
