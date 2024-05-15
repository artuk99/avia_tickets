import 'package:flutter/material.dart';

class BasicColors extends ThemeExtension<BasicColors> {
  BasicColors({
    required this.black,
    required this.grey_1,
    required this.grey_2,
    required this.grey_3,
    required this.grey_4,
    required this.grey_5,
    required this.grey_6,
    required this.grey_7,
    required this.white,
    required this.blue,
    required this.darkBlue,
    required this.green,
    required this.red,
  });

  final Color black;
  final Color grey_1;
  final Color grey_2;
  final Color grey_3;
  final Color grey_4;
  final Color grey_5;
  final Color grey_6;
  final Color grey_7;
  final Color white;
  final Color blue;
  final Color darkBlue;
  final Color green;
  final Color red;

  @override
  BasicColors copyWith({
    Color? black,
    Color? grey_1,
    Color? grey_2,
    Color? grey_3,
    Color? grey_4,
    Color? grey_5,
    Color? grey_6,
    Color? grey_7,
    Color? white,
    Color? blue,
    Color? darkBlue,
    Color? green,
    Color? red,
  }) =>
      BasicColors(
        black: black ?? this.black,
        grey_1: grey_1 ?? this.grey_1,
        grey_2: grey_2 ?? this.grey_2,
        grey_3: grey_3 ?? this.grey_3,
        grey_4: grey_4 ?? this.grey_4,
        grey_5: grey_5 ?? this.grey_5,
        grey_6: grey_6 ?? this.grey_6,
        grey_7: grey_7 ?? this.grey_7,
        white: white ?? this.white,
        blue: blue ?? this.blue,
        darkBlue: darkBlue ?? this.darkBlue,
        green: green ?? this.green,
        red: red ?? this.red,
      );

  @override
  BasicColors lerp(BasicColors? other, double t) {
    if (other is! BasicColors) return this;

    return BasicColors(
      black: Color.lerp(black, other.black, t)!,
      grey_1: Color.lerp(grey_1, other.grey_1, t)!,
      grey_2: Color.lerp(grey_2, other.grey_2, t)!,
      grey_3: Color.lerp(grey_3, other.grey_3, t)!,
      grey_4: Color.lerp(grey_4, other.grey_4, t)!,
      grey_5: Color.lerp(grey_5, other.grey_5, t)!,
      grey_6: Color.lerp(grey_6, other.grey_6, t)!,
      grey_7: Color.lerp(grey_7, other.grey_7, t)!,
      white: Color.lerp(white, other.white, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      darkBlue: Color.lerp(darkBlue, other.darkBlue, t)!,
      green: Color.lerp(green, other.green, t)!,
      red: Color.lerp(red, other.red, t)!,
    );
  }
}
