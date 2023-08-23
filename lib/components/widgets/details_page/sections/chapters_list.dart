import 'package:flutter/material.dart';

import '../../../../config/app_strings.dart';
import '../chapter_card.dart';

class ChaptersList extends StatelessWidget {
  const ChaptersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.4 - 30),
      child: Column(
        children: [
          ChapterCard(
            name: AppStrings.chapter1Title,
            tag: AppStrings.chapter1SubTitle,
            onTap: () {},
          ),
          ChapterCard(
            name: AppStrings.chapter2Title,
            tag: AppStrings.chapter2SubTitle,
            onTap: () {},
          ),
          ChapterCard(
            name: AppStrings.chapter3Title,
            tag: AppStrings.chapter3SubTitle,
            onTap: () {},
          ),
          ChapterCard(
            name: AppStrings.chapter4Title,
            tag: AppStrings.chapter4SubTitle,
            onTap: () {},
          ),
          ChapterCard(
            name: AppStrings.chapter5Title,
            tag: AppStrings.chapter5SubTitle,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

