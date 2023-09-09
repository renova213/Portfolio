import 'package:flutter/material.dart';
import 'package:portfolio/views/contact_section/contact_section.dart';
import 'package:portfolio/views/projects/desktop_projects.dart';
import 'package:portfolio/views/widgets/about_me.dart';

import '../views/widgets/introduction.dart';
import '../views/widgets/skills.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey dataKey = GlobalKey();

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Introduction(dataKey: dataKey),
        AboutMe(key: dataKey),
        const Skills(),
        const DesktopProjects(),
        const ContactSection(),
      ],
    );
  }
}
