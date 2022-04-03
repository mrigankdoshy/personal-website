import 'package:flutter/material.dart';
import 'package:personal_website/sections/intro.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/responsive_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Material(
      color: AppColors.backgroundBlue,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 4.75),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColors.backgroundBlue,
            actions: const [
              // TODO: Add Section Buttons
              // TODO: Add Resume Button
            ],
          ),
          body: LayoutBuilder(
            builder: (context, constraints) {
              return _buildBody(context, constraints);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, BoxConstraints constraints) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: constraints.maxWidth,
          minHeight: constraints.maxHeight,
        ),
        child: ResponsiveWidget(
          largeScreen: _buildLargeScreen(context),
          // mediumScreen: _buildMediumScreen(context),
          // smallScreen: _buildSmallScreen(context),
        ),
      ),
    );
  }

  Widget _buildLargeScreen(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Column(
              children: const <Widget>[
                Intro(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
