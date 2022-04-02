import 'package:flutter/material.dart';

class AppColors {
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const lightGrey1 = Color(0xFFE6F1FF);
  static const mediumGrey1 = Color(0xFFAFBDD3);
  static const mediumGrey2 = Color(0xFF8391A6);
  static const darkGrey1 = Color(0xFF57657A);
  static const accentBlue = Color(0xFF80F0FF);
  static const backgroundBlue = Color(0xFF051021);
}

class TextStyles {
  // Name
  static const headline1 = TextStyle(
    fontFamily: 'Calibre',
    fontWeight: FontWeight.bold,
    color: AppColors.lightGrey1,
    fontSize: 60,
  );

  // Title
  static const headline2 = TextStyle(
    fontFamily: 'Calibre',
    fontWeight: FontWeight.bold,
    color: AppColors.mediumGrey1,
    fontSize: 40,
  );

  // Section Titles
  static const sectionTitle = TextStyle(
    fontFamily: 'Calibre',
    fontWeight: FontWeight.bold,
    color: AppColors.lightGrey1,
    fontSize: 28,
  );

  // Section Numbers
  static const sectionNumber = TextStyle(
    fontFamily: 'SFMono',
    color: AppColors.accentBlue,
    fontSize: 20,
  );

  // Job Title
  static const jobTitle = TextStyle(
    fontFamily: 'Calibre',
    fontWeight: FontWeight.bold,
    color: AppColors.mediumGrey1,
    fontSize: 20,
  );

  // Company Title
  static const companyTitle = TextStyle(
    fontFamily: 'Calibre',
    fontWeight: FontWeight.bold,
    color: AppColors.accentBlue,
    fontSize: 20,
  );

  // Main Text
  static const paragraph1 = TextStyle(
    fontFamily: 'Calibre',
    color: AppColors.mediumGrey2,
    fontSize: 17,
  );

  // Highlight Skills
  static const highlightSkill = TextStyle(
    fontFamily: 'Calibre',
    color: AppColors.accentBlue,
    fontSize: 17,
  );

  // Skills
  static const skill = TextStyle(
    fontFamily: 'SFMono',
    color: AppColors.lightGrey1,
    fontSize: 15,
  );

  // Navigation Bar Button Text
  static const navBarButtonText = TextStyle(
    fontFamily: 'SFMono',
    color: AppColors.mediumGrey1,
    fontSize: 15,
  );

  // Navigation Bar Button Number
  static const navBarButtonNumber = TextStyle(
    fontFamily: 'SFMono',
    color: AppColors.accentBlue,
    fontSize: 15,
  );

  //  Button Text
  static const buttonText = TextStyle(
    fontFamily: 'SFMono',
    color: AppColors.accentBlue,
    fontSize: 16,
  );

  static const footer = TextStyle(
    fontFamily: 'Calibre',
    fontWeight: FontWeight.bold,
    color: AppColors.mediumGrey1,
    fontSize: 36,
  );

  //  Greeting
  static const greeting = TextStyle(
    fontFamily: 'SFMono',
    color: AppColors.accentBlue,
    fontSize: 17,
  );
}
