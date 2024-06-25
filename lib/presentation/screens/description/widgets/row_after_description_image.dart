import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/colors.dart';

class RowAfterDescriptionImage extends StatelessWidget {
  const RowAfterDescriptionImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.bookmark_border,
          color: MyColors.lightBlueColor,
          size: 20,
        ),
        SizedBox(
          width: 4.w,
        ),
        Text(
          '1034',
          style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 12,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 14.w,
        ),
        const Icon(
          FeatherIcons.heart,
          color: MyColors.lightBlueColor,
          size: 20,
        ),
        SizedBox(
          width: 4.w,
        ),
        Text(
          '1034',
          style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 12,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 14.w,
        ),
        Container(
          decoration: ShapeDecoration(
              color: Colors.grey[300], shape: const StadiumBorder()),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.star_rounded,
                  color: Color.fromARGB(255, 97, 186, 238),
                  size: 17,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: MyColors.highlightBlueColor,
                  size: 17,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: MyColors.highlightBlueColor,
                  size: 17,
                ),
                Icon(
                  Icons.star_rounded,
                  color: Colors.blueGrey.withOpacity(0.2),
                  size: 17,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: Colors.white,
                  size: 17,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 14.w,
        ),
        const Text(
          '3.2',
          style: TextStyle(
              color: MyColors.lightBlueColor,
              fontSize: 12,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
