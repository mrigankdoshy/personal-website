import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';

class SlideAnimation extends StatelessWidget {
  final String animationKey;
  final Duration duration;
  final Duration delay;
  final Widget child;

  const SlideAnimation({
    Key? key,
    required this.animationKey,
    required this.child,
    this.delay = const Duration(milliseconds: 0),
    this.duration = const Duration(milliseconds: 250),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimateIfVisible(
      key: Key(animationKey),
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
        ).animate(
            CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn)),
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -0.8),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
      ),
    );
  }
}
