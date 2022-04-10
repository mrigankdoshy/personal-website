import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/project.dart';
import 'package:personal_website/widgets/section_title.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 64.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SectionTitle(
            number: SectionTitleData.sectionNumber3,
            title: SectionTitleData.section3Title,
          ),
          GridView.builder(
            primary: false,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (BuildContext context, int i) {
              return const Project();
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.10,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
          ),
        ],
      ),
    );
  }
}
