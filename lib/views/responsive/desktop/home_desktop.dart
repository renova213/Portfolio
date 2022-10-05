import 'package:flutter/material.dart';
import 'package:portfolio/views/widgets/about_me.dart';
import 'package:portfolio/views/widgets/contact_me.dart';
import 'package:portfolio/views/widgets/projects.dart';

import '../../widgets/introduction.dart';
import '../../widgets/skills.dart';

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
        const Projects(),
        const ContactMe(),
      ],
    );
  }
}
