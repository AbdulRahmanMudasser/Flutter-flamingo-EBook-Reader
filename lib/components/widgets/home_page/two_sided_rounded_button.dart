import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';

class TwoSidedRoundedButton extends StatelessWidget {
  const TwoSidedRoundedButton({
    super.key,
    required this.text,
    this.radius = 29,
    required this.onTap,
  });

  final String text;
  final double radius;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
