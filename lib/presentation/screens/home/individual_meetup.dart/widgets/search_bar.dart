import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

import '../../../../../core/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 8),
          hintText: 'Search',
          hintStyle: const TextStyle(
              fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w400),
          constraints: const BoxConstraints(maxHeight: 40),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  style: BorderStyle.solid,
                  color: MyColors.darkBlueColor,
                  width: 1.5),
              borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  style: BorderStyle.solid,
                  color: MyColors.darkBlueColor,
                  width: 1.5),
              borderRadius: BorderRadius.circular(8)),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Icon(
              FeatherIcons.search,
              color: MyColors.darkBlueColor,
              size: 24,
            ),
          ),
          prefix: const SizedBox(
            width: 10,
          ),
          suffixIcon: const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              FeatherIcons.mic,
              color: MyColors.darkBlueColor,
            ),
          )),
    );
  }
}
