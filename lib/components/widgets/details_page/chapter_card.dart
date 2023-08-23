import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';

class ChapterCard extends StatelessWidget {
  const ChapterCard({
    super.key,
    required this.name,
    required this.tag,
    required this.onTap,
  });

  final String name;
  final String tag;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 13,
            color: const Color(0xffD3D3D3).withOpacity(0.84),
          ),
        ],
      ),
      width: size.width - 48,
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$name\n",
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: const TextStyle(
                    color: AppColors.kLightBlackColor,
                    height: 1.5,
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: onTap,
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
