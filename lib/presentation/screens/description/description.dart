import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screens/presentation/screens/common_widgets/custom_appbar.dart';

import 'widgets/description_about.dart';
import 'widgets/description_after_image.dart';
import 'widgets/description_image_carousel.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: CustomAppBar(appBarTitle: "Description")),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DescriptionImageCarouselWithDots(),
              SizedBox(
                height: 10.h,
              ),
              const DescriptionAfterImage(),
              SizedBox(
                height: 12.h,
              ),
              const DescriptionAbout()
            ],
          ),
        ),
      )),
    );
  }
}
