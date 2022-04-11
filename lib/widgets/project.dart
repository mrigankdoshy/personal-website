import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/utils/theme.dart';

class Project extends StatelessWidget {
  // final IconData icon;
  final String title;
  final String description;

  const Project({
    Key? key,
    // required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      color: AppColors.blueOffset,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const FaIcon(
                    FontAwesomeIcons.folder,
                    color: AppColors.blueAccent,
                    size: 40.0,
                  ),
                  const SizedBox(height: 32.0),
                  Flexible(
                    child: AutoSizeText(
                      title,
                      style: TextStyles.projectTitle,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Flexible(
                    child: AutoSizeText(
                      description,
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
    );
  }
}
