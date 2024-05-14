import 'package:flutter/material.dart';

abstract class TextMeasure {
  static Size measure(
    String text, {
    required double width,
    required TextStyle style,
    int maxLines = 1,
  }) {
    final textSpan = TextSpan(text: text, style: style);
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
      maxLines: maxLines,
    )..layout(maxWidth: width);
    return textPainter.size;
  }
}
