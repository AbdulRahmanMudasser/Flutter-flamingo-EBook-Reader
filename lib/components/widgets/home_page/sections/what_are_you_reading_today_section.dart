import 'package:flutter/material.dart';
import 'package:flutter_flamingo_ebook_reader/pages/details_section.dart';

import '../../../../config/app_assets.dart';
import '../../../../config/app_strings.dart';
import '../reading_list_card.dart';
import '../reusable_rich_text.dart';

class WhatAreYouReadingToday extends StatelessWidget {
  const WhatAreYouReadingToday({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ReusableRichText(
          firstText: AppStrings.whatAreYouReading,
          secondText: AppStrings.today,
          headlineMedium: true,
        ),
        const SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ReadingListCard(
                image: AppAssets.book1,
                title: AppStrings.book1Title,
                author: AppStrings.book1Author,
                rating: 4.9,
                details: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const DetailsPage();
                      },
                    ),
                  );
                },
                read: () {},
              ),
              ReadingListCard(
                image: AppAssets.book2,
                title: AppStrings.book2Title,
                author: AppStrings.book2Author,
                rating: 4.8,
                details: () {},
                read: () {},
              ),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
