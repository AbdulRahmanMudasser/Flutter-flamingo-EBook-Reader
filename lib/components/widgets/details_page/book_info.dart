import 'package:flutter/material.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_strings.dart';
import '../home_page/book_rating.dart';
import '../reusable_button.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.crushing,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                AppStrings.influence,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          AppStrings.desc,
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.kLightBlackColor,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ReusableButton(
                          text: AppStrings.read,
                          onTap: () {},
                          verticalPadding: 10,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      ),
                      const BookRating(rating: 4.9),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          AppAssets.book1,
          height: 200,
        ),
      ],
    );
  }
}
