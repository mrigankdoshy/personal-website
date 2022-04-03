import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/utils/theme.dart';

class SectionTitle extends StatelessWidget {
  final String number;
  final String title;

  const SectionTitle({
    Key? key,
    required this.number,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _sectionNumber(number),
        const SizedBox(width: 20),
        _sectionTitle(title),
        const SizedBox(width: 20),
        _line(context),
      ],
    );
  }

  Widget _sectionNumber(String number) {
    return Container(
      transform: Matrix4.translationValues(0.0, -4.0, 0.0),
      child: AutoSizeText(
        number,
        style: TextStyles.sectionNumber,
        maxLines: 1,
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return AutoSizeText(
      title,
      style: TextStyles.sectionTitle,
      maxLines: 1,
    );
  }

  Widget _line(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 1.0,
      width: width / 5,
      color: AppColors.mediumGrey2.withOpacity(0.5),
    );
  }
}
