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

class Volvo extends StatelessWidget {
  final AutoSizeGroup pointGroup;

  const Volvo({Key? key, required this.pointGroup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const WorkTitle(
          title: "${WorkData.softwareEngineer} - ${WorkData.capstone}",
          company: WorkData.volvo,
          url: Url.volvo,
        ),
        const DateRange(start: VolvoData.startDate, end: VolvoData.endDate),
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
            const TextSpan(text: VolvoData.point1Part1),
            TextSpan(
              text: TechData.creopyson,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.creopyson);
                },
            ),
            const TextSpan(text: VolvoData.point1Part2),
            TextSpan(
              text: TechData.creoParametric,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.creoParametric);
                },
            ),
            const TextSpan(text: VolvoData.point1Part3),
          ],
        ),
        maxLines: 5,
        group: pointGroup,
      ),
    );
  }

  Widget _point2() {
    return WorkPoint(
      data: AutoSizeText.rich(
        const TextSpan(
          text: VolvoData.point2,
          style: TextStyles.point,
        ),
        maxLines: 4,
        group: pointGroup,
      ),
    );
  }

  Widget _point3() {
    return WorkPoint(
      data: AutoSizeText.rich(
        const TextSpan(
          text: VolvoData.point3,
          style: TextStyles.point,
        ),
        maxLines: 4,
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
            const TextSpan(text: VolvoData.point4Part1),
            TextSpan(
              text: VolvoData.project,
              style: TextStyles.highlightSkill,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(Url.routingProductivityImprovement);
                },
            ),
            const TextSpan(text: VolvoData.point4Part2),
          ],
        ),
        maxLines: 2,
        group: pointGroup,
      ),
    );
  }
}
