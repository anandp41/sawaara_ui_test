import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../../core/colors.dart';
import 'image_tile.dart';

class CustomCarouselWithDots extends StatefulWidget {
  const CustomCarouselWithDots({super.key});

  @override
  State<CustomCarouselWithDots> createState() => _CustomCarouselWithDotsState();
}

class _CustomCarouselWithDotsState extends State<CustomCarouselWithDots> {
  late CarouselController carouselController;
  final List<Widget> items = [
    const ImageTile(
      imagePath: 'assets/meetup.jpg',
    ),
    const ImageTile(imagePath: 'assets/meetup.jpeg'),
    const ImageTile(imagePath: 'assets/meetup2.jpeg'),
  ];
  int currentIndex = 0;

  @override
  void initState() {
    carouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            carouselController: carouselController,
            items: items,
            options: CarouselOptions(
              height: 170,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                currentIndex = index;
                setState(() {});
              },
              scrollDirection: Axis.horizontal,
            )),
        const SizedBox(
          height: 8,
        ),
        DotsIndicator(
          onTap: (position) {
            carouselController.animateToPage(position);
          },
          dotsCount: 3,
          position: currentIndex,
          decorator: const DotsDecorator(
            spacing: EdgeInsets.symmetric(horizontal: 4),
            activeSize: Size(8, 8),
            size: Size(8, 8),
            color: Colors.grey, // Inactive color
            activeColor: MyColors.darkBlueColor,
          ),
        )
      ],
    );
  }
}
