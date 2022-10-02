import 'package:flutter/material.dart';

import '../../widgets/education.dart';
import '../../widgets/introduction.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Introduction(),
        Education(),
      ],
    );
  }
}
