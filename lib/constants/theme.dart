import 'package:flutter/material.dart';

// Colors
const Color colorWhite = Color(0xFFFCFCFC);
const Color colorGrey = Color.fromARGB(255, 219, 219, 219);
const Color colorDarkGrey = Color.fromARGB(255, 148, 148, 148);
const Color colorBlack = Color(0xFF2B2B2B);
// const Color colorPink = Color(0xFFFB5490);
const Color colorPrimary = Color(0xFF0D6EFD);
const Color colorSecondary = Color(0xFF1483C2);
const Color backgroundColor = Color.fromARGB(255, 236, 236, 238);

LinearGradient colorGradient = const LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    colorPrimary,
    colorSecondary,
  ],
);

// Font
TextStyle fontNunito = const TextStyle(fontFamily: 'Nunito');

// Font Weight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;

// Border Radius
const double defaultBorderRadius = 15.0;
const double defaultBorderRadius2 = 30.0;

// Padding
const double defaultPadding = 20.0;
