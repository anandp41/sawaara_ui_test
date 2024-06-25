import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/textstyles.dart';

class RememberMeForgotPanel extends StatelessWidget {
  const RememberMeForgotPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                width: 24.w,
                child: Checkbox(
                    value: false,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r)),
                    onChanged: (value) {})),
            SizedBox(
              width: 6.w,
            ),
            const Text(
              'Remember Me',
              style: normalSubtleWhiteTextStyle,
            )
          ],
        ),
        const Text(
          'Forgot Password',
          style: subTextfieldTextStyle,
        )
      ],
    );
  }
}
