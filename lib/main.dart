// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/foundation.dart';
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
        // TODO: https://github.com/flutter/flutter/issues/93140
        fontFamily: kIsWeb && window.navigator.userAgent.contains('OS 15_')
            ? '-apple-system'
            : null,
      ),
      home: const Home(),
    );
  }
}
