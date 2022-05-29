import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/data/url.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/fade_animation.dart';
import 'package:personal_website/widgets/responsive_widget.dart';
import 'package:personal_website/widgets/slide_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sliverAppBarHeight = 90;
    double height = MediaQuery.of(context).size.height - 2 * sliverAppBarHeight;

    return Container(
      height: height,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (ResponsiveWidget.isAtLeastLargeScreen(context))
            FadeAnimation(
              animationKey: UniqueKey(),
              delay: const Duration(milliseconds: 750),
              child: Image.asset(
                'assets/intro_background.png',
                scale: ResponsiveWidget.isMediumScreen(context) ? 4.0 : 2.5,
              ),
            ),
          SizedBox(
              width: ResponsiveWidget.isAtLeastLargeScreen(context) ? 30 : 0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SlideAnimation(
                  animationKey: UniqueKey(),
                  delay: const Duration(milliseconds: 750),
                  child: _greeting(),
                ),
                const SizedBox(height: 25.0),
                SlideAnimation(
                  animationKey: UniqueKey(),
                  delay: const Duration(milliseconds: 850),
                  child: _nameAndTitle(context),
                ),
                SizedBox(
                    height: ResponsiveWidget.isSmallScreen(context) ? 16 : 0),
                SlideAnimation(
                  animationKey: UniqueKey(),
                  delay: const Duration(milliseconds: 900),
                  child: _about(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _about() {
    return AutoSizeText.rich(
      TextSpan(
        style: TextStyles.paragraph,
        children: <TextSpan>[
          const TextSpan(text: IntroData.about),
          TextSpan(
            text: WorkData.kcf,
            style: TextStyles.highlightParagraph,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch(Url.kcfTechnologies);
              },
          ),
        ],
      ),
      maxLines: 5,
    );
  }

  Widget _greeting() {
    return const AutoSizeText(
      IntroData.greeting,
      style: TextStyles.greeting,
      maxLines: 1,
    );
  }

  Widget _nameAndTitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          IntroData.name,
          style: TextStyles.headline1,
          maxLines: 1,
          maxFontSize: ResponsiveWidget.isSmallScreen(context) ? 40 : 72,
        ),
        Container(
          transform: !ResponsiveWidget.isSmallScreen(context)
              ? Matrix4.translationValues(0.0, -12.0, 0.0)
              : null,
          child: AutoSizeText(
            IntroData.title,
            style: TextStyles.headline2,
            maxLines: 1,
            maxFontSize: ResponsiveWidget.isSmallScreen(context) ? 40 : 72,
          ),
        ),
      ],
    );
  }
}
