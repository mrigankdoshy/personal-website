import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class ClickableIcon extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final bool hovered;
  final String url;
  const ClickableIcon({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.hovered,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(0.0),
      constraints: const BoxConstraints(),
      icon: FaIcon(icon),
      iconSize: iconSize,
      color: hovered ? AppColors.blueAccent : AppColors.mediumGrey1,
      onPressed: () => launch(url),
    );
  }
}
