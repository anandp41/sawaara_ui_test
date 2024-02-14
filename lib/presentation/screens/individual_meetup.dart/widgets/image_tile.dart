import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageTile extends StatelessWidget {
  final String imagePath;
  const ImageTile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          foregroundDecoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            gradient: LinearGradient(stops: const [
              0,
              0.6,
              1
            ], colors: [
              Colors.black.withOpacity(0.7),
              Colors.black54,
              Colors.transparent
            ]),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(
                  image: AssetImage(
                    imagePath,
                  ),
                  fit: BoxFit.fill)),
        ),
        const Positioned(
            left: 30,
            bottom: 30,
            child: Text(
              'Popular Meetups\n in India',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ))
      ],
    );
  }
}
