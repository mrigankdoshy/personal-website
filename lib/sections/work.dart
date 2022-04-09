import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/data/url.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/date_range.dart';
import 'package:personal_website/widgets/responsive_widget.dart';
import 'package:personal_website/widgets/section_title.dart';
import 'package:personal_website/widgets/work_point.dart';
import 'package:personal_website/widgets/work_title.dart';
import 'package:url_launcher/url_launcher.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 16.0,
          bottom: 64.0,
          right: !ResponsiveWidget.isSmallScreen(context) ? 136.0 : 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SectionTitle(number: "02.", title: "Where I've worked"),
          _kcfTech(),
        ],
      ),
    );
  }

  Widget _kcfTech() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const WorkTitle(
          title: WorkData.softwareEngineer,
          company: WorkData.kcf,
          url: Url.kcfTechnologies,
        ),
        const DateRange(start: KcfTechData.startDate, end: KcfTechData.endDate),
        WorkPoint(
          data: AutoSizeText.rich(
            TextSpan(
              style: TextStyles.paragraph,
              children: <TextSpan>[
                const TextSpan(text: KcfTechData.point1Part1),
                TextSpan(
                  text: TechData.react,
                  style: TextStyles.highlightParagraph,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(Url.react);
                    },
                ),
                const TextSpan(text: KcfTechData.point1Part2),
                TextSpan(
                  text: TechData.css,
                  style: TextStyles.highlightParagraph,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(Url.css);
                    },
                ),
                const TextSpan(text: KcfTechData.point1Part3),
                TextSpan(
                  text: TechData.sass,
                  style: TextStyles.highlightParagraph,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(Url.sass);
                    },
                ),
                const TextSpan(text: KcfTechData.point1Part4),
                TextSpan(
                  text: TechData.csharp,
                  style: TextStyles.highlightParagraph,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(Url.csharp);
                    },
                ),
              ],
            ),
            maxLines: 3,
          ),
        ),
      ],
    );
  }
}
