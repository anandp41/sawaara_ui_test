import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';

class CustomAppBar extends StatelessWidget {
  final String appBarTitle;
  const CustomAppBar({
    super.key,
    required this.appBarTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: const PreferredSize(preferredSize: Size.zero, child: Divider()),
      backgroundColor: Colors.white,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          padding: EdgeInsets.zero,
          icon: const Icon(
            Icons.chevron_left_sharp,
            size: 32,
          )),
      title: Text(appBarTitle,
          style: TextStyle(
              fontSize: 22.sp,
              color: MyColors.darkBlueColor,
              fontWeight: FontWeight.w500)),
    );
  }
}
