import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/textstyles.dart';
import '../../common_widgets/custom_appbar.dart';
import 'widgets/bottom_image_cards.dart';
import 'widgets/custom_card_carousel.dart';
import 'widgets/custom_image_carousel_with_dots.dart';
import 'widgets/search_bar.dart';

class IndividualMeetup extends StatelessWidget {
  const IndividualMeetup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar(
            appBarTitle: 'Individual Meetup',
          )),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomSearchBar(),
              SizedBox(
                height: 16.h,
              ),
              const CustomCarouselWithDots(),
              SizedBox(
                height: 30.h,
              ),
              const Text(
                'Trending Popular People',
                style: normalDarkBlueTextStyle,
              ),
              SizedBox(
                height: 9.h,
              ),
              CustomCardCarousel(),
              SizedBox(
                height: 24.h,
              ),
              const Text(
                'Top Trending Meetups',
                style: normalDarkBlueTextStyle,
              ),
              SizedBox(
                height: 9.h,
              ),
              const BottomImageCards()
            ],
          ),
        ),
      )),
    );
  }
}
