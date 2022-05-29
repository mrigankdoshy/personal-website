import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/sections/work/kcf_technologies.dart';
import 'package:personal_website/sections/work/mule.dart';
import 'package:personal_website/sections/work/volvo.dart';
import 'package:personal_website/widgets/fade_animation.dart';
import 'package:personal_website/widgets/responsive_widget.dart';
import 'package:personal_website/widgets/section_title.dart';
import 'package:personal_website/widgets/slide_animation.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoSizeGroup pointGroup = AutoSizeGroup();

    return Padding(
      padding: EdgeInsets.only(
        top: 16.0,
        bottom: 64.0,
        right: !ResponsiveWidget.isSmallScreen(context) ? 136.0 : 0.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SlideAnimation(
            animationKey: UniqueKey(),
            delay: const Duration(milliseconds: 50),
            child: const SectionTitle(
              number: SectionTitleData.sectionNumber2,
              title: SectionTitleData.section2Title,
            ),
          ),
          FadeAnimation(
            animationKey: UniqueKey(),
            delay: const Duration(milliseconds: 100),
            child: KcfTechnologies(pointGroup: pointGroup),
          ),
          const SizedBox(height: 32.0),
          FadeAnimation(
            animationKey: UniqueKey(),
            delay: const Duration(milliseconds: 100),
            child: Volvo(pointGroup: pointGroup),
          ),
          const SizedBox(height: 32.0),
          FadeAnimation(
            animationKey: UniqueKey(),
            delay: const Duration(milliseconds: 100),
            child: Mule(pointGroup: pointGroup),
          ),
        ],
      ),
    );
  }
}
