import 'package:flutter/material.dart';

class AppColors {
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const lightGrey1 = Color(0xFFE6F1FF);
  static const lightGrey2 = Color(0xFFcadaed);
  static const mediumGrey1 = Color(0xFFAFBDD3);
  static const mediumGrey2 = Color(0xFF8391A6);
  static const darkGrey1 = Color(0xFF57657A);
  static const blueAccent = Color(0xFF80F0FF);
  static const blueOffset = Color(0xFF0A192F);
  static const backgroundBlue = Color(0xFF051021);
}

class TextStyles {
  // Name
  static const headline1 = TextStyle(
    fontFamily: 'Calibre',
    fontWeight: FontWeight.bold,
    color: AppColors.lightGrey1,
    fontSize: 72,
  );

  // Title
  static const headline2 = TextStyle(
    fontFamily: 'Calibre',
    fontWeight: FontWeight.bold,
    color: AppColors.mediumGrey1,
    fontSize: 72,
  );

  // Section Titles
  static const sectionTitle = TextStyle(
    fontFamily: 'Calibre',
    fontWeight: FontWeight.bold,
    color: AppColors.lightGrey1,
    fontSize: 30,
  );

  // Section Numbers
  static const sectionNumber = TextStyle(
    fontFamily: 'SFMono',
    color: AppColors.blueAccent,
    fontSize: 20,
  );

  // Job Title
  static const jobTitle = TextStyle(
    fontFamily: 'Calibre',
    fontWeight: FontWeight.bold,
    color: AppColors.lightGrey2,
    fontSize: 24,
  );

  // Company Title
  static const companyTitle = TextStyle(
    fontFamily: 'Calibre',
    fontWeight: FontWeight.bold,
    color: AppColors.blueAccent,
    fontSize: 24,
  );

  // Project title
  static const projectTitle = TextStyle(
    fontFamily: 'Calibre',
    fontWeight: FontWeight.bold,
    color: AppColors.lightGrey2,
    fontSize: 22,
  );

  // Main Text
  static const paragraph = TextStyle(
    fontFamily: 'Calibre',
    color: AppColors.mediumGrey2,
    fontSize: 20,
  );

  // Main Text Highlighted
  static const highlightParagraph = TextStyle(
    fontFamily: 'Calibre',
    color: AppColors.blueAccent,
    fontSize: 20,
  );

  // Main Text in Points
  static const point = TextStyle(
    fontFamily: 'Calibre',
    color: AppColors.mediumGrey2,
    fontSize: 19,
  );

  // Main Text in Projects
  static const project = TextStyle(
    fontFamily: 'Calibre',
    color: AppColors.mediumGrey2,
    fontSize: 17,
  );

  // Main Text Highlighted in Points
  static const highlightSkill = TextStyle(
    fontFamily: 'Calibre',
    color: AppColors.blueAccent,
    fontSize: 19,
  );

  // Skills
  static const skill = TextStyle(
    fontFamily: 'SFMono',
    color: AppColors.lightGrey2,
    fontSize: 15,
  );

  // Project Skills
  static const projectSkill = TextStyle(
    fontFamily: 'SFMono',
    color: AppColors.lightGrey2,
    fontSize: 13,
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
    color: AppColors.blueAccent,
    fontSize: 15,
  );

  //  Button Text
  static const buttonText = TextStyle(
    fontFamily: 'SFMono',
    color: AppColors.blueAccent,
    fontSize: 16,
  );

  // Footer title
  static const footer = TextStyle(
    fontFamily: 'Calibre',
    fontWeight: FontWeight.bold,
    color: AppColors.mediumGrey1,
    fontSize: 36,
  );

  //  Greeting
  static const greeting = TextStyle(
    fontFamily: 'SFMono',
    color: AppColors.blueAccent,
    fontSize: 17,
  );

  //  Date
  static const date = TextStyle(
    fontFamily: 'SFMono',
    color: AppColors.darkGrey1,
    fontSize: 15,
  );
}
