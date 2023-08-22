import 'package:flutter/material.dart';
import 'package:flutter_flamingo_ebook_reader/config/app_colors.dart';
import 'package:flutter_flamingo_ebook_reader/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flamingo.',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        textTheme: Theme.of(context).textTheme.apply(displayColor: AppColors.kBlackColor)
      ),
      home: const WelcomePage(),
    );
  }
}

