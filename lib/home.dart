import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/data/url.dart';
import 'package:personal_website/sections/about/about.dart';
import 'package:personal_website/sections/footer/footer.dart';
import 'package:personal_website/sections/intro/intro.dart';
import 'package:personal_website/sections/projects/projects.dart';
import 'package:personal_website/sections/work/work.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/menu_button.dart';
import 'package:personal_website/widgets/responsive_widget.dart';
import 'package:personal_website/widgets/slide_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  static final List<GlobalKey> dataKeys =
      List.generate(4, (index) => GlobalKey());

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawer(context),
      body: Builder(
        builder: (context) => AnimateIfVisibleWrapper(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                floating: true,
                flexibleSpace:
                    !ResponsiveWidget.isSmallScreen(context) ? _appBar() : null,
                backgroundColor: AppColors.backgroundBlue,
                expandedHeight:
                    !ResponsiveWidget.isSmallScreen(context) ? 90 : 0,
                leading: ResponsiveWidget.isSmallScreen(context)
                    ? IconButton(
                        icon: const Icon(Icons.drag_handle_rounded, size: 32),
                        onPressed: () => Scaffold.of(context).openDrawer())
                    : null,
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
        ),
      ),
    );
  }

  Widget _appBar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 72.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SlideAnimation(
              animationKey: UniqueKey(),
              slideDown: true,
              child: MenuButtton(
                dataKey: dataKeys[0],
                buttonNumber: ButtonData.buttonNumber1,
                buttonTitle: ButtonData.button1Title,
              ),
            ),
            const SizedBox(width: 8.0),
            SlideAnimation(
              animationKey: UniqueKey(),
              slideDown: true,
              delay: const Duration(milliseconds: 50),
              child: MenuButtton(
                dataKey: dataKeys[1],
                buttonNumber: ButtonData.buttonNumber2,
                buttonTitle: ButtonData.button2Title,
              ),
            ),
            const SizedBox(width: 8.0),
            SlideAnimation(
              animationKey: UniqueKey(),
              slideDown: true,
              delay: const Duration(milliseconds: 100),
              child: MenuButtton(
                dataKey: dataKeys[2],
                buttonNumber: ButtonData.buttonNumber3,
                buttonTitle: ButtonData.button3Title,
              ),
            ),
            const SizedBox(width: 8.0),
            SlideAnimation(
              animationKey: UniqueKey(),
              slideDown: true,
              delay: const Duration(milliseconds: 150),
              child: MenuButtton(
                dataKey: dataKeys[3],
                buttonNumber: ButtonData.buttonNumber4,
                buttonTitle: ButtonData.button4Title,
              ),
            ),
            const SizedBox(width: 12.0),
            SlideAnimation(
              animationKey: UniqueKey(),
              slideDown: true,
              delay: const Duration(milliseconds: 200),
              child: OutlinedButton(
                style: ButtonStyles.resume,
                child: const Text(
                  ButtonData.resume,
                  style: TextStyles.navBarButtonNumber,
                ),
                onPressed: () => launch(Url.resume),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Intro(),
        About(key: dataKeys[0]),
        Work(key: dataKeys[1]),
        Projects(key: dataKeys[2]),
        Footer(key: dataKeys[3]),
      ],
    );
  }

  Drawer? _buildDrawer(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Drawer(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 128.0),
              child: Wrap(
                spacing: 32.0,
                direction: Axis.vertical,
                runAlignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  MenuButtton(
                    dataKey: dataKeys[0],
                    buttonNumber: ButtonData.buttonNumber1,
                    buttonTitle: ButtonData.button1Title,
                  ),
                  MenuButtton(
                    dataKey: dataKeys[1],
                    buttonNumber: ButtonData.buttonNumber2,
                    buttonTitle: ButtonData.button2Title,
                  ),
                  MenuButtton(
                    dataKey: dataKeys[2],
                    buttonNumber: ButtonData.buttonNumber3,
                    buttonTitle: ButtonData.button3Title,
                  ),
                  MenuButtton(
                    dataKey: dataKeys[3],
                    buttonNumber: ButtonData.buttonNumber4,
                    buttonTitle: ButtonData.button4Title,
                  ),
                  OutlinedButton(
                    style: ButtonStyles.resume,
                    child: const Text(
                      ButtonData.resume,
                      style: TextStyles.navBarButtonNumber,
                    ),
                    onPressed: () => launch(Url.resume),
                  ),
                ],
              ),
            ),
          )
        : null;
  }

  Widget _buildLargeScreen(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 4.85),
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
}
