import 'package:avia_tickets/src/core/theme/app_colors_extension.dart';
import 'package:avia_tickets/src/core/theme/app_palete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: AppPalete.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPalete.grey_2,
    ),
    navigationBarTheme: NavigationBarThemeData(
      height: 54,
      backgroundColor: AppPalete.black,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      indicatorColor: Colors.transparent,
      labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
        (Set<MaterialState> states) => states.contains(MaterialState.selected)
            ? const TextStyle(
                fontSize: 10,
                height: 1.1,
                color: AppPalete.blue,
              )
            : const TextStyle(
                fontSize: 10,
                height: 1.1,
                color: AppPalete.grey_6,
              ),
      ),
      iconTheme: MaterialStateProperty.resolveWith<IconThemeData>(
        (Set<MaterialState> states) => states.contains(MaterialState.selected)
            ? const IconThemeData(
                color: AppPalete.blue,
              )
            : const IconThemeData(
                color: AppPalete.grey_6,
              ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: AppPalete.grey_3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    chipTheme: ChipThemeData(
      color: MaterialStateColor.resolveWith((states) => AppPalete.grey_3),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      labelPadding: EdgeInsets.zero,
    ),
    fontFamily: 'SfProDisplay',
    textTheme: const TextTheme(
      // title 1
      titleLarge: TextStyle(
        fontSize: 22,
        height: 1.2,
        fontWeight: FontWeight.w600,
      ),
      // title 2
      titleMedium: TextStyle(
        fontSize: 20,
        height: 1.2,
        fontWeight: FontWeight.w600,
      ),
      // title 4
      titleSmall: TextStyle(
        fontSize: 14,
        height: 1.2,
        fontWeight: FontWeight.w500,
      ),
      // title 3
      bodyLarge: TextStyle(
        fontSize: 16,
        height: 1.2,
        fontWeight: FontWeight.w600,
      ),
      // text 1
      bodyMedium: TextStyle(
        fontSize: 16,
        height: 1.2,
        fontWeight: FontWeight.w400,
      ),
      // text 2
      labelLarge: TextStyle(
        fontSize: 14,
        height: 1.2,
        fontWeight: FontWeight.w400,
      ),
      // button text 1
      bodySmall: TextStyle(
        fontSize: 16,
        height: 1.3,
        fontWeight: FontWeight.w600,
      ),
    ).apply(
      displayColor: Colors.white,
      bodyColor: Colors.white,
    ),
    extensions: <ThemeExtension<dynamic>>[
      _appColors,
    ],
  );

  static final _appColors = BasicColors(
    black: AppPalete.black,
    grey_1: AppPalete.grey_1,
    grey_2: AppPalete.grey_2,
    grey_3: AppPalete.grey_3,
    grey_4: AppPalete.grey_4,
    grey_5: AppPalete.grey_5,
    grey_6: AppPalete.grey_6,
    grey_7: AppPalete.grey_7,
    white: AppPalete.white,
    blue: AppPalete.blue,
    darkBlue: AppPalete.darkBlue,
    green: AppPalete.green,
    red: AppPalete.red,
  );
}
