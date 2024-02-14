import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionImageCarouselWithDots extends StatefulWidget {
  const DescriptionImageCarouselWithDots({super.key});

  @override
  State<DescriptionImageCarouselWithDots> createState() =>
      _CustomCarouselWithDotsState();
}

class _CustomCarouselWithDotsState
    extends State<DescriptionImageCarouselWithDots> {
  late CarouselController carouselController;
  final List<String> paths = [
    'assets/surfboard.jpg',
    'assets/surf1.jpg',
    'assets/surf2.jpg',
  ];
  int currentIndex = 0;
  late List<Widget> items;
  @override
  void initState() {
    carouselController = CarouselController();
    items = List.generate(
        paths.length,
        (index) => DescriptionCarouselImageContainer(
              imagePath: paths[index],
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.grey[300],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                  bottomLeft: Radius.circular(8.r),
                  bottomRight: Radius.circular(8.r))),
          padding: const EdgeInsets.all(0),
          height: 350.h,
          width: 300.w,
          child: const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    FeatherIcons.download,
                    color: Colors.black54,
                    size: 32,
                  ),
                  Icon(
                    Icons.bookmark_border,
                    color: Colors.black54,
                    size: 32,
                  ),
                  Icon(
                    FeatherIcons.heart,
                    color: Colors.black54,
                    size: 32,
                  ),
                  Icon(
                    FeatherIconsSnakeCase.square,
                    color: Colors.black,
                    size: 32,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.black,
                    weight: 1,
                    size: 32,
                  ),
                  Icon(
                    Icons.share_outlined,
                    color: Colors.black,
                    size: 32,
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: Stack(
            children: [
              CarouselSlider(
                  carouselController: carouselController,
                  items: items,
                  options: CarouselOptions(
                    height: 300.h,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: false,
                    onPageChanged: (index, reason) {
                      currentIndex = index;
                      setState(() {});
                    },
                    scrollDirection: Axis.horizontal,
                  )),
              Positioned(
                bottom: 20.h,
                left: 0,
                right: 0,
                child: DotsIndicator(
                  onTap: (position) {
                    carouselController.animateToPage(position);
                  },
                  dotsCount: paths.length,
                  position: currentIndex,
                  decorator: const DotsDecorator(
                    activeSize: Size(12, 12),
                    size: Size(12, 12),
                    color: Colors.grey, // Inactive color
                    activeColor: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class DescriptionCarouselImageContainer extends StatelessWidget {
  final String imagePath;
  const DescriptionCarouselImageContainer({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 300.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          image: DecorationImage(
              image: AssetImage(
                imagePath,
              ),
              fit: BoxFit.cover)),
    );
  }
}
