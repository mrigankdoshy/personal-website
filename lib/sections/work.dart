import 'package:flutter/material.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/data/url.dart';
import 'package:personal_website/widgets/section_title.dart';
import 'package:personal_website/widgets/work_title.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 64.0),
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
      children: const <Widget>[
        WorkTitle(
          title: "Software Engineer",
          company: SharedData.kcf,
          url: Url.kcfTechnologies,
        )
      ],
    );
  }
}
