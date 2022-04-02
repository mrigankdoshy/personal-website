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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'SFMono',
      ),
      home: const Home(),
    );
  }
}
