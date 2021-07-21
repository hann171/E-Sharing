import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

Widget loadingIndicator = SpinKitCircle(
  size: 45,
  color: primaryColor,
);

double defaultPaddingLR = 20;
double defaultMarginTop = 64;

Color primaryColor = Color(0xffFF539A);
Color secondaryColor = Color(0xffB33A87);
Color accentColor = Color(0xffF25F6F);
Color lightenColor = Color(0xffFFD8E0);
Color whiteColor = Color(0xffFFFFFF);
Color darkenwhiteColor = Color(0xffF6F6F6);
Color lightGreyColor = Color(0xffE1E1E1);
Color greyColor = Color(0xffA8A8A8);
Color blackColor = Color(0xff252525);

TextStyle displayLarge = TextStyle(
  fontFamily: 'BalooTamma2',
  fontSize: 71,
  height: 1.1,
);

TextStyle displayMedium = TextStyle(
  fontFamily: 'BalooTamma2',
  fontSize: 50,
  height: 1.1,
  fontWeight: FontWeight.w700,
);

TextStyle displaySmall = TextStyle(
    fontFamily: 'BalooTamma2',
    fontSize: 37,
    height: 1.2,
    fontWeight: FontWeight.w700);

TextStyle h1 = TextStyle(
  fontFamily: 'BalooTamma2',
  fontSize: 29,
  height: 1.38,
);
TextStyle h2Text = TextStyle(
    fontFamily: 'BalooTamma2',
    fontSize: 24,
    height: 1.35,
    fontWeight: FontWeight.w700);
TextStyle h3Text = TextStyle(
    fontSize: 21,
    height: 1.35,
    fontFamily: 'BalooTamma2',
    fontWeight: FontWeight.w700);
TextStyle h4 = GoogleFonts.balooTamma(
  fontSize: 19,
  height: 1.38,
);
TextStyle h5Text = TextStyle(
  fontFamily: 'BalooTamma2',
  fontSize: 18,
  height: 1.35,
);
TextStyle h6 = GoogleFonts.balooTamma(
  fontSize: 17,
  height: 1.4,
);

TextStyle buttonText = TextStyle(
    fontFamily: 'BalooTamma2',
    fontWeight: FontWeight.w600,
    fontSize: 18,
    height: 1.35,
    color: whiteColor);

TextStyle bodyTextField = TextStyle(
  fontFamily: 'BalooTamma2',
  fontSize: 16,
  fontWeight: FontWeight.w600,
  height: 1.35,
);

TextStyle bodyTextFieldHint = TextStyle(
  fontFamily: 'BalooTamma2',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  height: 1.53,
);

TextStyle captionText = TextStyle(
  fontFamily: 'BalooTamma2',
  fontSize: 14,
  fontWeight: FontWeight.w400,
  height: 1.4,
);
TextStyle captionTextHyperlink = TextStyle(
    fontFamily: 'BalooTamma2',
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.4,
    color: secondaryColor);
TextStyle captionTextLogin = TextStyle(
    fontFamily: 'BalooTamma2',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.4,
    color: accentColor);

TextStyle footnoteText = TextStyle(
  fontSize: 12,
  height: 1,
  fontFamily: 'BalooTamma2',
);
