import 'package:flutter/material.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/sections/about/about.dart';
import 'package:personal_website/sections/footer/footer.dart';
import 'package:personal_website/sections/intro/intro.dart';
import 'package:personal_website/sections/projects/projects.dart';
import 'package:personal_website/sections/work/work.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/menu_button.dart';
import 'package:personal_website/widgets/responsive_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            flexibleSpace: _appBar(),
            backgroundColor: AppColors.backgroundBlue,
            expandedHeight: 90,
          ),
          SliverToBoxAdapter(
            child: ResponsiveWidget(
              largeScreen: _buildLargeScreen(context),
              mediumScreen: _buildMediumScreen(context),
              smallScreen: _buildSmallScreen(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _appBar() {
    return SafeArea(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 72.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const MenuButtton(
                buttonNumber: ButtonData.buttonNumber1,
                buttonTitle: ButtonData.button1Title,
              ),
              const SizedBox(width: 8.0),
              const MenuButtton(
                buttonNumber: ButtonData.buttonNumber2,
                buttonTitle: ButtonData.button2Title,
              ),
              const SizedBox(width: 8.0),
              const MenuButtton(
                buttonNumber: ButtonData.buttonNumber3,
                buttonTitle: ButtonData.button3Title,
              ),
              const SizedBox(width: 8.0),
              const MenuButtton(
                buttonNumber: ButtonData.buttonNumber4,
                buttonTitle: ButtonData.button4Title,
              ),
              const SizedBox(width: 12.0),
              OutlinedButton(
                style: ButtonStyles.resume,
                child: const Text(
                  ButtonData.resume,
                  style: TextStyles.navBarButtonNumber,
                ),
                onPressed: () {},
              ),
            ],
          ),
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
        About(),
        Work(),
        Projects(),
        Footer(),
      ],
    );
  }
}
