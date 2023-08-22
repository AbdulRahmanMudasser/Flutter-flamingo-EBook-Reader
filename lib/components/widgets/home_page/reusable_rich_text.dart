import 'package:flutter/material.dart';

class ReusableRichText extends StatelessWidget {
  const ReusableRichText({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.headlineMedium,
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
