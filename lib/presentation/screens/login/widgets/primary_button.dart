import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isLoading;
  final bool isEmailPasswordValid;
  const PrimaryButton({
    super.key,
    required this.title,
    required this.isLoading,
    required this.onPressed,
    required this.isEmailPasswordValid,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            side: !isEmailPasswordValid
                ? const BorderSide(
                    width: 3,
                    color: MyColors.lightBlueColor,
                    strokeAlign: BorderSide.strokeAlignInside)
                : null,
            backgroundColor: isEmailPasswordValid
                ? MyColors.darkBlueColor
                : Colors.blueGrey[200],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11.r)),
            minimumSize: Size(MediaQuery.of(context).size.width, 44)),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: isLoading == true
              ? const CircularProgressIndicator(
                  color: MyColors.kWhiteColor,
                )
              : Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
        ));
  }
}
