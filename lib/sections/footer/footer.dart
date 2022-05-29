import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/data/url.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/clickable_icon.dart';
import 'package:personal_website/widgets/fade_animation.dart';
import 'package:personal_website/widgets/responsive_widget.dart';
import 'package:personal_website/widgets/slide_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SlideAnimation(
                  animationKey: UniqueKey(),
                  delay: const Duration(milliseconds: 50),
                  child: _footerText(context),
                ),
                const SizedBox(height: 32.0),
                SlideAnimation(
                  animationKey: UniqueKey(),
                  delay: const Duration(milliseconds: 150),
                  child: _contact(),
                ),
                const SizedBox(height: 40.0),
                SlideAnimation(
                  animationKey: UniqueKey(),
                  delay: const Duration(milliseconds: 250),
                  child: _socialMedia(),
                ),
                const SizedBox(height: 40.0),
                FadeAnimation(
                  animationKey: UniqueKey(),
                  delay: const Duration(milliseconds: 350),
                  child: _copyright(),
                ),
              ],
            ),
          ),
        ],
      ),
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
      maxLines: 2,
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

  Widget _footerText(BuildContext context) {
    return AutoSizeText.rich(
      TextSpan(
        style: TextStyles.footer,
        children: [
          const TextSpan(text: FooterData.footerTextPart1),
          const TextSpan(text: FooterData.footerTextPart2),
          ResponsiveWidget.isSmallScreen(context)
              ? const TextSpan(
                  style: TextStyles.footer,
                  children: [
                    TextSpan(text: FooterData.footerTextPart3Alt1),
                    TextSpan(text: FooterData.footerTextPart3Alt2),
                  ],
                )
              : const TextSpan(text: FooterData.footerTextPart3),
        ],
      ),
      maxLines: 4,
      presetFontSizes: const [14, 10],
      textAlign: TextAlign.center,
    );
  }

  Widget _socialMedia() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        ClickableIcon(
          icon: FontAwesomeIcons.github,
          iconSize: 32.0,
          url: Url.github,
        ),
        SizedBox(width: 24.0),
        ClickableIcon(
          icon: FontAwesomeIcons.instagram,
          iconSize: 32.0,
          url: Url.instagram,
        ),
        SizedBox(width: 24.0),
        ClickableIcon(
          icon: FontAwesomeIcons.linkedinIn,
          iconSize: 32.0,
          url: Url.linkedin,
        ),
        SizedBox(width: 24.0),
        ClickableIcon(
          icon: FontAwesomeIcons.twitter,
          iconSize: 32.0,
          url: Url.twitter,
        ),
        SizedBox(width: 24.0),
        ClickableIcon(
          icon: FontAwesomeIcons.youtube,
          iconSize: 32.0,
          url: Url.youtube,
        ),
        SizedBox(width: 24.0),
        ClickableIcon(
          icon: FontAwesomeIcons.spotify,
          iconSize: 32.0,
          url: Url.spotify,
        ),
      ],
    );
  }
}
