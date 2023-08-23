import 'package:flutter/material.dart';
import 'package:flutter_flamingo_ebook_reader/components/widgets/home_page/reusable_rich_text.dart';
import 'package:flutter_flamingo_ebook_reader/config/app_assets.dart';
import 'package:flutter_flamingo_ebook_reader/config/app_strings.dart';

import '../components/widgets/details_page/book_info.dart';
import '../components/widgets/details_page/sections/chapters_list.dart';
import '../components/widgets/details_page/you_might_also_like_card.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * 0.4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAssets.background),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.08,
                        ),
                        const BookInfo(),
                      ],
                    ),
                  ),
                ),
                const ChaptersList(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const ReusableRichText(
              firstText: AppStrings.youMightAlso,
              secondText: AppStrings.like,
            ),
            const SizedBox(
              height: 20,
            ),
            const YouMightAlsoLike(),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

