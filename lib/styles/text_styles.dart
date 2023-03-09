import 'package:boilerplate/styles/size_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyleValues {
  static const double h1 = SizeStyle.size25 + 3;
  static const double h2 = SizeStyle.size20 + 3;
  static const double h3 = SizeStyle.size20;
  static const double h4 = SizeStyle.size15 + 3;
  static const double h5 = SizeStyle.size15 + 1;
  static const double p = SizeStyle.size10 + 4;
  static const double small = SizeStyle.size10 + 2;
}

class CustomTextWeightValue {
  static const FontWeight normal = FontWeight.w400;
  static const FontWeight bold = FontWeight.w700;
}

class SmallTextStyle {
  TextStyle style({
    double size = CustomTextStyleValues.small,
    Color color = Colors.black,
    FontWeight fontWeight = CustomTextWeightValue.normal,
  }) {
    return GoogleFonts.nunito(
      fontWeight: fontWeight,
      fontSize: size,
      color: color,
    );
  }
}

class PTextStyle {
  TextStyle style({
    double size = CustomTextStyleValues.p,
    Color color = Colors.black,
    FontWeight fontWeight = CustomTextWeightValue.normal,
  }) {
    return GoogleFonts.nunito(
      fontWeight: fontWeight,
      fontSize: size,
      color: color,
    );
  }
}

class H5TextStyle {
  TextStyle style({
    double size = CustomTextStyleValues.h5,
    Color color = Colors.black,
    FontWeight fontWeight = CustomTextWeightValue.normal,
  }) {
    return GoogleFonts.nunito(
      fontWeight: fontWeight,
      fontSize: size,
      color: color,
    );
  }
}

class H4TextStyle {
  TextStyle style({
    double size = CustomTextStyleValues.h4,
    Color color = Colors.black,
    FontWeight fontWeight = CustomTextWeightValue.normal,
  }) {
    return GoogleFonts.nunito(
      fontWeight: fontWeight,
      fontSize: size,
      color: color,
    );
  }
}

class H3TextStyle {
  TextStyle style({
    double size = CustomTextStyleValues.h3,
    Color color = Colors.black,
    FontWeight fontWeight = CustomTextWeightValue.normal,
  }) {
    return GoogleFonts.nunito(
      fontWeight: fontWeight,
      fontSize: size,
      color: color,
    );
  }
}

class H2TextStyle {
  TextStyle style({
    double size = CustomTextStyleValues.h2,
    Color color = Colors.black,
    FontWeight fontWeight = CustomTextWeightValue.normal,
  }) {
    return GoogleFonts.nunito(
      fontWeight: fontWeight,
      fontSize: size,
      color: color,
    );
  }
}

class H1TextStyle {
  TextStyle style({
    double size = CustomTextStyleValues.h1,
    Color color = Colors.black,
    FontWeight fontWeight = CustomTextWeightValue.normal,
  }) {
    return GoogleFonts.nunito(
      fontWeight: fontWeight,
      fontSize: size,
      color: color,
    );
  }
}
