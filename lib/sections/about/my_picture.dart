import 'package:flutter/material.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/responsive_widget.dart';

class MyPicture extends StatefulWidget {
  const MyPicture({super.key});

  @override
  State<MyPicture> createState() => _MyPictureState();
}

class _MyPictureState extends State<MyPicture> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final frameHovered = Matrix4.identity()..translate(-6, -12, 0);
    final frameTransform = isHovered ? frameHovered : Matrix4.identity();

    final pictureHovered = Matrix4.identity()..translate(-2, -4, 0);
    final pictureTransform = isHovered ? pictureHovered : Matrix4.identity();

    const duration = Duration(milliseconds: 300);

    return Padding(
      padding: EdgeInsets.only(
          top: ResponsiveWidget.isAtLeastLargeScreen(context) ? 32.0 : 80.0),
      child: MouseRegion(
        onEnter: (_) => onEntered(true),
        onExit: (_) => onEntered(false),
        child: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            AnimatedContainer(
              duration: duration,
              transform: frameTransform,
              child: Container(
                height: ResponsiveWidget.isLargeScreen(context)
                    ? width / 5.5
                    : width / 1.75,
                width: ResponsiveWidget.isLargeScreen(context)
                    ? width / 7.25
                    : width / 2.25,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.blueAccent, width: 3.0),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            Positioned(
              top: -20,
              bottom: 20,
              right: 20,
              child: AnimatedContainer(
                duration: duration,
                transform: pictureTransform,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    'assets/me.jpg',
                    scale: 12,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
