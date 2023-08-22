import 'package:flutter/material.dart';
import 'package:flutter_flamingo_ebook_reader/config/app_assets.dart';
import 'package:flutter_flamingo_ebook_reader/config/app_strings.dart';

import '../components/widgets/reusable_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.bitmap),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.displaySmall,
                children: const [
                  TextSpan(
                    text: AppStrings.flamin,
                  ),
                  TextSpan(
                    text: AppStrings.go,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: ReusableButton(
                text: AppStrings.startReading,
                fontSize: 17,
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

