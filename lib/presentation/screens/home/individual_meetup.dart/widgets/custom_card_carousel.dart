import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/textstyles.dart';

// ignore: must_be_immutable
class CustomCardCarousel extends StatelessWidget {
  CustomCardCarousel({super.key});
  List<String> titles = ["Author", "Member", "Visitor"];
  List<String> icons = [
    'assets/feather.png',
    'assets/filmreel.png',
    'assets/visitor.png'
  ];
  List<String> meetups = ["1,028", "722", "568"];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      width: double.infinity,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 270, crossAxisCount: 1, mainAxisSpacing: 18),
        itemBuilder: (context, index) => ScrollableCard(
            title: titles[index], icon: icons[index], meetups: meetups[index]),
      ),
    );
  }
}

class ScrollableCard extends StatelessWidget {
  final String title;
  final String meetups;
  final String icon;
  const ScrollableCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.meetups});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1.5, color: Colors.black38)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(
                          side: BorderSide(
                              color: MyColors.darkBlueColor, width: 1.5))),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(icon),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: cardDarkBlueTextStyle,
                    ),
                    Text(
                      "$meetups Meetups",
                      style: cardSubtleWhiteTextStyle,
                    )
                  ],
                )
              ],
            ),
            const Divider(
              color: Colors.black45,
            ),
            SignedSpacingRow(
              spacing: -6.w,
              stackingOrder: StackingOrder.lastOnTop,
              children: [
                CircleAvatar(
                  radius: 18.r,
                  backgroundImage: const AssetImage('assets/work1.jpg'),
                ),
                CircleAvatar(
                  radius: 18.r,
                  backgroundImage: const AssetImage('assets/work2.jpg'),
                ),
                CircleAvatar(
                  radius: 18.r,
                  backgroundImage: const AssetImage('assets/work3.jpg'),
                ),
                CircleAvatar(
                  radius: 18.r,
                  backgroundImage: const AssetImage('assets/work4.jpg'),
                ),
                CircleAvatar(
                  radius: 18.r,
                  backgroundImage: const AssetImage('assets/work5.jpg'),
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                  height: 30,
                  width: 80,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        padding: const WidgetStatePropertyAll<EdgeInsets>(
                            EdgeInsets.zero),
                        fixedSize:
                            WidgetStatePropertyAll(Size.fromWidth(100.w)),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                        backgroundColor: const WidgetStatePropertyAll(
                            Color.fromARGB(255, 30, 95, 187))),
                    child: Text('See more',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        )),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
