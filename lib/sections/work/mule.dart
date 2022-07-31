import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/data/url.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/date_range.dart';
import 'package:personal_website/widgets/work_point.dart';
import 'package:personal_website/widgets/work_title.dart';
import 'package:url_launcher/url_launcher.dart';

class Mule extends StatelessWidget {
  final AutoSizeGroup pointGroup;
  final AutoSizeGroup titleGroup;

  const Mule({
    super.key,
    required this.pointGroup,
    required this.titleGroup,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        WorkTitle(
          title: "${WorkData.cofounder} and ${WorkData.softwareEngineer}",
          company: WorkData.mule,
          url: Url.mule,
          group: titleGroup,
        ),
        const DateRange(start: MuleData.startDate, end: MuleData.endDate),
        const SizedBox(height: 8.0),
        _point1(),
        _point2(),
        _point3(),
        _point4(),
      ],
    );
  }

  Widget _point1() {
    return WorkPoint(
      data: AutoSizeText.rich(
        TextSpan(
          style: TextStyles.point,
          children: <TextSpan>[
            const TextSpan(text: MuleData.point1Part1),
            TextSpan(
              text: TechData.ios,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.iosMule);
                },
            ),
            const TextSpan(text: MuleData.point1Part2),
            TextSpan(
              text: TechData.android,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.androidMule);
                },
            ),
            const TextSpan(text: MuleData.point1Part3),
            TextSpan(
              text: TechData.flutter,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.flutter);
                },
            ),
            const TextSpan(text: MuleData.point1Part4),
          ],
        ),
        maxLines: 4,
        group: pointGroup,
      ),
    );
  }

  Widget _point2() {
    return WorkPoint(
      data: AutoSizeText.rich(
        TextSpan(
          style: TextStyles.point,
          children: <TextSpan>[
            const TextSpan(text: MuleData.point2Part1),
            TextSpan(
              text: TechData.mobX,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.mobX);
                },
            ),
            const TextSpan(text: MuleData.point2Part2),
            TextSpan(
              text: TechData.nodeJs,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.nodeJs);
                },
            ),
            const TextSpan(text: MuleData.point2Part3),
            TextSpan(
              text: TechData.mongoDb,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.mongoDb);
                },
            ),
          ],
        ),
        maxLines: 4,
        group: pointGroup,
      ),
    );
  }

  Widget _point3() {
    return WorkPoint(
      data: AutoSizeText.rich(
        TextSpan(
          style: TextStyles.point,
          children: <TextSpan>[
            const TextSpan(text: MuleData.point3Part1),
            TextSpan(
              text: TechData.googleMapsWebServices,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.googleMapsWebServices);
                },
            ),
            const TextSpan(text: MuleData.point3Part2),
            TextSpan(
              text: TechData.firebaseMessaging,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.firebaseMessaging);
                },
            ),
          ],
        ),
        maxLines: 5,
        group: pointGroup,
      ),
    );
  }

  Widget _point4() {
    return WorkPoint(
      data: AutoSizeText.rich(
        TextSpan(
          style: TextStyles.point,
          children: <TextSpan>[
            const TextSpan(text: MuleData.point4Part1),
            TextSpan(
              text: TechData.dio,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.dio);
                },
            ),
            const TextSpan(text: MuleData.point4Part2),
          ],
        ),
        maxLines: 4,
        group: pointGroup,
      ),
    );
  }
}
