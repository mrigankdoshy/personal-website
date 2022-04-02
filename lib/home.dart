import 'package:flutter/material.dart';
import 'package:personal_website/sections/intro.dart';
import 'package:personal_website/utils/theme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundBlue,
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: width / 4.75, right: width / 4.75),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Intro(),
            ],
          ),
        ),
      ),
    );
  }
}
