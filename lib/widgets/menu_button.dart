import 'package:flutter/material.dart';
import 'package:personal_website/utils/theme.dart';

class MenuButtton extends StatelessWidget {
  final String buttonNumber;
  final String buttonTitle;
  final GlobalKey<State<StatefulWidget>> dataKey;

  const MenuButtton({
    Key? key,
    required this.dataKey,
    required this.buttonNumber,
    required this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Scrollable.ensureVisible(
          dataKey.currentContext ?? context,
          curve: Curves.ease,
          duration: const Duration(milliseconds: 1500),
        );
      },
      child: Row(
        children: <Widget>[
          Text(buttonNumber, style: TextStyles.navBarButtonNumber),
          const SizedBox(width: 8.0),
          Text(buttonTitle, style: TextStyles.navBarButtonText),
        ],
      ),
    );
  }
}
