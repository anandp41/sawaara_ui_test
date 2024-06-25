import 'package:flutter/material.dart';

class OrBanner extends StatelessWidget {
  const OrBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Divider()),
        Text(' or '),
        Expanded(child: Divider()),
      ],
    );
  }
}
