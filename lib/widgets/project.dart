import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/clickable_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatelessWidget {
  final String title;
  final String description;
  final String url;
  final List tags;

  const Project({
    Key? key,
    required this.title,
    required this.description,
    required this.url,
    required this.tags,
  }) : super(key: key);

  bool _containsUrl() {
    return url != "" ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor:
          _containsUrl() ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: GestureDetector(
        onTap: () => _containsUrl() ? launch(url) : {},
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
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
                      _titleAndGithub(),
                      const SizedBox(height: 12.0),
                      _description(),
                    ],
                  ),
                ),
                _tags(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _titleAndGithub() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: AutoSizeText(
            title,
            style: TextStyles.projectTitle,
            maxLines: 2,
          ),
        ),
        if (_containsUrl())
          ClickableIcon(
            icon: FontAwesomeIcons.github,
            iconSize: 20.0,
            iconColor: AppColors.mediumGrey1,
            url: url,
          ),
      ],
    );
  }

  Widget _description() {
    return Flexible(
      child: AutoSizeText(
        description,
        style: TextStyles.project,
        maxLines: 5,
      ),
    );
  }

  Widget _tags() {
    return Flexible(
      child: Row(
        children: [
          for (var tag in tags)
            Row(
              children: [
                AutoSizeText(
                  tag,
                  style: TextStyles.projectSkill,
                ),
                const SizedBox(width: 16.0),
              ],
            ),
        ],
      ),
    );
  }
}
