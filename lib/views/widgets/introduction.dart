import 'package:flutter/material.dart';
import 'package:portfolio/common/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Introduction extends StatelessWidget {
  final GlobalKey dataKey;
  const Introduction({super.key, required this.dataKey});

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).size.width * 0.1;
    final heightBody = MediaQuery.of(context).size.height;
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.5), BlendMode.color),
            image: const AssetImage('assets/background.jpg'),
            fit: BoxFit.fill),
      ),
      height: heightBody,
      child: Padding(
        padding: EdgeInsets.only(left: padding, top: padding, right: padding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: headline4.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  children: [
                    const TextSpan(text: 'Hi, my name is '),
                    TextSpan(
                      text: 'Rizco Renova',
                      style: headline4.copyWith(
                        color: Colors.greenAccent,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Text("I'm Into Mobile App Development",
                  style: headline4.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  style: headline6.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  children: [
                    const TextSpan(text: 'Get to know me more on my '),
                    TextSpan(
                      text: 'social media :',
                      style: headline6.copyWith(
                        color: Colors.greenAccent,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              _socialMedia(),
            ],
          ),
        ),
      ),
    );
  }

  Row _socialMedia() {
    return Row(
      children: [
        const Icon(Icons.arrow_right, color: Colors.greenAccent),
        _socialMediaItem(url: 'https://github.com/renova213/', title: "Github"),
        const SizedBox(width: 8),
        _socialMediaItem(
            url: 'https://www.linkedin.com/in/rizco-renova-490059240/',
            title: "Linkedin")
      ],
    );
  }

  InkWell _socialMediaItem({required String url, required String title}) {
    return InkWell(
      onTap: () => _launchURL(url),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.greenAccent),
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          title,
          style: bodyText2.copyWith(color: Colors.greenAccent),
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
