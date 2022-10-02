import 'package:flutter/material.dart';
import 'package:portfolio/views/responsive/desktop/home_desktop.dart';
import 'package:portfolio/views/responsive/mobile/home_mobile.dart';
import 'package:portfolio/views/responsive/tablet/home_tablet.dart';
import 'package:portfolio/views/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.jpg'), fit: BoxFit.fill),
        ),
        child: const Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ResponsiveLayout(
              mobile: HomeMobile(),
              tablet: HomeTablet(),
              desktop: HomeDesktop(),
            ),
          ),
        ),
      ),
    );
  }
}
