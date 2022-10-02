import 'package:flutter/material.dart';

import 'package:portfolio/views/widgets/introduction.dart';

import '../../widgets/education.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Introduction(), Education()],
    );
  }
}
