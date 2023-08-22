import 'package:flutter/material.dart';
import 'package:flutter_flamingo_ebook_reader/components/widgets/home_page/two_sided_rounded_button.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_strings.dart';
import 'book_rating.dart';

class BestOfTheDayCard extends StatelessWidget {
  const BestOfTheDayCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        height: 205,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(
                  left: 24,
                  top: 24,
                  right: size.width * 0.35,
                ),
                height: 185,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffEAEAEA).withOpacity(0.45),
                  borderRadius: BorderRadius.circular(29),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      AppStrings.bestSeller,
                      style: TextStyle(
                        fontSize: 9,
                        color: AppColors.kLightBlackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      AppStrings.howToWin,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Text(
                      AppStrings.book1Author,
                      style: TextStyle(color: AppColors.kLightBlackColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        BookRating(rating: 4.9),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            AppStrings.desc,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 10, color: AppColors.kLightBlackColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              width: size.width * 0.37,
              child: Image.asset(AppAssets.book3),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              width: size.width * 0.3,
              child: SizedBox(
                child: TwoSidedRoundedButton(
                  text: AppStrings.read,
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

