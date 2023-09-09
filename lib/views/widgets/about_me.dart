import 'package:flutter/material.dart';
import 'package:portfolio/common/clipper.dart';
import 'package:portfolio/views/responsive_layout.dart';

import '../../common/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ClipPath(
      clipper: Clipper(),
      child: ResponsiveLayout(
        mobile:
            _bodyMobile(widthBody: width, widthImage: 150, heightImage: 200),
        tablet: _body(
            widthBody: width,
            width: width,
            height: height,
            widthImage: 200,
            heightImage: 250),
        desktop: _body(
            widthBody: width,
            width: width,
            height: height,
            widthImage: 200,
            heightImage: 250),
      ),
    );
  }

  Container _body(
      {required double widthBody,
      required double width,
      required double height,
      required double widthImage,
      required double heightImage}) {
    return Container(
      padding: const EdgeInsets.only(bottom: 64, left: 32, right: 32),
      width: widthBody,
      color: secondColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "ABOUT ME",
                style: headline5.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Container(
                    width: widthImage,
                    height: heightImage,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/photo.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(width: 32),
                  Expanded(
                    child: Text(
                      "I'm a Fresh Graduate major in S1 Information Technology at Bina Sarana Informatika. Have 1 years of Experience in Mobile App Development (Flutter), Build with highly reliable, optimised design to provide the best performance tuned Product. Self motivated to improve new skill and fully passionate about innovation and mobile technologies",
                      style: bodyText1.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _bodyMobile(
      {required double widthBody,
      required double widthImage,
      required double heightImage}) {
    return Container(
      width: widthBody,
      color: secondColor,
      padding: const EdgeInsets.only(bottom: 128),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Text("ABOUT ME",
                style: headline5.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Container(
              width: widthImage,
              height: heightImage,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                image: DecorationImage(
                    image: AssetImage('assets/photo.jpg'), fit: BoxFit.fill),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "I'm a Fresh Graduate major in S1 Information Technology at Bina Sarana Informatika. Have 1 years of Experience in Mobile App Development (Flutter), Build with highly reliable, optimised design to provide the best performance tuned Product. Self motivated to improve new skill and fully passionate about innovation and mobile technologies",
              style: bodyText1.copyWith(color: Colors.white),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
