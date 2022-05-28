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
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: ResponsiveWidget.isSmallScreen(context) ? 128.0 : 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (!ResponsiveWidget.isSmallScreen(context))
            FadeAnimation(
              animationKey: UniqueKey(),
              delay: const Duration(milliseconds: 750),
              child: Image.asset(
                'assets/intro_background.png',
                scale: ResponsiveWidget.isMediumScreen(context) ? 4.0 : 2.5,
              ),
            ),
          SizedBox(width: !ResponsiveWidget.isSmallScreen(context) ? 30 : 0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SlideAnimation(
                  animationKey: UniqueKey(),
                  delay: const Duration(milliseconds: 750),
                  child: _greeting(context),
                ),
                const SizedBox(height: 25.0),
                SlideAnimation(
                  animationKey: UniqueKey(),
                  delay: const Duration(milliseconds: 850),
                  child: _nameAndTitle(context),
                ),
                SizedBox(
                    height: ResponsiveWidget.isSmallScreen(context) ? 8 : 0),
                SlideAnimation(
                  animationKey: UniqueKey(),
                  delay: const Duration(milliseconds: 900),
                  child: _about(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _about(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyles.paragraph.copyWith(
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 17 : 20),
        children: <TextSpan>[
          const TextSpan(text: IntroData.about),
          TextSpan(
            text: WorkData.kcf,
            style: TextStyles.highlightParagraph.copyWith(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 17 : 20),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch(Url.kcfTechnologies);
              },
          ),
        ],
      ),
    );
  }

  Widget _greeting(BuildContext context) {
    return Text(
      IntroData.greeting,
      style: TextStyles.greeting.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 15 : 17,
      ),
    );
  }

  Widget _nameAndTitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          IntroData.name,
          style: TextStyles.headline1.copyWith(
            fontSize: ResponsiveWidget.isSmallScreen(context)
                ? 32
                : ResponsiveWidget.isMediumScreen(context)
                    ? 48
                    : 72,
          ),
        ),
        Container(
          transform: Matrix4.translationValues(0.0, -12.0, 0.0),
          child: Text(
            IntroData.title,
            style: TextStyles.headline2.copyWith(
              fontSize: ResponsiveWidget.isSmallScreen(context)
                  ? 24
                  : ResponsiveWidget.isMediumScreen(context)
                      ? 42
                      : 64,
            ),
          ),
        ),
      ],
    );
  }
}
