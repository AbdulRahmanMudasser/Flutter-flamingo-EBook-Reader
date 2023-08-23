import 'package:flutter/material.dart';

class ReusableRichText extends StatelessWidget {
  const ReusableRichText({
    super.key,
    required this.firstText,
    required this.secondText,
    this.headlineMedium = false,
  });

  final String firstText;
  final String secondText;
  final bool headlineMedium;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: RichText(
        text: TextSpan(
          style: headlineMedium ? Theme.of(context).textTheme.headlineMedium : Theme.of(context).textTheme.headlineSmall,
          children: [
            TextSpan(text: firstText),
            TextSpan(
              text: secondText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
