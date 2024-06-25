import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/textstyles.dart';
import 'row_after_description_image.dart';

class DescriptionAfterImage extends StatelessWidget {
  const DescriptionAfterImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RowAfterDescriptionImage(),
        SizedBox(
          height: 15.h,
        ),
        const Text(
          'Actor Name',
          style: aboveNormalDarkBlueTextStyle,
        ),
        // SizedBox(
        //   height: 2.h,
        // ),
        Text(
          'Indian Actress',
          style: descriptionPageSubheadingsWhiteTextStyle,
        ),
        SizedBox(
          height: 4.h,
        ),
        Row(
          children: [
            Icon(
              FeatherIcons.clock,
              size: 16,
              color: Colors.black.withOpacity(0.6),
            ),
            Text(
              ' Duration 20 Mins',
              style: descriptionPageSubheadingsWhiteTextStyle,
            )
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Row(
          children: [
            Icon(
              Icons.wallet,
              size: 16,
              color: Colors.black.withOpacity(0.6),
            ),
            Text(
              ' Total Average Fees ₹9,999',
              style: descriptionPageSubheadingsWhiteTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
