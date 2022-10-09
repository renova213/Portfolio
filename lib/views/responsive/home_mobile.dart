import 'package:flutter/material.dart';
import 'package:portfolio/views/widgets/about_me.dart';

import '../widgets/contact_me.dart';
import '../widgets/introduction.dart';
import '../widgets/projects.dart';
import '../widgets/skills.dart';

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
        const Projects(),
        const ContactMe(),
      ],
    );
  }
}
