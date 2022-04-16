import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatefulWidget {
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

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  bool _hovered = false;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _hovered = true;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      _hovered = false;
    });
  }

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
                  _titleAndGithub(),
                  const SizedBox(height: 8.0),
                  _description(),
                ],
              ),
            ),
            _tags(),
          ],
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
            widget.title,
            style: TextStyles.projectTitle,
            maxLines: 2,
          ),
        ),
        MouseRegion(
          onEnter: _incrementEnter,
          onExit: _incrementExit,
          child: IconButton(
            padding: const EdgeInsets.all(0.0),
            constraints: const BoxConstraints(),
            icon: const FaIcon(FontAwesomeIcons.github),
            iconSize: 20.0,
            color: _hovered ? AppColors.blueAccent : AppColors.mediumGrey1,
            onPressed: () => launch(widget.url),
          ),
        ),
      ],
    );
  }

  Widget _description() {
    return Flexible(
      child: AutoSizeText(
        widget.description,
        style: TextStyles.project,
        maxLines: 5,
      ),
    );
  }

  Widget _tags() {
    return Flexible(
      child: Row(
        children: [
          for (var tag in widget.tags)
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
