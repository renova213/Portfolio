import 'package:flutter/material.dart';
import 'package:portfolio/views/contact_section/mobile_contact_section.dart';
import 'package:portfolio/views/projects/mobile_projects.dart';
import 'package:portfolio/views/widgets/about_me.dart';

import '../views/widgets/introduction.dart';
import '../views/widgets/skills.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey dataKey = GlobalKey();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Introduction(dataKey: dataKey),
        AboutMe(key: dataKey),
        const Skills(),
        const MobileProjects(),
        const MobileContactSection(),
      ],
    );
  }
}
