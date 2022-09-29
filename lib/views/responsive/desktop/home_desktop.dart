import 'package:flutter/material.dart';

import '../../widgets/introduction.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [Introduction()],
      ),
    );
  }
}
