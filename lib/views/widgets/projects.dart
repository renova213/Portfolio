import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/common/constants.dart';
import 'package:portfolio/views/responsive_layout.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final CollectionReference projects =
        FirebaseFirestore.instance.collection('projects');
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
                height: height,
                width: width,
                context: context,
                projects: projects),
            tablet: _projects(
                height: height,
                width: width,
                context: context,
                projects: projects),
            desktop: _projects(
                height: height,
                width: width,
                context: context,
                projects: projects),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  StreamBuilder _projects(
      {required double height,
      required double width,
      required BuildContext context,
      required CollectionReference projects}) {
    return StreamBuilder(
      stream: projects.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: snapshot.data!.docs.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 16,
              child: Divider(),
            ),
            itemBuilder: (context, index) {
              final data = snapshot.data!.docs[index];

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['titleProject'],
                        style: bodyText1.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: width * 0.5,
                        child: Text(
                          data['description'],
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
                                if (data.linkLive.isNotEmpty) {
                                  _launchURL(
                                    data['linkLive'],
                                  );
                                }
                              },
                              child: Text(
                                "See Live",
                                style: bodyText2.copyWith(
                                    color: secondColor,
                                    fontWeight: FontWeight.bold),
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
                                _launchURL(
                                  data['linkGithub'],
                                );
                              },
                              child: Text(
                                "Source Code",
                                style: bodyText2.copyWith(
                                    color: secondColor,
                                    fontWeight: FontWeight.bold),
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
                        ? width * 0.15
                        : width * 0.2,
                    child: CarouselSlider(
                      items: (data['urlImage'] as List)
                          .map(
                            (item) => Image.network(item, fit: BoxFit.fill),
                          )
                          .toList(),
                      options: CarouselOptions(
                          viewportFraction: 1.0, enlargeCenterPage: false),
                    ),
                  ),
                ],
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  StreamBuilder _mobileBodyProjects(
      {required double height,
      required double width,
      required BuildContext context,
      required CollectionReference projects}) {
    return StreamBuilder(
      stream: projects.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: snapshot.data.docs.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 16,
              child: Divider(),
            ),
            itemBuilder: (context, index) {
              final data = snapshot.data!.docs[index];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    data['titleProject'],
                    style: bodyText1.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: 200,
                    height: 300,
                    child: CarouselSlider(
                      items: (data['urlImage'] as List)
                          .map(
                            (item) => Image.network(item, fit: BoxFit.fill),
                          )
                          .toList(),
                      options: CarouselOptions(
                          viewportFraction: 1.0, enlargeCenterPage: false),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.8,
                        child: Text(
                          data['description'],
                          style: bodyText2,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 120,
                            child: OutlinedButton(
                              style: const ButtonStyle(
                                side: MaterialStatePropertyAll<BorderSide>(
                                  BorderSide(color: secondColor, width: 2),
                                ),
                              ),
                              onPressed: () {
                                if (data.linkLive.isNotEmpty) {
                                  _launchURL(
                                    data['linkLive'],
                                  );
                                }
                              },
                              child: Text(
                                "See Live",
                                style: bodyText2.copyWith(
                                    color: secondColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            height: 50,
                            width: 120,
                            child: TextButton(
                              onPressed: () {
                                _launchURL(
                                  data['linkGithub'],
                                );
                              },
                              child: Text(
                                "Source Code",
                                style: bodyText2.copyWith(
                                    color: secondColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  void _launchURL(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
    )) throw 'Could not launch $url';
  }
}
