import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/data/url.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/responsive_widget.dart';
import 'package:personal_website/widgets/section_title.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 32.0, bottom: 32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Column(
                children: <Widget>[
                  const SectionTitle(number: "01.", title: "About me"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _aboutMeParagraph1(),
                      const SizedBox(height: 25.0),
                      _aboutMeParagraph2(),
                      const SizedBox(height: 25.0),
                      _aboutMeParagraph3(),
                      const SizedBox(height: 25.0),
                      _aboutMeParagraph4(),
                    ],
                  ),
                ],
              ),
            ),
            // Image.asset(
            //   'assets/intro_background.png',
            //   scale: ResponsiveWidget.isMediumScreen(context) ? 4.0 : 2.5,
            // ),
          ],
        ));
  }

  Widget _aboutMeParagraph1() {
    return AutoSizeText.rich(
      TextSpan(
        style: TextStyles.paragraph,
        children: <TextSpan>[
          const TextSpan(
            text: AboutMeData.firstParagraphPart1,
          ),
          TextSpan(
            text: SharedData.mule,
            style: TextStyles.highlightParagraph,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch(Url.mule);
              },
          ),
          const TextSpan(
            text: AboutMeData.firstParagraphPart2,
          ),
        ],
      ),
      maxLines: 6,
    );
  }

  Widget _aboutMeParagraph2() {
    return AutoSizeText.rich(
      TextSpan(
        style: TextStyles.paragraph,
        children: <TextSpan>[
          const TextSpan(
            text: AboutMeData.secondParagraphPart1,
          ),
          TextSpan(
            text: SharedData.pennState,
            style: TextStyles.highlightParagraph,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch(Url.pennState);
              },
          ),
          const TextSpan(
            text: AboutMeData.secondParagraphPart2,
          ),
        ],
      ),
      maxLines: 5,
    );
  }

  Widget _aboutMeParagraph3() {
    return const AutoSizeText(
      AboutMeData.thirdParagraph,
      style: TextStyles.paragraph,
      maxLines: 5,
    );
  }

  Widget _aboutMeParagraph4() {
    return const AutoSizeText(
      AboutMeData.recentTechTitle,
      style: TextStyles.paragraph,
      maxLines: 2,
    );
  }
}
