import 'package:flutter/material.dart';
import 'package:personal_website/sections/intro.dart';
import 'package:personal_website/utils/theme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundBlue,
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Intro(),
          ],
        ),
      ),
    );
  }
}
