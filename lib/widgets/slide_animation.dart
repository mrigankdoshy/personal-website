import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';

class SlideAnimation extends StatefulWidget {
  final Key animationKey;
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
  State<SlideAnimation> createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return AnimateIfVisible(
      key: widget.animationKey,
      duration: widget.duration,
      delay: widget.delay,
      builder: (
        BuildContext context,
        Animation<double> animation,
      ) =>
          FadeTransition(
        opacity: Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
            parent: animationController, curve: Curves.fastOutSlowIn)),
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -3),
            end: Offset.zero,
          ).animate(animation),
          child: widget.child,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    animationController.forward();
  }
}
