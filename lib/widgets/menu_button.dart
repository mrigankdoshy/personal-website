import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/utils/theme.dart';

class MenuButtton extends StatelessWidget {
  final String buttonNumber;
  final String buttonTitle;

  const MenuButtton({
    Key? key,
    required this.buttonNumber,
    required this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: AutoSizeText.rich(
        TextSpan(
          style: TextStyles.navBarButtonText,
          children: <TextSpan>[
            TextSpan(text: buttonNumber, style: TextStyles.navBarButtonNumber),
            TextSpan(text: buttonTitle),
          ],
        ),
        maxLines: 1,
      ),
    );
  }
}
