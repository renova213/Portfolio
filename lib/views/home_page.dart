import 'package:flutter/material.dart';
import 'package:portfolio/views/responsive/home_desktop.dart';
import 'package:portfolio/views/responsive/home_mobile.dart';
import 'package:portfolio/views/responsive/home_tablet.dart';
import 'package:portfolio/views/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ResponsiveLayout(
          mobile: HomeMobile(),
          tablet: HomeTablet(),
          desktop: HomeDesktop(),
        ),
      ),
    );
  }
}
