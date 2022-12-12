import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Colors
const Color redColor = Color(0xFFEB1D36);
const Color darkRedColor = Color.fromARGB(255, 197, 24, 44);
const Color warmColor = Color(0xFFF3EACA);
const Color whiteColor = Color(0xFFFFFFFF);
const Color warmButtonColor = Color(0XFFEDBC3D);
const Color blackColor = Color(0xFF000001);

// Font sizes / types
const FontWeight light = FontWeight.w300;
const FontWeight regular = FontWeight.w400;
const FontWeight medium = FontWeight.w500;
const FontWeight semiBold = FontWeight.w600;
const FontWeight bold = FontWeight.w700;
const FontWeight extraBold = FontWeight.w800;
const FontWeight black = FontWeight.w900;

// Text Style
final TextStyle defaultText = GoogleFonts.poppins(
  fontSize: 50,
  fontWeight: bold,
  letterSpacing: 0.25,
  color: whiteColor,
);

final TextStyle primaryText = GoogleFonts.poppins(
  fontSize: 23,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.25,
  color: whiteColor,
);

final TextStyle appBarText = GoogleFonts.poppins(
  fontSize: 32,
  fontWeight: bold,
  color: warmColor,
);

final TextStyle heading2 = GoogleFonts.poppins(
  fontSize: 40,
  fontWeight: bold,
  letterSpacing: -0.5,
  color: whiteColor,
);
final TextStyle heading3 = GoogleFonts.poppins(
  fontSize: 50,
  fontWeight: bold,
  color: whiteColor,
);
final TextStyle heading4 = GoogleFonts.poppins(
  fontSize: 32,
  fontWeight: regular,
  letterSpacing: 0.25,
  color: blackColor,
);
final TextStyle heading5 = GoogleFonts.poppins(
  fontSize: 24,
  fontWeight: regular,
  color: blackColor,
);
final TextStyle heading6 = GoogleFonts.poppins(
  fontSize: 20,
  fontWeight: medium,
  letterSpacing: 0.15,
  color: blackColor,
);

// text theme
final TextTheme myTextTheme = GoogleFonts.poppinsTextTheme().copyWith(
  headline2: heading2,
  headline3: heading3,
  headline4: heading4,
  headline5: heading5,
  headline6: heading6,
  bodyText1: primaryText,
  bodyText2: defaultText, // flutter default selected text style
);

const customScheme = ColorScheme(
    brightness: Brightness.light,
    primary: whiteColor,
    onPrimary: blackColor,
    primaryContainer: whiteColor,
    onPrimaryContainer: warmButtonColor,
    secondary: warmButtonColor,
    onSecondary: warmButtonColor,
    error: Colors.red,
    onError: blackColor,
    background: redColor,
    onBackground: redColor,
    surface: redColor,
    onSurface: redColor);

// theme data
ThemeData customTheme = ThemeData(
  scaffoldBackgroundColor: redColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: myTextTheme,
  colorScheme: customScheme,
  appBarTheme:
      AppBarTheme(backgroundColor: darkRedColor, titleTextStyle: appBarText),
);
