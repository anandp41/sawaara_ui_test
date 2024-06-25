import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common_widgets/custom_appbar.dart';
import 'widgets/description_about.dart';
import 'widgets/description_after_image.dart';
import 'widgets/description_image_carousel.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar(appBarTitle: "Description")),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 2.h),
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
                height: 6.h,
              ),
              const DescriptionAbout()
            ],
          ),
        ),
      )),
    );
  }
}
