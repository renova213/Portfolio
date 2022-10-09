import 'package:flutter/material.dart';
import 'package:portfolio/views/responsive/home_desktop.dart';
import 'package:portfolio/views/responsive/home_mobile.dart';
import 'package:portfolio/views/responsive/home_tablet.dart';
import 'package:portfolio/views/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
