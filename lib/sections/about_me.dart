import 'package:flutter/material.dart';
import 'package:personal_website/widgets/section_title.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 32.0, bottom: 32.0),
        child: Row(
          children: <Widget>[
            // Title and text
            Column(
              children: <Widget>[
                const SectionTitle(number: "01.", title: "About me"),
                // Text
                Column(
                  children: <Widget>[],
                ),
              ],
            ),
            // Image
            Column(),
          ],
        ));
  }
}
