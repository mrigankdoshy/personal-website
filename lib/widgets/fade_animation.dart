import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';

class FadeAnimation extends StatelessWidget {
  final UniqueKey animationKey;
  final Duration duration;
  final Duration delay;
  final Widget child;

  const FadeAnimation({
    Key? key,
    required this.animationKey,
    required this.child,
    this.delay = const Duration(milliseconds: 0),
    this.duration = const Duration(milliseconds: 500),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimateIfVisible(
      key: animationKey,
      duration: duration,
      delay: delay,
      builder: (
        BuildContext context,
        Animation<double> animation,
      ) =>
          FadeTransition(
        opacity: Tween<double>(
          begin: 0,
          end: 1,
        ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut)),
        child: child,
      ),
    );
  }
}
