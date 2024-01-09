import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeABeeZeeGray600 =>
      theme.textTheme.bodyLarge!.aBeeZee.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeABeeZeeGray60017 =>
      theme.textTheme.bodyLarge!.aBeeZee.copyWith(
        color: appTheme.gray600,
        fontSize: 17.fSize,
      );
  static get bodyLargeABeeZeeWhiteA700 =>
      theme.textTheme.bodyLarge!.aBeeZee.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeABeeZeeffca5098 =>
      theme.textTheme.bodyLarge!.aBeeZee.copyWith(
        color: Color(0XFFCA5098),
      );
  static get bodyLargeGilroyRegularOnError =>
      theme.textTheme.bodyLarge!.gilroyRegular.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyLargeRalewayBlack900 =>
      theme.textTheme.bodyLarge!.raleway.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get bodyMediumABeeZeeGray600 =>
      theme.textTheme.bodyMedium!.aBeeZee.copyWith(
        color: appTheme.gray600,
        fontSize: 15.fSize,
      );
  static get bodyMediumABeeZeePink300 =>
      theme.textTheme.bodyMedium!.aBeeZee.copyWith(
        color: appTheme.pink300,
      );
  static get bodyMediumABeeZeePrimary =>
      theme.textTheme.bodyMedium!.aBeeZee.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumABeeZeeffca5098 =>
      theme.textTheme.bodyMedium!.aBeeZee.copyWith(
        color: Color(0XFFCA5098),
        fontSize: 15.fSize,
      );
  static get bodyMediumInterBlack900 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumInterGray70001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray70001,
        fontSize: 15.fSize,
      );
  static get bodyMediumRalewayBlack900 =>
      theme.textTheme.bodyMedium!.raleway.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumRalewayBluegray300 =>
      theme.textTheme.bodyMedium!.raleway.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumRalewayGray900 =>
      theme.textTheme.bodyMedium!.raleway.copyWith(
        color: appTheme.gray900.withOpacity(0.6),
      );
  static get bodyMediumRalewayPink300 =>
      theme.textTheme.bodyMedium!.raleway.copyWith(
        color: appTheme.pink300,
        fontSize: 15.fSize,
      );
  static get bodyMediumRalewayPrimary =>
      theme.textTheme.bodyMedium!.raleway.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumRalewayPrimaryContainer =>
      theme.textTheme.bodyMedium!.raleway.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumRobotoGray500 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray500,
        fontSize: 15.fSize,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 12.fSize,
      );
  static get bodySmallRaleway => theme.textTheme.bodySmall!.raleway;
  static get bodySmallRalewayGray600 =>
      theme.textTheme.bodySmall!.raleway.copyWith(
        color: appTheme.gray600,
        fontSize: 12.fSize,
      );
  static get bodySmallRalewayGray900 =>
      theme.textTheme.bodySmall!.raleway.copyWith(
        color: appTheme.gray900.withOpacity(0.56),
        fontSize: 12.fSize,
      );
  static get bodySmallRalewayPrimary =>
      theme.textTheme.bodySmall!.raleway.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoGray500 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray500,
        fontSize: 12.fSize,
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
  // Headline text style
  static get headlineLargeBold => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 32.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumABeeZee =>
      theme.textTheme.headlineMedium!.aBeeZee.copyWith(
        fontSize: 29.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumExtraBold =>
      theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get headlineMediumInter =>
      theme.textTheme.headlineMedium!.inter.copyWith(
        fontSize: 27.fSize,
      );
  static get headlineMediumSemiBold => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 29.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumSemiBold_1 =>
      theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallRalewayBlack900 =>
      theme.textTheme.headlineSmall!.raleway.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRalewayWhiteA700 =>
      theme.textTheme.headlineSmall!.raleway.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallRoboto => theme.textTheme.headlineSmall!.roboto;
  static get headlineSmallRobotoPrimary =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w200,
      );
  // Label text style
  static get labelLargeAmberA400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.amberA400,
      );
  static get labelLargeGreenA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA70001,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargePoppinsBlue900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blue900,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeRaleway => theme.textTheme.labelLarge!.raleway;
  static get labelLargeRalewayBlack900 =>
      theme.textTheme.labelLarge!.raleway.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeRalewayBlue900 =>
      theme.textTheme.labelLarge!.raleway.copyWith(
        color: appTheme.blue900,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLargeABeeZee => theme.textTheme.titleLarge!.aBeeZee.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontSize: 21.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterBlue900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.blue900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeInterPrimaryBold =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargePink300 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.pink300,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRobotoBold =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        fontSize: 21.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w900,
      );
  static get titleLargeff009bd9 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF009BD9),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeffca5098 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFCA5098),
        fontWeight: FontWeight.w700,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlue900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue900,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleMediumDMSansBlue900 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.blue900,
        fontSize: 18.fSize,
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumOnPrimaryContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlue900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blue900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRaleway =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumRaleway18 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumRalewayBlack =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get titleMediumRalewayBlack900 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRalewayBlack90018 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumRalewayBlack900Medium =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRalewayBlack900SemiBold =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRalewayBlack900SemiBold18 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRalewayBlue900 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.blue900,
        fontSize: 18.fSize,
      );
  static get titleMediumRalewayBluegray300 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.blueGray300,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRalewayGray500 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.gray500,
        fontSize: 18.fSize,
      );
  static get titleMediumRalewayGray600 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRalewayGray600Black =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumRalewayGray600Black18 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.gray600,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumRalewayGray600Medium =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRalewayGray900 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumRalewayGray90002 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRalewayMedium =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRalewayMedium_1 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRalewayOnPrimaryContainer =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRalewayPink300 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.pink300,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRalewayPink30018 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.pink300,
        fontSize: 18.fSize,
      );
  static get titleMediumRalewayPink300Black =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.pink300,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumRalewayPink300ExtraBold =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.pink300,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumRalewayPink300Medium =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.pink300,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRalewayRedA700 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.redA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRalewaySemiBold =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRalewaySemiBold_1 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRalewayWhiteA700 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumRalewayWhiteA700Black =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumRalewayff009bd9 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: Color(0XFF009BD9),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRalewayff7f7f7f =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: Color(0XFF7F7F7F),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff009bd9 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF009BD9),
      );
  static get titleMediumffca5098 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFCA5098),
      );
  static get titleSmallInterBlack900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get titleSmallInterPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get titleSmallInterWhiteA700 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get titleSmallRalewayBlack900 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRalewayBlue900 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.blue900,
        fontSize: 15.fSize,
      );
  static get titleSmallRalewayBluegray900 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRalewayGray600 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.gray600,
        fontSize: 15.fSize,
      );
  static get titleSmallRalewayGray600SemiBold =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRalewayGreenA70001 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.greenA70001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRalewayOnPrimaryContainer =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRalewayOnPrimaryContainer15 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
      );
  static get titleSmallRalewayPink300 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.pink300,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRalewayPink300Medium =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.pink300,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRalewayPrimary =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRalewayPrimary15 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get titleSmallRalewayPrimaryExtraBold =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallRalewayRedA700 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.redA700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRalewayWhiteA700 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get titleSmallRalewayff164194 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: Color(0XFF164194),
        fontSize: 15.fSize,
      );
  static get titleSmallRalewayffca5098 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: Color(0XFFCA5098),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoBluegray400 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoPrimary =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRobotoPrimaryMedium =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }

  TextStyle get hKGrotesk {
    return copyWith(
      fontFamily: 'HKGrotesk',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get gilroyRegular {
    return copyWith(
      fontFamily: 'Gilroy-Regular',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get aBeeZee {
    return copyWith(
      fontFamily: 'ABeeZee',
    );
  }
}
