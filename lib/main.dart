import 'package:flutter/material.dart';
import 'package:personal_website/home.dart';
import 'package:personal_website/utils/theme.dart';

void main() {
  runApp(const PersonalWebsite());
}

class PersonalWebsite extends StatelessWidget {
  const PersonalWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mrigank Doshy | Software Engineer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: AppColors.backgroundBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Calibre',
      ),
      home: const Home(),
    );
  }
}
