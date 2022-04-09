import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/data/url.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/recent_tech.dart';
import 'package:personal_website/widgets/responsive_widget.dart';
import 'package:personal_website/widgets/section_title.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: <Widget>[
          const SectionTitle(
            number: SectionTitleData.sectionNumber1,
            title: SectionTitleData.section1Title,
          ),
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
              const SizedBox(height: 25.0),
              _recentTech(context)
            ],
          ),
        ],
      ),
    );
  }

  Widget _aboutMeParagraph1() {
    return AutoSizeText.rich(
      TextSpan(
        style: TextStyles.paragraph,
        children: <TextSpan>[
          const TextSpan(
            text: AboutMeData.paragraph1Part1,
          ),
          TextSpan(
            text: WorkData.mule,
            style: TextStyles.highlightParagraph,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch(Url.mule);
              },
          ),
          const TextSpan(
            text: AboutMeData.paragraph1Part2,
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
            text: AboutMeData.paragraph2Part1,
          ),
          TextSpan(
            text: WorkData.pennState,
            style: TextStyles.highlightParagraph,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch(Url.pennState);
              },
          ),
          const TextSpan(
            text: AboutMeData.paragraph2Part2,
          ),
        ],
      ),
      maxLines: 5,
    );
  }

  Widget _aboutMeParagraph3() {
    return const AutoSizeText(
      AboutMeData.paragraph3,
      style: TextStyles.paragraph,
      maxLines: 5,
    );
  }

  Widget _aboutMeParagraph4() {
    return const AutoSizeText(
      AboutMeData.paragraph4,
      style: TextStyles.paragraph,
      maxLines: 2,
    );
  }

  Widget _recentTech(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            RecentTech(title: "React"),
            RecentTech(title: "TypeScript"),
            RecentTech(title: "CSS"),
          ],
        ),
        SizedBox(
            width: !ResponsiveWidget.isSmallScreen(context) ? 100.0 : 60.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            RecentTech(title: "Flutter"),
            RecentTech(title: "Firebase"),
            RecentTech(title: "C#"),
          ],
        ),
      ],
    );
  }
}
