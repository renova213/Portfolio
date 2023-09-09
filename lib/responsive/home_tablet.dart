import 'package:flutter/material.dart';
import 'package:portfolio/views/contact_section/contact_section.dart';
import 'package:portfolio/views/projects/tablet_projects.dart';

import '../views/widgets/about_me.dart';
import '../views/widgets/introduction.dart';
import '../views/widgets/skills.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey dataKey = GlobalKey();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Introduction(
            dataKey: dataKey,
          ),
          AboutMe(key: dataKey),
          const Skills(),
          const TabletProjects(),
          const ContactSection(),
        ],
      ),
    );
  }
}
