import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/textstyles.dart';

class PromiloTermsBanner extends StatelessWidget {
  const PromiloTermsBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.center,
          child: Text(
            'By continuing, you agree to',
            style: termsSubtleWhiteTextStyle,
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        const Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Promilo's ",
                style: termsSubtleWhiteTextStyle,
              ),
              Text(
                'Terms of Use & Privacy Policy.',
                style: normalBlackTextStyle,
              )
            ],
          ),
        )
      ],
    );
  }
}
