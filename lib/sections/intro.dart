import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/data/url.dart';
import 'package:url_launcher/url_launcher.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/intro_background.png',
            scale: 2.5,
          ),
          const SizedBox(width: 30),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  IntroData.greeting,
                  style: TextStyles.greeting,
                ),
                const SizedBox(height: 20.0),
                const Text(
                  IntroData.name,
                  style: TextStyles.headline1,
                ),
                const Text(
                  IntroData.title,
                  style: TextStyles.headline2,
                ),
                const SizedBox(height: 15.0),
                RichText(
                  text: TextSpan(
                    style: TextStyles.paragraph,
                    children: <TextSpan>[
                      const TextSpan(
                        text: IntroData.about,
                      ),
                      TextSpan(
                        text: SharedData.kcf,
                        style: TextStyles.highlightParagraph,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch(Url.kcfTechnologies);
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
