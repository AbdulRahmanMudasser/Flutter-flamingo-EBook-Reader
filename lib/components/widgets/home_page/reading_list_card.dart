import 'package:flutter/material.dart';
import 'package:flutter_flamingo_ebook_reader/components/widgets/home_page/two_sided_rounded_button.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_strings.dart';
import 'book_rating.dart';

class ReadingListCard extends StatelessWidget {
  const ReadingListCard({
    super.key,
    required this.image,
    required this.title,
    required this.author,
    required this.rating,
    required this.details,
    required this.read,
  });

  final String image;
  final String title;
  final String author;
  final double rating;
  final GestureTapCallback details;
  final GestureTapCallback read;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, bottom: 40),
      height: 265,
      width: 222,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 241,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 15),
                    blurRadius: 33,
                    color: AppColors.kShadowColor,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(image, width: 150),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                BookRating(
                  rating: rating,
                ),
              ],
            ),
          ),
          Positioned(
            top: 170,
            child: SizedBox(
              height: 95,
              width: 222,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 26),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: const TextStyle(color: AppColors.kBlackColor),
                        children: [
                          TextSpan(
                            text: "$title\n",
                            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                          ),
                          TextSpan(
                            text: author,
                            style: const TextStyle(color: AppColors.kLightBlackColor, height: 1.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: details,
                        child: Container(
                          width: 101,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: const Text(AppStrings.details),
                        ),
                      ),
                      Expanded(
                        child: TwoSidedRoundedButton(
                          text: AppStrings.read,
                          onTap: read,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
