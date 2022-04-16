import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/data/url.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Column(
              children: <Widget>[
                _footerText(),
                const SizedBox(height: 32.0),
                _contact(),
                const SizedBox(height: 32.0),
                _copyright()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _footerText() {
    return Column(
      children: const <Widget>[
        AutoSizeText(
          FooterData.footerTextPart1,
          style: TextStyles.footer,
          textAlign: TextAlign.center,
          maxLines: 1,
        ),
        AutoSizeText(
          FooterData.footerTextPart2,
          style: TextStyles.footer,
          textAlign: TextAlign.center,
          maxLines: 1,
        ),
        AutoSizeText(
          FooterData.footerTextPart3,
          style: TextStyles.footer,
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
      ],
    );
  }

  Widget _contact() {
    return AutoSizeText.rich(
      TextSpan(
        style: TextStyles.contact,
        children: <TextSpan>[
          const TextSpan(
            text: FooterData.contactPart1,
          ),
          TextSpan(
            text: FooterData.contactPart2,
            style: TextStyles.highlightContact,
            recognizer: TapGestureRecognizer()..onTap = () => launch(Url.email),
          ),
          const TextSpan(
            text: FooterData.contactPart3,
          ),
          TextSpan(
            text: FooterData.contactPart4,
            style: TextStyles.highlightContact,
            recognizer: TapGestureRecognizer()
              ..onTap = () => launch(Url.instagram),
          ),
          const TextSpan(
            text: FooterData.contactPart5,
          ),
        ],
      ),
      maxLines: 1,
    );
  }

  Widget _copyright() {
    return const AutoSizeText(
      FooterData.copyright,
      style: TextStyles.copyright,
      textAlign: TextAlign.center,
      maxLines: 1,
    );
  }
}
