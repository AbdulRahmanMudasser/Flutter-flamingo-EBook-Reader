import 'package:flutter/material.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_strings.dart';
import '../home_page/book_rating.dart';
import '../reusable_button.dart';

class YouMightAlsoLike extends StatelessWidget {
  const YouMightAlsoLike({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Stack(
        children: [
          const SizedBox(
            height: 185,
            width: double.infinity,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 24, top: 24, right: 150),
              height: 165,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: const Color(0xffFFF8F9).withOpacity(0.75),
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "How To Win \nFriends & Influence",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    AppStrings.book1Author,
                    style: TextStyle(color: AppColors.kLightBlackColor),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const BookRating(rating: 4.9),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ReusableButton(
                          text: AppStrings.read,
                          onTap: () {},
                          verticalPadding: 10,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              AppAssets.book3,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
