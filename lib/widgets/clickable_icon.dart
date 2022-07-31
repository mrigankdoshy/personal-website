import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class ClickableIcon extends StatefulWidget {
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final String url;
  const ClickableIcon(
      {super.key,
      required this.icon,
      required this.iconSize,
      required this.url,
      this.iconColor = AppColors.lightGrey1});

  @override
  State<ClickableIcon> createState() => _ClickableIconState();
}

class _ClickableIconState extends State<ClickableIcon> {
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
    return MouseRegion(
      onEnter: _incrementEnter,
      onExit: _incrementExit,
      child: IconButton(
        padding: const EdgeInsets.all(0.0),
        constraints: const BoxConstraints(),
        icon: FaIcon(widget.icon),
        iconSize: widget.iconSize,
        color: _hovered ? AppColors.blueAccent : widget.iconColor,
        onPressed: () => launch(widget.url),
      ),
    );
  }
}
