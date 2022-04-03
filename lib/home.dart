import 'package:flutter/material.dart';
import 'package:personal_website/sections/intro.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/responsive_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundBlue,
        actions: const [
          // TODO: Add Section Buttons
          // TODO: Add Resume Button
        ],
      ),
      body: SingleChildScrollView(
        child: ResponsiveWidget(
          largeScreen: _buildLargeScreen(context),
          mediumScreen: _buildMediumScreen(context),
          smallScreen: _buildSmallScreen(context),
        ),
      ),
    );
  }

  Widget _buildLargeScreen(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 4.75),
      child: _buildContent(),
    );
  }

  Widget _buildMediumScreen(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 12),
      child: _buildContent(),
    );
  }

  Widget _buildSmallScreen(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 16),
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const <Widget>[
        Intro(),
      ],
    );
  }
}
