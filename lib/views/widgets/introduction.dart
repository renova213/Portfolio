import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            image: const AssetImage('background.jpg'),
            fit: BoxFit.cover),
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
              const SizedBox(
                height: 4,
              ),
              Text(
                "Junior Flutter Developer",
                style: headline4.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              _socialMedia(),
              const SizedBox(height: 8),
              OutlinedButton(
                style: const ButtonStyle(
                  side: MaterialStatePropertyAll<BorderSide>(
                    BorderSide(color: Colors.greenAccent),
                  ),
                ),
                onPressed: () async {
                  await Scrollable.ensureVisible(dataKey.currentContext!,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeOut);
                },
                child: Text(
                  "Know me more",
                  style: bodyText2.copyWith(color: Colors.greenAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _socialMedia() {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: IconButton(
                onPressed: () => _launchURL('https://github.com/renova213/'),
                icon: SvgPicture.asset('github.svg',
                    color: Colors.greenAccent, width: 50, height: 50),
              ),
            ),
            Text(
              "Github",
              style: bodyText2.copyWith(color: Colors.greenAccent),
            )
          ],
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: IconButton(
                onPressed: () => _launchURL(
                    'https://www.linkedin.com/in/rizco-renova-490059240/'),
                icon: SvgPicture.asset('linkedin.svg',
                    color: Colors.greenAccent, width: 50, height: 50),
              ),
            ),
            Text(
              "Linkedin",
              style: bodyText2.copyWith(color: Colors.greenAccent),
            )
          ],
        ),
      ],
    );
  }

  void _launchURL(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
    )) throw 'Could not launch $url';
  }
}
