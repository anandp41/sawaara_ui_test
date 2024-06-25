import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/textstyles.dart';

class DescriptionAbout extends StatelessWidget {
  const DescriptionAbout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About',
          style: aboveNormalDarkBlueTextStyle,
        ),
        SizedBox(
          height: 6.h,
        ),
        Text.rich(
            textAlign: TextAlign.justify,
            TextSpan(
                text:
                    'From cardiovascular health to fitness, flexibility, balance, stress relief, better sleep, increased cognitive performance, and more, you can reap all of these benefits in just one session out on the waves. So, you may find yourself wondering what are the benefits of going on a surf camp.',
                style: TextStyle(
                    fontSize: 13,
                    height: 1.1,
                    letterSpacing: 0.1,
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w400))),
        const Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'See More',
              style: normalHighlightBlueTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
