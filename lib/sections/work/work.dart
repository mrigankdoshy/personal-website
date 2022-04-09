import 'package:flutter/material.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/sections/work/kcf_technologies.dart';
import 'package:personal_website/sections/work/mule.dart';
import 'package:personal_website/sections/work/volvo.dart';
import 'package:personal_website/widgets/responsive_widget.dart';
import 'package:personal_website/widgets/section_title.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.0,
        bottom: 64.0,
        right: !ResponsiveWidget.isSmallScreen(context) ? 136.0 : 0.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          SectionTitle(
            number: SectionTitleData.sectionNumber2,
            title: SectionTitleData.section2Title,
          ),
          KcfTechnologies(),
          SizedBox(height: 32.0),
          Volvo(),
          SizedBox(height: 32.0),
          Mule(),
        ],
      ),
    );
  }
}
