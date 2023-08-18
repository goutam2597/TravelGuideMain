import 'package:flutter/material.dart';
import 'package:travel_guide/ui/screens/utils/asset_utils.dart';

class ScreenBackground extends StatelessWidget {
  final Widget child;

  const ScreenBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            AssetsUtils.backgroundJpg,
            fit: BoxFit.cover,
          ),
        ),
        child
      ],
    );
  }
}
