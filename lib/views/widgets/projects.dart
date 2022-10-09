import 'package:flutter/material.dart';
import 'package:portfolio/common/constants.dart';
import 'package:portfolio/views/providers/portfolio_provider.dart';
import 'package:portfolio/views/responsive_layout.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "PROJECTS",
            style: headline5.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 32),
          ResponsiveLayout(
            mobile: _mobileBodyProjects(
                height: height, width: width, context: context),
            tablet: _projects(height: height, width: width, context: context),
            desktop: _projects(height: height, width: width, context: context),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Consumer _projects({required double height, required double width, context}) {
    return Consumer<PortfolioProvider>(
      builder: (context, notifier, _) => ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: notifier.projects.length,
        itemBuilder: (context, index) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notifier.projects[index].titleProject,
                  style: bodyText1.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: width * 0.5,
                  child: Text(
                    notifier.projects[index].description,
                    style: bodyText2,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    SizedBox(
                      height: height * 0.05,
                      width: ResponsiveLayout.isDesktop(context)
                          ? width * 0.1
                          : width * 0.14,
                      child: OutlinedButton(
                        style: const ButtonStyle(
                          side: MaterialStatePropertyAll<BorderSide>(
                            BorderSide(color: secondColor, width: 2),
                          ),
                        ),
                        onPressed: () {
                          if (notifier.projects[index].linkLive.isNotEmpty) {
                            _launchURL(notifier.projects[index].linkLive);
                          }
                        },
                        child: Text(
                          "See Live",
                          style: bodyText2.copyWith(
                              color: secondColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(
                      height: height * 0.05,
                      width: ResponsiveLayout.isDesktop(context)
                          ? width * 0.1
                          : width * 0.14,
                      child: TextButton(
                        onPressed: () {
                          _launchURL(notifier.projects[index].linkGithub);
                        },
                        child: Text(
                          "Source Code",
                          style: bodyText2.copyWith(
                              color: secondColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            SizedBox(
              height: height * 0.5,
              width: ResponsiveLayout.isDesktop(context)
                  ? width * 0.2
                  : width * 0.25,
              child: Image.network(notifier.projects[index].urlImage,
                  fit: BoxFit.fill),
            ),
          ],
        ),
      ),
    );
  }

  _mobileBodyProjects(
      {required double height, required double width, context}) {
    return Consumer<PortfolioProvider>(
      builder: (context, notifier, _) => ListView.builder(
        shrinkWrap: true,
        itemCount: notifier.projects.length,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              notifier.projects[index].titleProject,
              style: bodyText1.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 200,
              height: 300,
              child: Image.network(notifier.projects[index].urlImage,
                  fit: BoxFit.fill),
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * 0.8,
                  child: Text(
                    notifier.projects[index].description,
                    style: bodyText2,
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 100,
                      child: OutlinedButton(
                        style: const ButtonStyle(
                          side: MaterialStatePropertyAll<BorderSide>(
                            BorderSide(color: secondColor, width: 2),
                          ),
                        ),
                        onPressed: () {
                          if (notifier.projects[index].linkLive.isNotEmpty) {
                            _launchURL(notifier.projects[index].linkLive);
                          }
                        },
                        child: Text(
                          "See Live",
                          style: bodyText2.copyWith(
                              color: secondColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: TextButton(
                        onPressed: () {
                          _launchURL(notifier.projects[index].linkGithub);
                        },
                        child: Text(
                          "Source Code",
                          style: bodyText2.copyWith(
                              color: secondColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
    )) throw 'Could not launch $url';
  }
}
