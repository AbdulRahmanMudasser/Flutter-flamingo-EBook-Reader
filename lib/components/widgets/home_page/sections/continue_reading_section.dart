import 'package:flutter/material.dart';

import '../../../../config/app_assets.dart';
import '../../../../config/app_colors.dart';
import '../../../../config/app_strings.dart';

class ContinueReading extends StatelessWidget {
  const ContinueReading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 33,
              color: const Color(0xffD3D3D3).withOpacity(0.84),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(38.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.book1Title,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              AppStrings.book1Author,
                              style: TextStyle(color: AppColors.kLightBlackColor),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                AppStrings.chapter7Of10,
                                style: TextStyle(fontSize: 10, color: AppColors.kLightBlackColor),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        AppAssets.book1,
                        width: 55,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 7,
                width: size.width * 0.65,
                decoration: BoxDecoration(
                  color: AppColors.kProgressIndicator,
                  borderRadius: BorderRadius.circular(7),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
