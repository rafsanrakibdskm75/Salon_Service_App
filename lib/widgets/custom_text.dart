
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.fontStyle = FontStyle.normal,
    this.color = Colors.black,
    this.bgColor,
    this.letterSpacing = 1,
    this.textBaseline = TextBaseline.alphabetic,
    this.height = 1.5,
    this.left = 0,
    this.right = 0,
    this.bottom = 0,
    this.top = 0,
    this.textStyle,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final Color color;
  final Color? bgColor;
  final double letterSpacing;
  final TextBaseline textBaseline;
  final double height;

  final double left;
  final double right;
  final double bottom;
  final double top;

  final TextStyle? textStyle;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        right: right,
        bottom: bottom,
        top: top,
      ),
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: textStyle ?? GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          color: color,
          backgroundColor: bgColor,
          letterSpacing: letterSpacing,
          textBaseline: textBaseline,
          height: height,
        ),
      ),
    );
  }
}
