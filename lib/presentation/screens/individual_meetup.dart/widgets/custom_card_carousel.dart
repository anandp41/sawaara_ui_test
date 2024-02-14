import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screens/core/colors.dart';
import 'package:screens/core/textstyles.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';

// ignore: must_be_immutable
class CustomCardCarousel extends StatelessWidget {
  CustomCardCarousel({super.key});
  List<String> titles = ["Author", "Member", "Visitor"];
  List<String> meetups = ["1,028", "722", "568"];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 152.h,
      width: double.infinity,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 300, crossAxisCount: 1, mainAxisSpacing: 20),
        itemBuilder: (context, index) =>
            ScrollableCard(title: titles[index], meetups: meetups[index]),
      ),
    );
  }
}

class ScrollableCard extends StatelessWidget {
  final String title;
  final String meetups;
  const ScrollableCard({super.key, required this.title, required this.meetups});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 152.h,
      width: 300.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1.5, color: Colors.black38)),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(
                          side: BorderSide(
                              color: MyColors.darkBlueColor, width: 2))),
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/feather.png'),
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
            SizedBox(
              height: 1.h,
            ),
            const Divider(),
            SignedSpacingRow(
              spacing: -6.w,
              stackingOrder: StackingOrder.lastOnTop,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50.r,
                    backgroundImage: const AssetImage('assets/work1.jpg'),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50.r,
                    backgroundImage: const AssetImage('assets/work2.jpg'),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50.r,
                    backgroundImage: const AssetImage('assets/work3.jpg'),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50.r,
                    backgroundImage: const AssetImage('assets/work4.jpg'),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50.r,
                    backgroundImage: const AssetImage('assets/work5.jpg'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: const MaterialStatePropertyAll(EdgeInsets.all(0)),
                    fixedSize: MaterialStatePropertyAll(Size.fromWidth(90.w)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6))),
                    backgroundColor: const MaterialStatePropertyAll(
                        MyColors.lightBlueColor)),
                child: Text(
                  'See more',
                  style: TextStyle(color: Colors.white, fontSize: 13.sp),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
