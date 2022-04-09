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
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 64.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _aboutMe(context),
          SizedBox(
              width: !ResponsiveWidget.isSmallScreen(context) ? 80.0 : 0.0),
          _image(context),
        ],
      ),
    );
  }

  Widget _aboutMe(BuildContext context) {
    return Flexible(
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

  Widget _image(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 150.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            height: width / 5.5,
            width: width / 7.25,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.blueAccent, width: 3.0),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          Positioned(
            top: -20,
            bottom: 20,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                'assets/me.jpg',
                scale: ResponsiveWidget.isLargeScreen(context) ? 12 : 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
