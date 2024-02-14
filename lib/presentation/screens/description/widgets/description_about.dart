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
          height: 12.h,
        ),
        Text(
          'From cardiovascular health to fitness, flexibility, balance, stress relief, better sleep, increased cognitive performance, and more, you can reap all of these benefits in just onw session out on the waves. So, you may find yourself wondering what are the benefits of going on a surf camp.',
          style: descriptionPageSubheadingsWhiteTextStyle,
        ),
        SizedBox(
          height: 12.h,
        ),
        const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'See More',
            style: normalHighlightBlueTextStyle,
          ),
        ),
      ],
    );
  }
}
