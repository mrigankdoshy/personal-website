import 'package:flutter/material.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/responsive_widget.dart';

class MyPicture extends StatelessWidget {
  const MyPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 150.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            height: width / 5.5,
            width: width / 7.25,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.blueAccent, width: 3.0),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          Positioned(
            top: -20,
            bottom: 20,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                'assets/me.jpg',
                scale: ResponsiveWidget.isLargeScreen(context) ? 12 : 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
