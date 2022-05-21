import 'dart:convert';

import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/fade_animation.dart';
import 'package:personal_website/widgets/project.dart';
import 'package:personal_website/widgets/section_title.dart';
import 'package:personal_website/widgets/slide_animation.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  /// Show More / Show Less Button Logic
  ///
  /// Start with showing [condensedView] elements.
  /// If 'Show More' is clicked, show all elements
  /// and change button to 'Show Less'.
  /// If 'Show Less' is clicked, reduce and show [condensedView] elements

  int condensedView = 6;
  int currentlyShown = 6;

  List _projects = [];
  final List _tempProjects = [];

  final options = const LiveOptions(
    delay: Duration(milliseconds: 200),
    showItemInterval: Duration(milliseconds: 100),
    showItemDuration: Duration(milliseconds: 300),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SlideAnimation(
            animationKey: UniqueKey(),
            delay: const Duration(milliseconds: 50),
            child: const SectionTitle(
              number: SectionTitleData.sectionNumber3,
              title: SectionTitleData.section3Title,
            ),
          ),
          LiveGrid.options(
            options: options,
            primary: true,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _tempProjects.length,
            itemBuilder:
                (BuildContext context, int index, Animation<double> animation) {
              return FadeTransition(
                opacity: Tween<double>(
                  begin: 0,
                  end: 1,
                ).animate(
                    CurvedAnimation(parent: animation, curve: Curves.easeOut)),
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, -0.2),
                    end: Offset.zero,
                  ).animate(animation),
                  child: Project(
                    title: _projects[index]['title'],
                    description: _projects[index]['description'],
                    url: _projects[index]['url'],
                    tags: _projects[index]['tags'],
                  ),
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.35,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48.0),
            child: Center(
              child: FadeAnimation(
                animationKey: UniqueKey(),
                delay: const Duration(milliseconds: 50),
                child: OutlinedButton(
                  style: ButtonStyles.primary,
                  child: Text(
                    currentlyShown == _projects.length
                        ? ButtonData.showLess
                        : ButtonData.showMore,
                    style: TextStyles.buttonText,
                  ),
                  onPressed: () => setState(() {
                    if (currentlyShown == _projects.length) {
                      _tempProjects.removeRange(
                          condensedView, _projects.length);
                      currentlyShown = condensedView;
                    } else {
                      _tempProjects.addAll(
                          _projects.getRange(condensedView, _projects.length));
                      currentlyShown = _projects.length;
                    }
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> getJsonData() async {
    final String jsonData =
        await rootBundle.loadString('assets/project_data.json');
    final data = await jsonDecode(jsonData);
    setState(() {
      _projects = data["projects"];
      _tempProjects.addAll(_projects.getRange(0, condensedView));
    });
  }

  @override
  void initState() {
    super.initState();
    getJsonData();
  }
}
