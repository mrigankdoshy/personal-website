import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkTitle extends StatelessWidget {
  final String title;
  final String company;
  final String url;

  const WorkTitle({
    Key? key,
    required this.title,
    required this.company,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText.rich(
      TextSpan(
        style: TextStyles.jobTitle,
        children: <TextSpan>[
          TextSpan(text: title),
          const TextSpan(text: " "),
          TextSpan(
            text: "@ $company",
            style: TextStyles.companyTitle,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch(url);
              },
          ),
        ],
      ),
      maxLines: 1,
    );
  }
}
