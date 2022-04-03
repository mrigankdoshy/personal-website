import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/triangular_bullet.dart';

class RecentTech extends StatelessWidget {
  final String title;
  const RecentTech({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Transform.rotate(
            angle: 90 * math.pi / 180,
            child: CustomPaint(
              painter: TriangularBullet(),
              child: const SizedBox(
                height: 8,
                width: 10,
              ),
            ),
          ),
          const SizedBox(width: 15),
          AutoSizeText(
            title,
            style: TextStyles.skill,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
