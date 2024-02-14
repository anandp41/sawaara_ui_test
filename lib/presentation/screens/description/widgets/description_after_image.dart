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
          height: 20.h,
        ),
        const Text(
          'Actor Name',
          style: aboveNormalDarkBlueTextStyle,
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          'Indian Actress',
          style: descriptionPageSubheadingsWhiteTextStyle,
        ),
        SizedBox(
          height: 12.h,
        ),
        Row(
          children: [
            Icon(
              FeatherIcons.clock,
              size: 20,
              color: Colors.black.withOpacity(0.6),
            ),
            Text(
              ' Duration 20 Mins',
              style: descriptionPageSubheadingsWhiteTextStyle,
            )
          ],
        ),
        SizedBox(
          height: 12.h,
        ),
        Row(
          children: [
            Icon(
              Icons.wallet_sharp,
              size: 20,
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
