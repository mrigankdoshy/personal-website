import 'package:flutter/material.dart';
import 'package:personal_website/widgets/bullet.dart';

class WorkPoint extends StatelessWidget {
  final Widget data;
  const WorkPoint({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            transform: Matrix4.translationValues(0.0, 4.0, 0.0),
            child: const Bullet(),
          ),
          const SizedBox(width: 15),
          Flexible(child: data),
        ],
      ),
    );
  }
}
