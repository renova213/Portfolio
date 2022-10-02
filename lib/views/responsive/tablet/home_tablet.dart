import 'package:flutter/material.dart';

import '../../widgets/education.dart';
import '../../widgets/introduction.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Introduction(),
          Education(),
        ],
      ),
    );
  }
}
