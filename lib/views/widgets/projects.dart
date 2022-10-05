import 'package:flutter/material.dart';
import 'package:portfolio/common/constants.dart';
import 'package:portfolio/views/responsive_layout.dart';
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

  Row _projects({required double height, required double width, context}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Random Cat",
                style: bodyText1.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: width * 0.5,
                child: Text(
                  "Simple application to show random cat image and build with clean architecture design pattern.",
                  style: bodyText2,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(
                    height: ResponsiveLayout.isDesktop(context)
                        ? height * 0.05
                        : height * 0.05,
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
                        _launchURL(
                            'https://renova213.github.io/random_cat_image/#/');
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
                    height: ResponsiveLayout.isDesktop(context)
                        ? height * 0.05
                        : height * 0.05,
                    width: ResponsiveLayout.isDesktop(context)
                        ? width * 0.1
                        : width * 0.14,
                    child: TextButton(
                      onPressed: () {
                        _launchURL(
                            'https://github.com/renova213/random_cat_image');
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
        ),
        const Spacer(),
        SizedBox(
          height: height * 0.5,
          width:
              ResponsiveLayout.isDesktop(context) ? width * 0.2 : width * 0.25,
          child: Image.asset('cat.png', fit: BoxFit.fill),
        ),
      ],
    );
  }

  SingleChildScrollView _mobileBodyProjects(
      {required double height, required double width, context}) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Random Cat",
            style: bodyText1.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: width * 0.3,
            height: height * 0.4,
            child: Image.asset('cat.png', fit: BoxFit.fill),
          ),
          const SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.8,
                child: Text(
                  "Simple application to show random cat image and build with clean architecture design pattern.",
                  style: bodyText2,
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(
                    height: height * 0.05,
                    width: width * 0.2,
                    child: OutlinedButton(
                      style: const ButtonStyle(
                        side: MaterialStatePropertyAll<BorderSide>(
                          BorderSide(color: secondColor, width: 2),
                        ),
                      ),
                      onPressed: () {
                        _launchURL(
                            'https://renova213.github.io/random_cat_image/#/');
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
                    width: width * 0.2,
                    child: TextButton(
                      onPressed: () {
                        _launchURL(
                            'https://github.com/renova213/random_cat_image');
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
    );
  }

  void _launchURL(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
    )) throw 'Could not launch $url';
  }
}
