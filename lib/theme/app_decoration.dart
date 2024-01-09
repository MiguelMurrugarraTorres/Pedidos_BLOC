import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue900,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray10004 => BoxDecoration(
        color: appTheme.gray10004,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA70001.withOpacity(0.5),
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink300,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple800,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blue900,
            appTheme.blue900,
            theme.colorScheme.primary.withOpacity(0.94),
          ],
        ),
      );
  static BoxDecoration get gradientPink300ToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.pink300.withOpacity(0.77),
            appTheme.blue900,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientPinkToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.pink300,
            appTheme.blue900,
            theme.colorScheme.primary.withOpacity(0.94),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlack900 => BoxDecoration();
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        border: Border(
          right: BorderSide(
            color: appTheme.black900.withOpacity(0.1),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBlue => BoxDecoration(
        color: appTheme.gray10001,
        border: Border.all(
          color: appTheme.blue900,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray9000a,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              20,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlue900 => BoxDecoration(
        border: Border.all(
          color: appTheme.blue900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueA => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.blueA100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          top: BorderSide(
            color: appTheme.gray10001,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray10001 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.gray10001,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray600 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray600,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray700 => BoxDecoration();
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.onPrimaryContainer,
            width: 3.h,
          ),
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer1 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.onPrimaryContainer,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineOrangeA => BoxDecoration(
        color: appTheme.orangeA200,
        border: Border.all(
          color: appTheme.orangeA200,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineOrangeA200 => BoxDecoration(
        border: Border.all(
          color: appTheme.orangeA200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.primary,
            width: 3.h,
          ),
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.primary,
            width: 3.h,
          ),
        ),
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: appTheme.gray10001,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlinePrimary4 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary5 => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary6 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary7 => BoxDecoration(
        color: appTheme.gray10001,
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.primary,
            width: 3.h,
          ),
        ),
      );
  static BoxDecoration get outlineRedA => BoxDecoration(
        border: Border.all(
          color: appTheme.redA700,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get circleBorder70 => BorderRadius.circular(
        70.h,
      );
  static BorderRadius get circleBorder75 => BorderRadius.circular(
        75.h,
      );
  static BorderRadius get circleBorder90 => BorderRadius.circular(
        90.h,
      );

  // Custom borders
  static BorderRadius get customBorderLR15 => BorderRadius.horizontal(
        right: Radius.circular(15.h),
      );
  static BorderRadius get customBorderTL12 => BorderRadius.vertical(
        top: Radius.circular(12.h),
      );
  static BorderRadius get customBorderTL15 => BorderRadius.vertical(
        top: Radius.circular(15.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder18 => BorderRadius.circular(
        18.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder27 => BorderRadius.circular(
        27.h,
      );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
        7.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    