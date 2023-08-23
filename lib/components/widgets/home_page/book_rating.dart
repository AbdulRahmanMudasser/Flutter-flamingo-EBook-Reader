import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key, required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 7),
            blurRadius: 20,
            color: const Color(0xffD3D3D3).withOpacity(0.5),
          ),
        ],
      ),
      child:  Column(
        children: [
          const Icon(
            Icons.star,
            color: AppColors.kIconColor,
            size: 15,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            rating.toString(),
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
            ),
          )
        ],
      ),
    );
  }
}
