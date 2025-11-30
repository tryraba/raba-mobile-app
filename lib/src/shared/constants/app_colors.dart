import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  static final primaryOrange = _PrimaryOrange();
  static final secondaryGreen = _SecondaryGreen();
  static final tertiaryTeal = _TertiaryTeal();
  static final grayscale = _Grayscale();
  static final successGreen = _SuccessGreen();
  static final warningOrange = _WarningOrange();
  static final dangerRed = _DangerRed();
  static final infoBlue = _InfoBlue();

  static final background = _Background();
  static final overlay = _Overlay();
  static final text = _Text();
  static final link = _Link();
  static final border = _Border();
  static final icon = _Icon();
}

class _PrimaryOrange {
  final primary0 = const Color(0x0DEF5A22);
  final primary10 = const Color(0x1AEF5A22);
  final primary20 = const Color(0x33EF5A22);
  final primary30 = const Color(0x4DEF5A22);
  final primary40 = const Color(0x66EF5A22);
  final primary50 = const Color(0x80EF5A22);
  final primary60 = const Color(0x99EF5A22);
  final primary70 = const Color(0xB2EF5A22);
  final primary80 = const Color(0xCCEF5A22);
  final primary90 = const Color(0xE5EF5A22);
  final primary100 = const Color(0xFFEF5A22);
}

class _SecondaryGreen {
  final secondary0 = const Color(0x0D006837);
  final secondary10 = const Color(0x1A006837);
  final secondary20 = const Color(0x33006837);
  final secondary30 = const Color(0x4D006837);
  final secondary40 = const Color(0x66006837);
  final secondary50 = const Color(0x80006837);
  final secondary60 = const Color(0xB2006837);
  final secondary70 = const Color(0xCC006837);
  final secondary80 = const Color(0xE5006837);
  final secondary90 = const Color(0xFF006837);
  final secondary100 = const Color(0xFF006837);
}

class _TertiaryTeal {
  final tertiary0 = const Color(0x0DFFFFDC);
  final tertiary10 = const Color(0x1AFFFFDC);
  final tertiary20 = const Color(0x33FFFFDC);
  final tertiary30 = const Color(0x4DFFFFDC);
  final tertiary40 = const Color(0x66FFFFDC);
  final tertiary50 = const Color(0x80FFFFDC);
  final tertiary60 = const Color(0x99FFFFDC);
  final tertiary70 = const Color(0xB2FFFFDC);
  final tertiary80 = const Color(0xCCFFFFDC);
  final tertiary90 = const Color(0xE5FFFFDC);
  final tertiary100 = const Color(0xFFFFFFDC);
}

class _Grayscale {
  final neutral0 = const Color(0xFFF6F7F9);
  final neutral10 = const Color(0xFFEDEEF2);
  final neutral20 = const Color(0xFFDCDEE6);
  final neutral30 = const Color(0xFFBBBFCC);
  final neutral40 = const Color(0xFF9EA2B3);
  final neutral50 = const Color(0xFF838799);
  final neutral60 = const Color(0xFF6B6F80);
  final neutral70 = const Color(0xFF545766);
  final neutral80 = const Color(0xFF3E414C);
  final neutral90 = const Color(0xFF292B33);
  final neutral100 = const Color(0xFF141519);
}

class _SuccessGreen {
  final success0 = const Color(0xB2E6FFF3);
  final success10 = const Color(0xFF82E6B6);
  final success20 = const Color(0xFF3DCC87);
  final success30 = const Color(0xFF18B368);
  final success40 = const Color(0xFF069952);
  final success50 = const Color(0xFF008042);
}

class _WarningOrange {
  final warning0 = const Color(0xFFFFF5E6);
  final warning10 = const Color(0xFFEDA12F);
  final warning20 = const Color(0xFFDB8400);
  final warning30 = const Color(0xFFC97900);
  final warning40 = const Color(0xFFB86E00);
  final warning50 = const Color(0xFFA66300);
}

class _DangerRed {
  final danger0 = const Color(0xFFFFE6E6);
  final danger10 = const Color(0xFFE62E2E);
  final danger20 = const Color(0xFFCC0000);
  final danger30 = const Color(0xFFB30000);
  final danger40 = const Color(0xFF990000);
  final danger50 = const Color(0xFF800000);
}

class _InfoBlue {
  final info0 = const Color(0xFFE6F6FF);
  final info10 = const Color(0xFF2EA2E6);
  final info20 = const Color(0xFF0081CC);
  final info30 = const Color(0xFF0071B3);
  final info40 = const Color(0xFF006199);
  final info50 = const Color(0xFF005180);
}

class _Background {
  final Color bgPrimaryDefault = AppColors.primaryOrange.primary70;
  final Color bgPrimaryPressed = AppColors.primaryOrange.primary90;
  final Color bgPrimaryLightest = AppColors.primaryOrange.primary0;
  final Color grayPlaceholder = AppColors.grayscale.neutral0;
  final Color bgGrayDisabled = AppColors.grayscale.neutral10;
  final Color bgUtilitySuccess = AppColors.successGreen.success0;
  final Color bgUtilityWarning = AppColors.warningOrange.warning0;
  final Color bgUtilityDanger = AppColors.dangerRed.danger0;
  final Color bgUtilityInfo = AppColors.infoBlue.info0;
}

class _Overlay {
  final Color overlayGrayLight = AppColors.grayscale.neutral0;
}

class _Text {
  final Color contentPrimary = AppColors.grayscale.neutral100;
  final Color contentSecondary = AppColors.grayscale.neutral60;
  final Color contentDisabled = AppColors.grayscale.neutral30;
  final Color contentUtilitySuccess = AppColors.successGreen.success40;
  final Color contentUtilityWarning = AppColors.warningOrange.warning20;
  final Color contentUtilityDanger = AppColors.dangerRed.danger10;
  final Color contentUtilityInfo = AppColors.infoBlue.info20;
}

class _Link {
  final Color linkPrimaryDefault = AppColors.primaryOrange.primary70;
  final Color linkPrimaryPressed = AppColors.primaryOrange.primary90;
}

class _Border {
  final Color borderPrimaryDefault = AppColors.primaryOrange.primary70;
  final Color borderGrayDefault = AppColors.grayscale.neutral20;
  final Color borderGrayDark = AppColors.grayscale.neutral30;
}

class _Icon {
  final Color iconGrayDefault = AppColors.grayscale.neutral100;
  final Color iconGraySecondary = AppColors.grayscale.neutral60;
  final Color iconDisabled = AppColors.grayscale.neutral30;
}
