import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({
    super.key,
    required this.text,
    this.verticalPadding = 16,
    this.fontSize = 16,
    required this.onTap,
  });

  final String text;
  final double verticalPadding;
  final double fontSize;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: verticalPadding),
        padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 15),
              blurRadius: 30,
              color: const Color(0xff666666).withOpacity(0.11),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
