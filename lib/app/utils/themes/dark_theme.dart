import 'package:flutter/material.dart';

const _primaryColor = Color(0xff055AA3);
const _highlightColor = Color(0xffEDF4F8);
const _cardColor = Color(0xff172026);
const _backgroundColor = Color(0xff121517);
const _bodyTextColor = Color(0xff51565A);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: _primaryColor,
  highlightColor: _highlightColor,
  cardColor: _cardColor,
  cardTheme: CardTheme(
    color: _cardColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.00),
    ),
  ),
  iconTheme: const IconThemeData(color: _highlightColor),
  backgroundColor: _backgroundColor,
  scaffoldBackgroundColor: _backgroundColor,
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    ),
    headline2: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    ),
    headline6: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    ),
    subtitle1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    ),
    subtitle2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: _highlightColor,
    ),
    bodyText1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    ),
    bodyText2: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    ),
    caption: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: _bodyTextColor,
    ),
  ),
  primaryTextTheme: const TextTheme(
    headline6: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
    ),
    subtitle2: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: _highlightColor,
      fontFamily: 'Montserrat',
    ),
    bodyText1: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: _bodyTextColor,
      fontFamily: 'Montserrat',
    ),
    bodyText2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      fontFamily: 'Montserrat',
      color: _bodyTextColor,
    ),
  ),
);
