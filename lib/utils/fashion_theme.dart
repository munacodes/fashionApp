import 'package:fashion_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fashion_app/utils/utilsExports.dart';

TextTheme lightTextTheme = TextTheme(
  bodyText1: GoogleFonts.tenorSans(
    fontSize: 12.16,
    fontWeight: FontWeight.w400,
    color: AppCustomColors.light[50],
  ),
  bodyText2: GoogleFonts.montserrat(
    fontSize: 32.34,
    fontWeight: FontWeight.w400,
    color: AppCustomColors.light[50],
  ),
  bodyLarge: GoogleFonts.tenorSans(
    fontSize: 88.69,
    fontWeight: FontWeight.w400,
    color: AppCustomColors.light[50],
  ),
  bodySmall: GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: AppCustomColors.light[50],
  ),
  button: GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: AppCustomColors.light[100],
  ),
  headline1: GoogleFonts.tenorSans(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: AppCustomColors.light[50],
  ),
  headline2: GoogleFonts.poppins(
    fontSize: 42.42,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
    color: AppCustomColors.light[200],
  ),
);

TextTheme DarkTextTheme = TextTheme(
  bodyText1: GoogleFonts.tenorSans(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppCustomColors.dark[200],
  ),
  bodyText2: GoogleFonts.tenorSans(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppCustomColors.dark[100],
  ),
  headline1: GoogleFonts.tenorSans(
    fontWeight: FontWeight.w400,
    fontSize: 20.0,
    color: AppCustomColors.dark[300],
  ),
  headline2: GoogleFonts.tenorSans(
    fontWeight: FontWeight.w400,
    fontSize: 12.0,
    color: AppCustomColors.dark[100],
  ),
  headline3: GoogleFonts.tenorSans(
    fontWeight: FontWeight.w400,
    fontSize: 15.21,
    color: AppCustomColors.dark[100],
  ),
);

TextTheme PrimaryTextTheme = TextTheme(
  bodyText1: GoogleFonts.tenorSans(
    fontSize: 15.21,
    fontWeight: FontWeight.w400,
    color: AppCustomColors.primary[50],
  ),
);
