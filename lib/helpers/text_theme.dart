import 'package:CCHAIN/helpers/colors.dart';
import 'package:flutter/material.dart';


class CoolText extends StatelessWidget {
  final String text;
  final double fontSize;
  final double letterSpacing;

  const CoolText(
    this.text, {
    required this.fontSize,
    required this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: ColorPallete.color3,
        shadows: const [
          Shadow(
            color: ColorPallete.color3,
            blurRadius: 3,
            offset: Offset(
              0.9,
              0.9,
            ),
          ),
          Shadow(
            color: ColorPallete.color3,
            blurRadius: 3,
            offset: Offset(
              1.2,
              1.2,
            ),
          ),
        ],
        fontSize: fontSize,
        fontWeight: FontWeight.w300,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
