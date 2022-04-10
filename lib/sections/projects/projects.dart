import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/utils/theme.dart';
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
            itemBuilder: _itemBuilder,
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

  Widget _itemBuilder(BuildContext context, int index) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        color: AppColors.blueOffset,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    FaIcon(
                      FontAwesomeIcons.arrowTrendUp,
                      color: AppColors.blueAccent,
                      size: 36.0,
                    ),
                    SizedBox(height: 24.0),
                    Flexible(
                      child: AutoSizeText(
                        "Options Pricing",
                        style: TextStyles.projectTitle,
                        maxLines: 2,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Flexible(
                      child: AutoSizeText(
                        "Applying High Performance Computing techniques to compute the prices of American and European options using different pricing methods",
                        style: TextStyles.project,
                        maxLines: 5,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  children: const [
                    AutoSizeText(
                      "OpenMP",
                      style: TextStyles.projectSkill,
                    ),
                    SizedBox(width: 24.0),
                    AutoSizeText(
                      "MPI",
                      style: TextStyles.projectSkill,
                    ),
                    SizedBox(width: 24.0),
                    AutoSizeText(
                      "Monte Carlo",
                      style: TextStyles.projectSkill,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
