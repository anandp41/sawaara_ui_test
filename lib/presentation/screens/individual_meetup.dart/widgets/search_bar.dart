import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

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
          hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
          constraints: const BoxConstraints(maxHeight: 50),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  style: BorderStyle.solid,
                  color: MyColors.darkBlueColor,
                  width: 1.5),
              borderRadius: BorderRadius.circular(12)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  style: BorderStyle.solid,
                  color: MyColors.darkBlueColor,
                  width: 1.5),
              borderRadius: BorderRadius.circular(12)),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(
              FeatherIcons.search,
              color: MyColors.darkBlueColor,
              size: 30,
            ),
          ),
          prefix: const SizedBox(
            width: 10,
          ),
          suffixIcon: const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              FeatherIcons.mic,
              color: MyColors.darkBlueColor,
            ),
          )),
    );
  }
}
