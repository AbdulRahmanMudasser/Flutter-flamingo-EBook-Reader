import 'package:flutter/material.dart';
import 'package:flutter_flamingo_ebook_reader/config/app_assets.dart';
import 'package:flutter_flamingo_ebook_reader/config/app_strings.dart';

import '../components/widgets/home_page/best_of_the_day_card.dart';
import '../components/widgets/home_page/reusable_rich_text.dart';
import '../components/widgets/home_page/sections/continue_reading_section.dart';
import '../components/widgets/home_page/sections/what_are_you_reading_today_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.mainPageBackground),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  const WhatAreYouReadingToday(),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableRichText(
                        firstText: AppStrings.bestOfThe,
                        secondText: AppStrings.day,
                      ),
                      BestOfTheDayCard(),
                      ReusableRichText(
                        firstText: AppStrings.continueText,
                        secondText: AppStrings.reading,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ContinueReading(),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

