import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  //constants color range for light theme
  static const Color _lightPrimaryColor = Colors.black;
  static const Color _lightPrimaryVariantColor = Colors.white;
  static const Color _lightSecondaryColor = Colors.green;
  static const Color _lightOnPrimaryColor = Colors.black;
  static const Color _lightButtonPrimaryColor = Colors.orangeAccent;
  static const Color _lightAppBarColor = Colors.orangeAccent;
  static const Color _lightIconColor = Colors.orangeAccent;
  static const Color _lightSnackBarBackgroundErrorColor = Colors.redAccent;

  //text theme for light theme
  static const TextStyle _lightScreenHeadingTextStyle =
      const TextStyle(fontSize: 20.0, color: _lightOnPrimaryColor);
  static const TextStyle _lightScreenTaskNameTextStyle =
      const TextStyle(fontSize: 16.0, color: _lightOnPrimaryColor);
  static const TextStyle _lightScreenTaskDurationTextStyle =
      const TextStyle(fontSize: 14.0, color: Colors.grey);
  static const TextStyle _lightScreenButtonTextStyle = const TextStyle(
      fontSize: 14.0, color: _lightOnPrimaryColor, fontWeight: FontWeight.w500);
  static const TextStyle _lightScreenCaptionTextStyle = const TextStyle(
      fontSize: 12.0, color: _lightAppBarColor, fontWeight: FontWeight.w100);

  static final TextTheme _lightTextTheme = TextTheme(
    headline5: _lightScreenHeadingTextStyle,
    bodyText2: _lightScreenTaskNameTextStyle,
    bodyText1: _lightScreenTaskDurationTextStyle,
    button: _lightScreenButtonTextStyle,
    headline6: _lightScreenTaskNameTextStyle,
    subtitle1: _lightScreenTaskNameTextStyle,
    caption: _lightScreenCaptionTextStyle,
  );

  //constants color range for dark theme
  static const Color _darkPrimaryColor = Colors.white;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkSecondaryColor = Colors.white;
  static const Color _darkOnPrimaryColor = Colors.white;
  static const Color _darkButtonPrimaryColor = Colors.deepOrangeAccent;
  static const Color _darkAppBarColor = Colors.deepOrangeAccent;
  static const Color _darkIconColor = Colors.deepOrangeAccent;
  static const Color _darkSnackBarBackgroundErrorColor = Colors.redAccent;

  //text theme for dark theme
  static final TextStyle _darkScreenHeadingTextStyle =
      _lightScreenHeadingTextStyle.copyWith(color: _darkOnPrimaryColor);
  static final TextStyle _darkScreenTaskNameTextStyle =
      _lightScreenTaskNameTextStyle.copyWith(color: _darkOnPrimaryColor);
  static final TextStyle _darkScreenTaskDurationTextStyle =
      _lightScreenTaskDurationTextStyle;
  static const TextStyle _darkScreenButtonTextStyle = const TextStyle(
      fontSize: 14.0, color: _darkOnPrimaryColor, fontWeight: FontWeight.w500);
  static const TextStyle _darkScreenCaptionTextStyle = const TextStyle(
      fontSize: 12.0, color: _darkAppBarColor, fontWeight: FontWeight.w100);

  static final TextTheme _darkTextTheme = TextTheme(
    headline5: _darkScreenHeadingTextStyle,
    bodyText2: _darkScreenTaskNameTextStyle,
    bodyText1: _darkScreenTaskDurationTextStyle,
    button: _darkScreenButtonTextStyle,
    headline6: _darkScreenTaskNameTextStyle,
    subtitle1: _darkScreenTaskNameTextStyle,
    caption: _darkScreenCaptionTextStyle,
  );

  //the light theme
  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'Outfit',
    scaffoldBackgroundColor: _lightPrimaryVariantColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _lightButtonPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      color: _lightAppBarColor,
      iconTheme: const IconThemeData(color: _lightOnPrimaryColor),
      toolbarTextStyle: _lightTextTheme.bodyText2,
      titleTextStyle: _lightTextTheme.headline6,
    ),
    colorScheme: const ColorScheme.light(
      primary: _lightPrimaryColor,
      secondary: _lightSecondaryColor,
      onPrimary: _lightOnPrimaryColor,
    ),
    snackBarTheme:
        SnackBarThemeData(backgroundColor: _lightSnackBarBackgroundErrorColor),
    iconTheme: IconThemeData(
      color: _lightIconColor,
    ),
    popupMenuTheme: const PopupMenuThemeData(color: _lightAppBarColor),
    textTheme: _lightTextTheme,
    buttonTheme: const ButtonThemeData(
        buttonColor: _lightButtonPrimaryColor,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: _lightPrimaryColor,
    inputDecorationTheme: const InputDecorationTheme(
        fillColor: _lightPrimaryColor,
        labelStyle: TextStyle(
          color: _lightPrimaryColor,
        )),
  );

  //the dark theme
  static final ThemeData darkTheme = ThemeData(
    fontFamily: 'Outfit',
    scaffoldBackgroundColor: _darkPrimaryVariantColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _darkButtonPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      color: _darkAppBarColor,
      iconTheme: const IconThemeData(color: _darkOnPrimaryColor),
      toolbarTextStyle: _darkTextTheme.bodyText2,
      titleTextStyle: _darkTextTheme.headline6,
    ),
    colorScheme: const ColorScheme.light(
      primary: _darkPrimaryColor,
      secondary: _darkSecondaryColor,
      onPrimary: _darkOnPrimaryColor,
    ),
    snackBarTheme:
        SnackBarThemeData(backgroundColor: _darkSnackBarBackgroundErrorColor),
    iconTheme: IconThemeData(
      color: _darkIconColor,
    ),
    popupMenuTheme: const PopupMenuThemeData(color: _darkAppBarColor),
    textTheme: _darkTextTheme,
    buttonTheme: const ButtonThemeData(
        buttonColor: _darkButtonPrimaryColor,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: _darkPrimaryColor,
    inputDecorationTheme: const InputDecorationTheme(
        fillColor: _darkPrimaryColor,
        labelStyle: TextStyle(
          color: _darkPrimaryColor,
        )),
  );
}
