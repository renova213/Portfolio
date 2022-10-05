import 'package:flutter/material.dart';

import '../../widgets/about_me.dart';
import '../../widgets/contact_me.dart';
import '../../widgets/introduction.dart';
import '../../widgets/projects.dart';
import '../../widgets/skills.dart';

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
          const Projects(),
          const ContactMe(),
        ],
      ),
    );
  }
}
